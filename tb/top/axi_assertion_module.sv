module axi_assertion_module(input bit clk,
	input logic aresetn,
	input logic awvalid,
	input logic awid,
	input logic awaddr,
	input logic awlen,
	input logic awsize,
	input logic awburst,
	input logic awready,
	input logic bvalid,
	input logic bready,
	input logic wvalid,
	input logic wready,
	input logic wdata,
	input logic wlast,
	input logic wstrb,
	input logic arvalid,
	input logic arid,
	input logic arready,
	input logic araddr,
	input logic arlen,
	input logic arsize,
	input logic arburst,
	input logic rvalid,
	input logic rready,
	input logic rlast,
	input logic rresp,
	input logic rdata
	);

	//reset sequences
	
	sequence valid_zeros;
		!awvalid && !wvalid && !arvalid;
	endsequence

	//aw sequences

	sequence aw_no_rdy;
		awvalid && !awready;
	endsequence
	
	//w sequences
	
	sequence wvalid_rdy;
		wvalid && wready;
	endsequence

	//b sequences
	//
	sequence b_no_rdy;
		bvalid && !bready;
	endsequence
	
	//ar sequences

	sequence ar_no_rdy;
		arvalid && !arready;
	endsequence

	//r sequences	
	sequence r_no_rdy;
		rvalid && !rready;
	endsequence
	
	sequence rvalid_rdy;
		rvalid && rready;
	endsequence


	//reset properties

	property post_reset;
		@(posedge clk)
	       $rose(aresetn) |-> valid_zeros;	
	endproperty

	//aw properties
	
	property awvalid_hold;
		@(posedge clk) disable iff (!aresetn)
		aw_no_rdy |=> awvalid;
	endproperty

	property awchannel_stability;
		@(posedge clk) disable iff (!aresetn)
		aw_no_rdy |=> $stable({awid, awaddr, awburst, awsize, awlen});
	endproperty

	//w properties
	
	property wvalid_hold;
		@(posedge clk) disable iff (!aresetn)
		(wvalid && !wready) |=> wvalid;
	endproperty

	property handshake_hold;
		@(posedge clk) disable iff(!aresetn || !wvalid)
		!$rose(wlast) |-> wvalid_rdy;
	endproperty

	property wchannel_stability;
		@(posedge clk) disable iff(!aresetn)
		(wvalid && !wready) |=> $stable({wdata, wstrb, wlast});
	endproperty

	//b properties
	//
	property bvalid_hold;
		@(posedge clk) disable iff(!aresetn)
		b_no_rdy |=> bvalid;
	endproperty

	//ar properties
	
	property arvalid_hold;
		@(posedge clk) disable iff (!aresetn)
		ar_no_rdy |=> arvalid;
	endproperty

	property archannel_stability;
		@(posedge clk) disable iff (!aresetn)
		ar_no_rdy |=> $stable({arid, araddr, arburst, arsize, arlen});
	endproperty

	//r properties
	
	property rvalid_hold;
		@(posedge clk) disable iff(!aresetn)
		r_no_rdy |=> rvalid;
	endproperty

	property r_handshake_hold;
		@(posedge clk) disable iff(!aresetn || !rvalid)
		!$rose(rlast) |-> rvalid_rdy;
	endproperty

	property rchannel_stability;
		@(posedge clk) disable iff(!aresetn)
		r_no_rdy |=> $stable({rdata, rresp, rlast});
	endproperty


	//asserts

	reset_assert: assert property (post_reset) else $display("RESET VALIDS FAILED TO DRIVE TO ZERO AT= %0t", $time);
	awvalid_assert: assert property (awvalid_hold) else $display("AWVALID DRIVEN TO ZERO BEFORE AWREADY ASSERT=%0t", $time);
	awchannel_assert: assert property (awchannel_stability) else $display("AW CHANNEL DATA CHANGED BEFORE VALID READY_HANDSHAKE=%0t", $time);
	wvalid_assert: assert property (wvalid_hold) else $display("WVALID DRIVEN TO ZERO BEFORE HANDSHAKE=%0t", $time);
	wchannel_assert: assert property (wchannel_stability) else $display("WCHANNEL DATA CHANGED BEFORE HANDSHAKE=%0t", $time);
	bvalid_assert: assert property (bvalid_hold) else $display("BVALID DEASSERTED BEFORE HANDSHAKE=%0t", $time);
	arvalid_assert: assert property (arvalid_hold) else $display("ARVALID DRIVEN TO ZERO BEFORE AWREADY ASSERT=%0t", $time);
	archannel_assert: assert property (archannel_stability) else $display("AR CHANNEL DATA CHANGED BEFORE VALID READY_HANDSHAKE=%0t", $time);
	rvalid_assert: assert property (rvalid_hold) else $display("BVALID DEASSERTED BEFORE HANDSHAKE=%0t", $time);
	rchannel_assert: assert property (rchannel_stability) else $display("RCHANEL DATA CHANGED BEFORE VALID READY HANDSHAKE=%0t", $time);
	endmodule	

