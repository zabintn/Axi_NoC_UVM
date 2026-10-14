class axi_rd_wr_test extends axi_base_test;
	axi_write_sequence wseq;
	axi_read_sequence rseq;
	`uvm_component_utils(axi_rd_wr_test)

	function new(string name="axi_rd_wr_test", uvm_component parent=null);
		super.new(name,parent);
	endfunction
/*	
	virtual task run_phase(uvm_phase phase);
		super.run_phase(phase);
		phase.raise_objection(this);

		repeat (1500) @(posedge env_o.agt[0].drv.axi_vif.clk);
    		wseq = axi_write_sequence::type_id::create("wseq");
    		wseq.awaddr = BASE0; 
		wseq.awlen = 8'd0;
		wseq.awsize=3'd2;
		wseq.awburst=2'b01;
    		wseq.start(env_o.agt[0].seqr);
    		
		rseq = axi_read_sequence::type_id::create("rseq");
    		rseq.araddr = BASE0; 
		rseq.arlen = 8'd0;
		rseq.arsize=3'd2;
		rseq.arburst=2'b01;
		rseq.start(env_o.agt[0].seqr);


  		repeat (2000) @(posedge env_o.agt[0].drv.axi_vif.clk);

 		 `uvm_info(get_full_name(), "AFTER RUN PHASE OF WRITE READ TEST", UVM_LOW);
  		phase.drop_objection(this);
	endtask
	*/

	virtual task run_phase(uvm_phase phase);
        virtual axi_if vif;
        int timeout;
        super.run_phase(phase);
        phase.raise_objection(this);

        vif = env_o.agt[0].drv.axi_vif;

        repeat (1500) @(posedge vif.clk);

        wseq = axi_write_sequence::type_id::create("wseq");
        wseq.awaddr  = BASE0+64'd4;
        wseq.awlen   = 8'd0;
        wseq.awsize  = 3'd2;
        wseq.awburst = 2'b01;
        wseq.start(env_o.agt[0].seqr);

        // wait for the write response before reading back
        timeout = 0;
        do begin
                @(posedge vif.clk);
                timeout++;
        end while (!(vif.bvalid === 1'b1 && vif.bready === 1'b1) && timeout < 5000);
        if (timeout >= 5000)
                `uvm_fatal("TIMEOUT", "NO B RESPONSE FOR WRITE")
        repeat (10) @(posedge vif.clk);   // margin for the BRAM write to settle

        rseq = axi_read_sequence::type_id::create("rseq");
        rseq.araddr  = BASE0+64'd4;
        rseq.arlen   = 8'd0;
        rseq.arsize  = 3'd2;
        rseq.arburst = 2'b01;
        rseq.start(env_o.agt[0].seqr);

        repeat (2000) @(posedge vif.clk);   // let R come back
        `uvm_info(get_full_name(), "AFTER RUN PHASE OF WRITE READ TEST", UVM_LOW)
        phase.drop_objection(this);
endtask
endclass
