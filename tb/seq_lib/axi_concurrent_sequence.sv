class axi_concurrent_sequence extends axi_base_sequence;
        `uvm_object_utils(axi_concurrent_sequence)

        rand bit [ADDR_WIDTH-1:0] awaddr;
	rand bit [LEN_WIDTH-1:0] awlen;
	rand bit [SIZE_WIDTH-1:0] awsize;
        rand bit [ADDR_WIDTH-1:0] araddr;
	rand bit [LEN_WIDTH-1:0] arlen;
	rand bit [SIZE_WIDTH-1:0] arsize;
	rand bit aresetn;
        function new(string name= "axi_concurrent_sequence");
                super.new(name);
        endfunction

        task body(); 
		axi_seq_item wr, rd;
		super.body();
                rd=axi_seq_item::type_id::create("rd");
                wr=axi_seq_item::type_id::create("wr");
		start_item(wr);
		wr.randomize with {
                        axi_op == 0;
                        awaddr == local::awaddr;
			awlen == local::awlen;	
			awsize == local::awsize;
			};
                finish_item(wr);	
		start_item(rd);
		rd.randomize with {
                        axi_op == 1;
                        araddr == local::araddr;
                        arlen == local::arlen;
                        arsize == local::arsize;
			};
                finish_item(rd);
        endtask
endclass 
