class axi_all_addr_rd_wr_test extends axi_base_test;
        axi_write_sequence wseq;
        axi_read_sequence  rseq;
        `uvm_component_utils(axi_all_addr_rd_wr_test)

        localparam int NUM_WORDS = 8;      // 32 bytes / 4 bytes per word
        int b_cnt, r_cnt;                  // class members so the monitor threads outlive locals

        function new(string name="axi_all_addr_rd_wr_test", uvm_component parent=null);
                super.new(name,parent);
        endfunction

       virtual task run_phase(uvm_phase phase);
    virtual axi_if vif;
    int timeout;

    super.run_phase(phase);
    phase.raise_objection(this);

    vif = env_o.agt[0].drv.axi_vif;
    b_cnt = 0;
    r_cnt = 0;

    repeat (1500) @(posedge vif.clk);

    // Count completed write and read responses
    fork
        forever begin
            @(posedge vif.clk);
            if (vif.bvalid === 1'b1 && vif.bready === 1'b1)
                b_cnt++;
        end

        forever begin
            @(posedge vif.clk);
            if (vif.rvalid === 1'b1 &&
                vif.rready === 1'b1 &&
                vif.rlast === 1'b1)
                r_cnt++;
        end
    join_none

    // Write and read back each address before moving to the next
    for (int i = 0; i < NUM_WORDS; i++) begin

        // ---------------- WRITE ----------------
        wseq = axi_write_sequence::type_id::create(
            $sformatf("wseq%0d", i)
        );

        wseq.awaddr  = BASE0 + i;
        wseq.awlen   = 8'd0;
        wseq.awsize  = 3'd2;
        wseq.awburst = 2'b01;

        wseq.start(env_o.agt[0].seqr);

        // Wait for this write's B response
        timeout = 0;
        while (b_cnt < i + 1 && timeout < 20000) begin
            @(posedge vif.clk);
            timeout++;
        end

        if (b_cnt < i + 1)
            `uvm_fatal("TIMEOUT",
                $sformatf("No B response for write %0d at address %0h",
                          i, BASE0 + i*64'd4))

        // ---------------- READ SAME ADDRESS ----------------
        rseq = axi_read_sequence::type_id::create(
            $sformatf("rseq%0d", i)
        );

        rseq.araddr  = BASE0 + i;
        rseq.arlen   = 8'd0;
        rseq.arsize  = 3'd2;
        rseq.arburst = 2'b01;

        rseq.start(env_o.agt[0].seqr);

        // Wait for this read's final R beat
        timeout = 0;
        while (r_cnt < i + 1 && timeout < 20000) begin
            @(posedge vif.clk);
            timeout++;
        end

        if (r_cnt < i + 1)
            `uvm_fatal("TIMEOUT",
                $sformatf("No R response for read %0d at address %0h",
                          i, BASE0 + i*64'd4))
    end

    repeat (10) @(posedge vif.clk);

    `uvm_info(get_full_name(),
        "AFTER RUN PHASE OF ALL ADDR RD WR TEST", UVM_LOW)

    phase.drop_objection(this);
endtask
endclass
