class axi_per_master_test extends axi_base_test;
	axi_write_sequence wseq;
	axi_read_sequence rseq;
	`uvm_component_utils(axi_per_master_test)

	function new(string name="axi_per_master_test", uvm_component parent=null);
		super.new(name,parent);
	endfunction

	virtual task run_phase(uvm_phase phase);
        virtual axi_if vif;
        int timeout;
        super.run_phase(phase);
        phase.raise_objection(this);

        vif = env_o.agt[0].drv.axi_vif;

        repeat (1500) @(posedge vif.clk);

        wseq = axi_write_sequence::type_id::create("wseq");
        wseq.awaddr  = BASE1;
        wseq.awlen   = 8'd0;
        wseq.awsize  = 3'd3;
        wseq.awburst = 2'b01;
        wseq.start(env_o.agt[0].seqr);
	
	wseq.awaddr  = BASE1+ 64'd8;
        wseq.awlen   = 8'd0;
        wseq.awsize  = 3'd3;
        wseq.awburst = 2'b01;
        wseq.start(env_o.agt[1].seqr);

	wseq.awaddr  = BASE1+ 64'd16;
        wseq.awlen   = 8'd0;
        wseq.awsize  = 3'd3;
        wseq.awburst = 2'b01;
        wseq.start(env_o.agt[2].seqr);

	wseq.awaddr  = BASE1+ 64'd24;
        wseq.awlen   = 8'd0;
        wseq.awsize  = 3'd3;
        wseq.awburst = 2'b01;
        wseq.start(env_o.agt[3].seqr);

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
        rseq.araddr  = BASE1;
        rseq.arlen   = 8'd0;
        rseq.arsize  = 3'd3;
        rseq.arburst = 2'b01;
        rseq.start(env_o.agt[0].seqr);
    
	rseq.araddr  = BASE1 +64'd8;
        rseq.arlen   = 8'd0;
        rseq.arsize  = 3'd3;
        rseq.arburst = 2'b01;
        rseq.start(env_o.agt[1].seqr);
        
	rseq.araddr  = BASE1 +64'd16;
        rseq.arlen   = 8'd0;
        rseq.arsize  = 3'd3;
        rseq.arburst = 2'b01;
        rseq.start(env_o.agt[2].seqr);  

	rseq.araddr  = BASE1 +64'd24;
        rseq.arlen   = 8'd0;
        rseq.arsize  = 3'd3;
        rseq.arburst = 2'b01;
        rseq.start(env_o.agt[3].seqr);  

	repeat (2000) @(posedge vif.clk);   // let R come back
        `uvm_info(get_full_name(), "AFTER RUN PHASE OF WRITE READ TEST", UVM_LOW)
        phase.drop_objection(this);
endtask
endclass
