`include "uvm_macros.svh"
import uvm_pkg::*;
import axi_test_pkg::*;
module axi_tb_top;

bit clk;

int clk_frequency_mhz;
int clk_period_ns;
initial begin
        if($value$plusargs("CLK_FREQUENCY=%d", clk_frequency_mhz)) begin
                $display("Clock frequency overwritten to %0d MHz", clk_frequency_mhz);
        end
        
        clk_period_ns=1000/clk_frequency_mhz;
end


always #(clk_period_ns/2) clk = ~clk;

axi_if axi_vif [MASTER_NUM] (clk);
for(genvar i=0; i<MASTER_NUM; i++) begin
	
	initial begin
		uvm_config_db#(virtual axi_if) :: set(uvm_root :: get(), $sformatf("uvm_test_top.env_o.agt[%0d].*", i), "vif", axi_vif[i]);
		uvm_config_db#(int) :: set(uvm_root :: get(), $sformatf("uvm_test_top.env_o.agt[%0d].*", i), "master_id", i);
	end

	axi_assertion_module inst( .clk(axi_vif[i].clk),
		.aresetn(axi_vif[i].aresetn),
		.awvalid(axi_vif[i].awvalid),
		.awid(axi_vif[i].awid),
		.awaddr(axi_vif[i].awaddr),
		.awlen(axi_vif[i].awlen),
		.awsize(axi_vif[i].awsize),
		.awburst(axi_vif[i].awburst),
		.awready(axi_vif[i].awready),
		.wvalid(axi_vif[i].wvalid),
		.wready(axi_vif[i].wready),
		.wdata(axi_vif[i].wdata),
		.wlast(axi_vif[i].wlast),
		.wstrb(axi_vif[i].wstrb),
		.bvalid(axi_vif[i].bvalid),
		.arvalid(axi_vif[i].arvalid),
		.arid(axi_vif[i].arid),
		.arready(axi_vif[i].arready),
		.araddr(axi_vif[i].araddr),
		.arlen(axi_vif[i].arlen),
		.arsize(axi_vif[i].arsize),
		.arburst(axi_vif[i].arburst),
		.rvalid(axi_vif[i].rvalid),
		.rready(axi_vif[i].rready),
		.rlast(axi_vif[i].rlast),
		.rresp(axi_vif[i].rresp),
		.rdata(axi_vif[i].rdata)
		);
end

	axi_noc_wrapper_sim_wrapper DUT (
		.axi_clk_in_0_0(clk),
		.axi_rst_in_0_n_0 (axi_vif[0].aresetn),
		.S00_AXI_0_araddr(axi_vif[0].araddr),
		.S00_AXI_0_arburst(axi_vif[0].arburst),
		.S00_AXI_0_arid(axi_vif[0].arid),
		.S00_AXI_0_arlen(axi_vif[0].arlen),
		.S00_AXI_0_arready(axi_vif[0].arready),
		.S00_AXI_0_arsize(axi_vif[0].arsize),
		.S00_AXI_0_arvalid(axi_vif[0].arvalid),
		.S00_AXI_0_awaddr(axi_vif[0].awaddr),
		.S00_AXI_0_awburst(axi_vif[0].awburst),
		.S00_AXI_0_awid(axi_vif[0].awid),
		.S00_AXI_0_awlen(axi_vif[0].awlen),
		.S00_AXI_0_awready(axi_vif[0].awready),
		.S00_AXI_0_awsize(axi_vif[0].awsize),
		.S00_AXI_0_awvalid(axi_vif[0].awvalid),
		.S00_AXI_0_bid(axi_vif[0].bid),
		.S00_AXI_0_bready(axi_vif[0].bready),
		.S00_AXI_0_bresp(axi_vif[0].bresp),
		.S00_AXI_0_bvalid(axi_vif[0].bvalid),
		.S00_AXI_0_rdata(axi_vif[0].rdata),
		.S00_AXI_0_rid(axi_vif[0].rid),
		.S00_AXI_0_rlast(axi_vif[0].rlast),
		.S00_AXI_0_rready(axi_vif[0].rready),
		.S00_AXI_0_rresp(axi_vif[0].rresp),
		.S00_AXI_0_rvalid(axi_vif[0].rvalid),
		.S00_AXI_0_wdata(axi_vif[0].wdata),
		.S00_AXI_0_wlast(axi_vif[0].wlast),
		.S00_AXI_0_wready(axi_vif[0].wready),
		.S00_AXI_0_wstrb(axi_vif[0].wstrb),
		.S00_AXI_0_wvalid(axi_vif[0].wvalid),
		.S01_AXI_0_araddr(axi_vif[1].araddr),
		.S01_AXI_0_arburst(axi_vif[1].arburst),
		.S01_AXI_0_arid(axi_vif[1].arid),
		.S01_AXI_0_arlen(axi_vif[1].arlen),
		.S01_AXI_0_arready(axi_vif[1].arready),
		.S01_AXI_0_arsize(axi_vif[1].arsize),
		.S01_AXI_0_arvalid(axi_vif[1].arvalid),
		.S01_AXI_0_awaddr(axi_vif[1].awaddr),
		.S01_AXI_0_awburst(axi_vif[1].awburst),
		.S01_AXI_0_awid(axi_vif[1].awid),
		.S01_AXI_0_awlen(axi_vif[1].awlen),
		.S01_AXI_0_awready(axi_vif[1].awready),
		.S01_AXI_0_awsize(axi_vif[1].awsize),
		.S01_AXI_0_awvalid(axi_vif[1].awvalid),
		.S01_AXI_0_bid(axi_vif[1].bid),
		.S01_AXI_0_bready(axi_vif[1].bready),
		.S01_AXI_0_bresp(axi_vif[1].bresp),
		.S01_AXI_0_bvalid(axi_vif[1].bvalid),
		.S01_AXI_0_rdata(axi_vif[1].rdata),
		.S01_AXI_0_rid(axi_vif[1].rid),
		.S01_AXI_0_rlast(axi_vif[1].rlast),
		.S01_AXI_0_rready(axi_vif[1].rready),
		.S01_AXI_0_rresp(axi_vif[1].rresp),
		.S01_AXI_0_rvalid(axi_vif[1].rvalid),
		.S01_AXI_0_wdata(axi_vif[1].wdata),
		.S01_AXI_0_wlast(axi_vif[1].wlast),
		.S01_AXI_0_wready(axi_vif[1].wready),
		.S01_AXI_0_wstrb(axi_vif[1].wstrb),
		.S01_AXI_0_wvalid(axi_vif[1].wvalid),
		.S02_AXI_0_araddr(axi_vif[2].araddr),
		.S02_AXI_0_arburst(axi_vif[2].arburst),
		.S02_AXI_0_arid(axi_vif[2].arid),
		.S02_AXI_0_arlen(axi_vif[2].arlen),
		.S02_AXI_0_arready(axi_vif[2].arready),
		.S02_AXI_0_arsize(axi_vif[2].arsize),
		.S02_AXI_0_arvalid(axi_vif[2].arvalid),
		.S02_AXI_0_awaddr(axi_vif[2].awaddr),
		.S02_AXI_0_awburst(axi_vif[2].awburst),
		.S02_AXI_0_awid(axi_vif[2].awid),
		.S02_AXI_0_awlen(axi_vif[2].awlen),
		.S02_AXI_0_awready(axi_vif[2].awready),
		.S02_AXI_0_awsize(axi_vif[2].awsize),
		.S02_AXI_0_awvalid(axi_vif[2].awvalid),
		.S02_AXI_0_bid(axi_vif[2].bid),
		.S02_AXI_0_bready(axi_vif[2].bready),
		.S02_AXI_0_bresp(axi_vif[2].bresp),
		.S02_AXI_0_bvalid(axi_vif[2].bvalid),
		.S02_AXI_0_rdata(axi_vif[2].rdata),
		.S02_AXI_0_rid(axi_vif[2].rid),
		.S02_AXI_0_rlast(axi_vif[2].rlast),
		.S02_AXI_0_rready(axi_vif[2].rready),
		.S02_AXI_0_rresp(axi_vif[2].rresp),
		.S02_AXI_0_rvalid(axi_vif[2].rvalid),
		.S02_AXI_0_wdata(axi_vif[2].wdata),
		.S02_AXI_0_wlast(axi_vif[2].wlast),
		.S02_AXI_0_wready(axi_vif[2].wready),
		.S02_AXI_0_wstrb(axi_vif[2].wstrb),
		.S02_AXI_0_wvalid(axi_vif[2].wvalid),
		.S03_AXI_0_araddr(axi_vif[3].araddr),
		.S03_AXI_0_arburst(axi_vif[3].arburst),
		.S03_AXI_0_arid(axi_vif[3].arid),
		.S03_AXI_0_arlen(axi_vif[3].arlen),
		.S03_AXI_0_arready(axi_vif[3].arready),
		.S03_AXI_0_arsize(axi_vif[3].arsize),
		.S03_AXI_0_arvalid(axi_vif[3].arvalid),
		.S03_AXI_0_awaddr(axi_vif[3].awaddr),
		.S03_AXI_0_awburst(axi_vif[3].awburst),
		.S03_AXI_0_awid(axi_vif[3].awid),
		.S03_AXI_0_awlen(axi_vif[3].awlen),
		.S03_AXI_0_awready(axi_vif[3].awready),
		.S03_AXI_0_awsize(axi_vif[3].awsize),
		.S03_AXI_0_awvalid(axi_vif[3].awvalid),
		.S03_AXI_0_bid(axi_vif[3].bid),
		.S03_AXI_0_bready(axi_vif[3].bready),
		.S03_AXI_0_bresp(axi_vif[3].bresp),
		.S03_AXI_0_bvalid(axi_vif[3].bvalid),
		.S03_AXI_0_rdata(axi_vif[3].rdata),
		.S03_AXI_0_rid(axi_vif[3].rid),
		.S03_AXI_0_rlast(axi_vif[3].rlast),
		.S03_AXI_0_rready(axi_vif[3].rready),
		.S03_AXI_0_rresp(axi_vif[3].rresp),
		.S03_AXI_0_rvalid(axi_vif[3].rvalid),
		.S03_AXI_0_wdata(axi_vif[3].wdata),
		.S03_AXI_0_wlast(axi_vif[3].wlast),
		.S03_AXI_0_wready(axi_vif[3].wready),
		.S03_AXI_0_wstrb(axi_vif[3].wstrb),
		.S03_AXI_0_wvalid(axi_vif[3].wvalid)
		);
initial begin
	run_test("base_test");
end
endmodule
