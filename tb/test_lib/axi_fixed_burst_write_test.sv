class axi_fixed_burst_write_test extends axi_base_test;
	axi_write_sequence wseq;
	axi_read_sequence rseq;
	`uvm_component_utils(axi_fixed_burst_write_test)

	function new(string name="axi_fixed_burst_write_test", uvm_component parent=null);
		super.new(name,parent);
	endfunction
	
	virtual task run_phase(uvm_phase phase);
		int timeout;	
		virtual axi_if axi_vif;
		super.run_phase(phase);
		phase.raise_objection(this);
		axi_vif=env_o.agt[0].drv.axi_vif;	
		repeat (1500) @(posedge axi_vif.clk);
    		
		wseq = axi_write_sequence::type_id::create("wseq");
    		wseq.awaddr = BASE0; 
		wseq.awlen = 8'd2;
		wseq.awsize = 3'd2;
		wseq.awburst= 2'b00;
    		wseq.start(env_o.agt[0].seqr);
		
		timeout = 0;
        	do begin
                	@(posedge axi_vif.clk);
                	timeout++;
        	end while (!(axi_vif.bvalid === 1'b1 && axi_vif.bready === 1'b1) && timeout < 5000);
        	if (timeout >= 5000)
                	`uvm_fatal("TIMEOUT", "NO B RESPONSE FOR WRITE")
        	repeat (10) @(posedge axi_vif.clk);   // margin for the BRAM write to settle

        	rseq = axi_read_sequence::type_id::create("rseq");
        	rseq.araddr  = BASE0;
        	rseq.arlen   = 8'd0;
        	rseq.arsize  = 3'd2;
        	rseq.arburst = 2'b00;
        	rseq.start(env_o.agt[0].seqr);

 
  		repeat (2000) @(posedge env_o.agt[0].drv.axi_vif.clk);

 		 `uvm_info(get_full_name(), "AFTER RUN PHASE OF FIXED BURST READ WRITE TEST", UVM_LOW);
  		phase.drop_objection(this);
	endtask
endclass
