class axi_write_test extends axi_base_test;
	axi_write_sequence wseq;
	`uvm_component_utils(axi_write_test)

	function new(string name="axi_write_test", uvm_component parent=null);
		super.new(name,parent);
	endfunction
	
	virtual task run_phase(uvm_phase phase);
		super.run_phase(phase);
		phase.raise_objection(this);

  		for (int i = 0; i < 5; i++) begin
    			wseq = axi_write_sequence::type_id::create("wseq");
    			wseq.awaddr = BASE0+ (i* 64'h40); 
			wseq.awlen = 8'd3;
			wseq.awsize = 3'd2;
			wseq.awburst= 2'b01;
    			wseq.start(env_o.agt[0].seqr);
			`uvm_info(get_full_name(), "STARTING AGENT 0", UVM_MEDIUM)
    			wseq.start(env_o.agt[1].seqr);
			`uvm_info(get_full_name(), "STARTING AGENT 1", UVM_MEDIUM)
			wseq.start(env_o.agt[2].seqr);
			`uvm_info(get_full_name(), "STARTING AGENT 2", UVM_MEDIUM)
			wseq.start(env_o.agt[3].seqr);
			`uvm_info(get_full_name(), "STARTING AGENT 3", UVM_MEDIUM)

		end

  		repeat (20) @(posedge env_o.agt[0].drv.axi_vif.clk);
  		repeat (20) @(posedge env_o.agt[1].drv.axi_vif.clk);
 		 `uvm_info(get_full_name(), "AFTER RUN PHASE OF WRITE TEST", UVM_LOW);
  		phase.drop_objection(this);
	endtask
endclass
