class axi_concurrency_test extends axi_base_test;
	axi_concurrent_sequence cseq;
	`uvm_component_utils(axi_concurrency_test)

	function new(string name="axi_concurrency_test", uvm_component parent=null);
		super.new(name,parent);
	endfunction
	
	virtual task run_phase(uvm_phase phase);
		super.run_phase(phase);
		phase.raise_objection(this);

		repeat(1500) @(posedge env_o.agt[0].drv.axi_vif.clk);

  		for (int i = 0; i < 5; i++) begin
    			cseq = axi_concurrent_sequence::type_id::create("cseq");
 			cseq.awaddr = BASE0+ (i*4+ 64'h40); 
			cseq.awlen = 8'd0;
		   	cseq.awsize=3'd3;	
			cseq.araddr = BASE0+ (i*4+64'h36);
			cseq.arlen=8'd0;	
			cseq.arsize=3'd3;
			cseq.start(env_o.agt[0].seqr);
  		end

		
		repeat(2500) @(posedge env_o.agt[0].drv.axi_vif.clk);
 		 `uvm_info(get_full_name(), "AFTER RUN PHASE OF CONCURRENCY TEST", UVM_LOW);
  		phase.drop_objection(this);
	endtask
endclass
