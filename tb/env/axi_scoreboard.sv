`uvm_analysis_imp_decl(_act)
`uvm_analysis_imp_decl(_exp)

class axi_scoreboard extends uvm_scoreboard;

	//analysis port declarations	
	axi_seq_item act_q[$];
	axi_seq_item exp_wr_q[bit [ID_WIDTH-1:0]][$];
	axi_seq_item exp_rd_q[bit [ID_WIDTH-1:0]][$];
        bit [DATA_WIDTH-1:0] expected_mem [bit[ADDR_WIDTH-1:0]];
	int pass_count=0;
	int fail_count=0;
	int pass=0;
	int fail=0;


	uvm_analysis_imp_act #(axi_seq_item, axi_scoreboard) item_collect_export;
	uvm_analysis_imp_exp #(axi_seq_item, axi_scoreboard) refmodel_export;
	`uvm_component_utils(axi_scoreboard)	
	function new(string name="axi_scoreboard", uvm_component parent=null);
		super.new(name, parent);
		item_collect_export= new("item_collect_export", this);
		refmodel_export=new("refmodel_export", this);

	endfunction

	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		`uvm_info(get_full_name(), "INSIDE SCOREBOARD BUILD PHASE", UVM_MEDIUM);
	endfunction


	function void connect_phase(uvm_phase phase);
		super.connect_phase(phase);
		`uvm_info(get_full_name(), "INSIDE SCOREBOARD CONNECT PHASE", UVM_MEDIUM);
	endfunction

	function void write_act(axi_seq_item req);
		`uvm_info(get_full_name(), "INSIDE SCOREBOARD WRITE FUNCTION", UVM_MEDIUM);
		act_q.push_back(req);
		`uvm_info(get_full_name(), $sformatf("awid=%0h awaddr=%0h", req.awid, req.awaddr), UVM_MEDIUM)
	endfunction

	function void write_exp(axi_seq_item req);
		`uvm_info(get_full_name(), "INSIDE SCOREBOARD WRITE FUNCTION", UVM_MEDIUM);
		if(req.axi_op==0)
			exp_wr_q[req.awid].push_back(req);
		else
			exp_rd_q[req.arid].push_back(req);
			
		`uvm_info(get_full_name(), $sformatf("awid=%0h awaddr=%0h", req.awid, req.awaddr), UVM_MEDIUM);
	endfunction
	task run_phase(uvm_phase phase);
		`uvm_info(get_full_name(), "INSIDE SCOREBOARD RUN PHASE", UVM_MEDIUM);
		forever begin
			axi_seq_item sb_item;	
			wait(act_q.size()>0);
			if(act_q.size()>0) begin
				sb_item=act_q.pop_front();
				if(sb_item.axi_op==0) begin
					for (int i=0; i<(sb_item.awlen+1); i++) begin
						case(sb_item.awburst)
							2'b00: begin
								mem_write(sb_item.awaddr, sb_item.wdata[i], sb_item.wstrb[i]);
								`uvm_info(get_full_name(), $sformatf("MASTER %0d MEMORY WRITE=%0h", sb_item.master_id, expected_mem[sb_item.awaddr]), UVM_LOW)
							end
							2'b01: begin
								mem_write(sb_item.awaddr+i*(1<<sb_item.awsize), sb_item.wdata[i], sb_item.wstrb[i]);
								`uvm_info(get_full_name(), $sformatf("MASTER %0d MEMORY WRITE=%0h", sb_item.master_id, expected_mem[sb_item.awaddr+i*(1<<sb_item.awsize)]), UVM_LOW)
								end
							2'b10: begin
								int num_bytes   = 1 << sb_item.awsize;
								int total_bytes = num_bytes * (sb_item.awlen + 1);
								longint unsigned wrap_lo = (sb_item.awaddr / total_bytes) * total_bytes;
								longint unsigned addr    = sb_item.awaddr + i * num_bytes;
								if (addr >= wrap_lo + total_bytes)
               								addr -= total_bytes;
								mem_write(addr, sb_item.wdata[i], sb_item.wstrb[i]);
								`uvm_info(get_full_name(), $sformatf("MASTER %0d MEMORY WRITE=%0h", sb_item.master_id, expected_mem[addr]), UVM_LOW)
								end
						endcase	
					end
					fork 
						automatic axi_seq_item t=sb_item;
						write_check(t);
					join_none
				end
				else begin
					fork
						automatic axi_seq_item x=sb_item;
						`uvm_info(get_full_name(), "BEFORE READ CHECK", UVM_MEDIUM)
						read_check(x);
						`uvm_info(get_full_name(), "AFTER READ CHECK", UVM_MEDIUM)
					join_none
					end
			end
		
		if(fail_count==0)
			pass++;
		else	
			fail++;
		end

		endtask

	function void check_cond(bit cond, string name, string exp_s, string act_s);
		if(cond) begin
			pass_count++;
			`uvm_info(get_full_name(), $sformatf("SCOREBOARD MATCH: %s, EXPECTED=%s, ACTUAL=%s", name, exp_s, act_s), UVM_MEDIUM);
		end
		else begin
			fail_count++;
			`uvm_info(get_full_name(), $sformatf("SCOREBOARD MISMATCH: %s, EXPECTED=%s, ACTUAL=%s", name, exp_s, act_s), UVM_MEDIUM);
		end
	endfunction

	task write_check(axi_seq_item sb_item);
		axi_seq_item exp;
		int id;
		id=sb_item.awid;
		wait (exp_wr_q.exists(id) && exp_wr_q[id].size() > 0);
		exp=exp_wr_q[sb_item.awid].pop_front();	
		check_cond(sb_item.bresp==exp.bresp, $sformatf(" MASTER %0d BRESP (WRITE RESPONSE)", sb_item.master_id), $sformatf("%0b", exp.bresp), $sformatf("%0b", sb_item.bresp));
		
	endtask

	task read_check(axi_seq_item sb_item);
		longint unsigned addr;
		bit [DATA_WIDTH-1:0] exp_data;
		int unsigned num_bytes;
		axi_seq_item exp;
		int id;
		id=sb_item.arid;
		wait (exp_rd_q.exists(id) && exp_rd_q[id].size() > 0);
		exp=exp_rd_q[id].pop_front();
		num_bytes = 1 << exp.arsize;

		for(int i=0; i<(sb_item.arlen + 1); i++) begin
			`uvm_info(get_full_name(), $sformatf("rdata=%0h", sb_item.rdata[i]), UVM_MEDIUM)
			check_cond(sb_item.rresp[i]==exp.rresp[i], $sformatf(" MASTER %0d RRESP (READ RESPONSE)", 
					sb_item.master_id), $sformatf("%0b", exp.rresp[i]), $sformatf("%0b", sb_item.rresp[i]));
		
			case (sb_item.arburst)
        			2'b00: addr = sb_item.araddr;
        			2'b01: addr = sb_item.araddr + i*num_bytes;
        			2'b10: begin
				
					int unsigned total_bytes = num_bytes * (sb_item.arlen + 1);
                			longint unsigned wrap_lo = (sb_item.araddr / total_bytes) * total_bytes;
                			addr = sb_item.araddr + i*num_bytes;
                			if (addr >= wrap_lo + total_bytes)
                        		addr -= total_bytes;
        				end
        				default: addr = sb_item.araddr;
			endcase

			exp_data = expected_mem.exists(addr) ? expected_mem[addr] : '0;
			
			check_cond(sb_item.rdata[i]==exp_data,  $sformatf("MASTER %0d READ DATA BEAT AT ADDRESS %0h", sb_item.master_id, addr), $sformatf("%0h", exp_data), $sformatf("%0h",  sb_item.rdata[i]));

		end
	endtask

	function void mem_write(bit [ADDR_WIDTH-1:0] a, bit [DATA_WIDTH-1:0] d, bit [DATA_WIDTH/8-1:0] s);
        if (!expected_mem.exists(a)) expected_mem[a] = '0;
        for (int b = 0; b < DATA_WIDTH/8; b++)
                if (s[b]) expected_mem[a][8*b +: 8] = d[8*b +: 8];
	endfunction

	function void check_phase(uvm_phase phase);
        super.check_phase(phase);
        if (act_q.size() != 0)
                `uvm_error(get_full_name(), $sformatf("%0d items left unchecked in act_q", act_q.size()))
        if (fail_count != 0)
                `uvm_error(get_full_name(), $sformatf("%0d beats mismatched", fail_count))
	endfunction
	
	function void report_phase(uvm_phase phase);
        super.report_phase(phase);
        `uvm_info(get_full_name(), $sformatf("PASS=%0d, FAIL=%0d", pass_count, fail_count), UVM_LOW)
	endfunction
endclass
