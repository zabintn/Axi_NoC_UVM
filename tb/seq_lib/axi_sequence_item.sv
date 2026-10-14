class axi_seq_item extends uvm_sequence_item;


 	 rand bit axi_op;
	 bit aresetn=1;
	 int unsigned master_id;
	 //AW CHANNEL

	 rand bit [ADDR_WIDTH-1:0]   awaddr;
	 randc bit [ID_WIDTH-1:0]    awid;
	 rand bit [LEN_WIDTH-1:0]    awlen;
	 rand bit [SIZE_WIDTH-1:0]   awsize;
	 rand bit [BURST_TYPE-1:0]   awburst;
	 
	 
	 rand bit [DATA_WIDTH-1:0]   wdata[];
	 rand bit [DATA_WIDTH/8-1:0] wstrb[];

	 bit [ID_WIDTH-1:0] bid;
	 bit [1:0] bresp;
	 
	 rand bit [ADDR_WIDTH-1:0]   araddr;
	 randc bit [ID_WIDTH-1:0]    arid;
	 rand bit [LEN_WIDTH-1:0]    arlen;
	 rand bit [SIZE_WIDTH-1:0]   arsize;
	 rand bit [BURST_TYPE-1:0]   arburst;
	
	 bit [ID_WIDTH-1:0] rid;
	 bit [1:0] rresp[]; 
	 bit [DATA_WIDTH-1:0] rdata[];

	 bit awvalid, awready;
	 bit wvalid, wready;
	 bit bvalid, bready;
	 bit arvalid, arready;
	 bit rvalid, rready;



	 localparam bit [2:0] MAX_SIZE = $clog2(DATA_WIDTH/8);
	constraint rsv_wr_burst { awburst!= 2'b11; }
	constraint rsv_rd_burst { arburst!= 2'b11; }
	constraint fixed_burst_len {if (awburst==2'b00)	
	 				awlen<=15;
				if (arburst==2'b00)
					arlen<=15;
				}

	constraint incr_burst_len {if (awburst==2'b01) 
					awlen<=255;
				if (arburst==2'b01)
					arlen<=255;
				}
	constraint wrap_burst_len {if (awburst==2'b10)
					awlen inside {1, 3, 7, 15};
				if (arburst==2'b10)
					arlen inside {1, 3, 7, 15};

				}
	
	constraint c_w_size {
        if (axi_op == 0) 
		{
		wdata.size() == awlen + 1; 
		wstrb.size() == awlen + 1; 
		}
        else             
		{ wdata.size() == 0;        
       		wstrb.size() == 0; awlen == 0; }
	}	

	constraint c_addr {
		awaddr inside {[BASE0:TOP0], [BASE1:TOP1]};
		araddr inside {[BASE0:TOP0], [BASE1:TOP1]};
		} /*
	constraint c_wrap_align {
		if (awburst == 2'b10) (awaddr & ((1 << awsize) - 1)) == 0;
		if (arburst == 2'b10) (araddr & ((1 << arsize) - 1)) == 0;
		}

	constraint c_4k {
		if (awburst == 2'b01) awaddr[11:0] + ((awlen + 1) << awsize) <= 13'h1000;
		if (arburst == 2'b01) araddr[11:0] + ((arlen + 1) << arsize) <= 13'h1000;
		}
	constraint c_short { soft awlen inside {[0:15]}; soft arlen inside {[0:15]}; }
*/


	`uvm_object_utils_begin(axi_seq_item)	
	`uvm_field_int(master_id, UVM_ALL_ON)
	`uvm_field_int(axi_op, UVM_ALL_ON)
	`uvm_field_int(aresetn, UVM_ALL_ON)
	`uvm_field_int(awaddr, UVM_ALL_ON)
	`uvm_field_int(awid, UVM_ALL_ON)
	`uvm_field_int(awlen, UVM_ALL_ON)
	`uvm_field_int(awburst, UVM_ALL_ON)
	`uvm_field_int(awsize, UVM_ALL_ON)

	`uvm_field_array_int(wdata, UVM_ALL_ON)
	`uvm_field_array_int(wstrb, UVM_ALL_ON)

	`uvm_field_int(bid, UVM_ALL_ON)	
	`uvm_field_int(bresp, UVM_ALL_ON)

	`uvm_field_int(araddr, UVM_ALL_ON)
	`uvm_field_int(arid, UVM_ALL_ON)
	`uvm_field_int(arlen, UVM_ALL_ON)
	`uvm_field_int(arburst, UVM_ALL_ON)
	`uvm_field_int(arsize, UVM_ALL_ON)
	
	`uvm_field_int(rid, UVM_ALL_ON)	
	`uvm_field_array_int(rresp, UVM_ALL_ON)
	`uvm_field_array_int(rdata, UVM_ALL_ON)
	
	`uvm_object_utils_end

	function new(string name="axi_seq_item");
		super.new(name);
	endfunction
endclass
