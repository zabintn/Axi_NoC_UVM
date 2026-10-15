// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
// DO NOT MODIFY THIS FILE.

// MODULE VLNV: amd.com:blockdesign:axi_noc:1.0

`timescale 1ps / 1ps

`include "vivado_interfaces.svh"

module axi_noc_sv (
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0" *)
  (* X_INTERFACE_MODE = "slave S02_AXI_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S02_AXI_0, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  vivado_aximm_v1_0.slave S02_AXI_0,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0" *)
  (* X_INTERFACE_MODE = "slave S00_AXI_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_0, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  vivado_aximm_v1_0.slave S00_AXI_0,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0" *)
  (* X_INTERFACE_MODE = "slave S01_AXI_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S01_AXI_0, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  vivado_aximm_v1_0.slave S01_AXI_0,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0" *)
  (* X_INTERFACE_MODE = "slave S03_AXI_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S03_AXI_0, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  vivado_aximm_v1_0.slave S03_AXI_0,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire axi_rst_in_0_n_0,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire axi_clk_in_0_0
);

  // interface wire assignments
  assign S02_AXI_0.BUSER = 0;
  assign S02_AXI_0.RUSER = 0;
  assign S00_AXI_0.BUSER = 0;
  assign S00_AXI_0.RUSER = 0;
  assign S01_AXI_0.BUSER = 0;
  assign S01_AXI_0.RUSER = 0;
  assign S03_AXI_0.BUSER = 0;
  assign S03_AXI_0.RUSER = 0;

  axi_noc inst (
    .S02_AXI_0_awid(S02_AXI_0.AWID),
    .S02_AXI_0_awaddr(S02_AXI_0.AWADDR),
    .S02_AXI_0_awlen(S02_AXI_0.AWLEN),
    .S02_AXI_0_awsize(S02_AXI_0.AWSIZE),
    .S02_AXI_0_awburst(S02_AXI_0.AWBURST),
    .S02_AXI_0_awlock(S02_AXI_0.AWLOCK),
    .S02_AXI_0_awcache(S02_AXI_0.AWCACHE),
    .S02_AXI_0_awprot(S02_AXI_0.AWPROT),
    .S02_AXI_0_awregion(S02_AXI_0.AWREGION),
    .S02_AXI_0_awqos(S02_AXI_0.AWQOS),
    .S02_AXI_0_awvalid(S02_AXI_0.AWVALID),
    .S02_AXI_0_awready(S02_AXI_0.AWREADY),
    .S02_AXI_0_wdata(S02_AXI_0.WDATA),
    .S02_AXI_0_wstrb(S02_AXI_0.WSTRB),
    .S02_AXI_0_wlast(S02_AXI_0.WLAST),
    .S02_AXI_0_wvalid(S02_AXI_0.WVALID),
    .S02_AXI_0_wready(S02_AXI_0.WREADY),
    .S02_AXI_0_bid(S02_AXI_0.BID),
    .S02_AXI_0_bresp(S02_AXI_0.BRESP),
    .S02_AXI_0_bvalid(S02_AXI_0.BVALID),
    .S02_AXI_0_bready(S02_AXI_0.BREADY),
    .S02_AXI_0_arid(S02_AXI_0.ARID),
    .S02_AXI_0_araddr(S02_AXI_0.ARADDR),
    .S02_AXI_0_arlen(S02_AXI_0.ARLEN),
    .S02_AXI_0_arsize(S02_AXI_0.ARSIZE),
    .S02_AXI_0_arburst(S02_AXI_0.ARBURST),
    .S02_AXI_0_arlock(S02_AXI_0.ARLOCK),
    .S02_AXI_0_arcache(S02_AXI_0.ARCACHE),
    .S02_AXI_0_arprot(S02_AXI_0.ARPROT),
    .S02_AXI_0_arregion(S02_AXI_0.ARREGION),
    .S02_AXI_0_arqos(S02_AXI_0.ARQOS),
    .S02_AXI_0_arvalid(S02_AXI_0.ARVALID),
    .S02_AXI_0_arready(S02_AXI_0.ARREADY),
    .S02_AXI_0_rid(S02_AXI_0.RID),
    .S02_AXI_0_rdata(S02_AXI_0.RDATA),
    .S02_AXI_0_rresp(S02_AXI_0.RRESP),
    .S02_AXI_0_rlast(S02_AXI_0.RLAST),
    .S02_AXI_0_rvalid(S02_AXI_0.RVALID),
    .S02_AXI_0_rready(S02_AXI_0.RREADY),
    .S00_AXI_0_awid(S00_AXI_0.AWID),
    .S00_AXI_0_awaddr(S00_AXI_0.AWADDR),
    .S00_AXI_0_awlen(S00_AXI_0.AWLEN),
    .S00_AXI_0_awsize(S00_AXI_0.AWSIZE),
    .S00_AXI_0_awburst(S00_AXI_0.AWBURST),
    .S00_AXI_0_awlock(S00_AXI_0.AWLOCK),
    .S00_AXI_0_awcache(S00_AXI_0.AWCACHE),
    .S00_AXI_0_awprot(S00_AXI_0.AWPROT),
    .S00_AXI_0_awregion(S00_AXI_0.AWREGION),
    .S00_AXI_0_awqos(S00_AXI_0.AWQOS),
    .S00_AXI_0_awvalid(S00_AXI_0.AWVALID),
    .S00_AXI_0_awready(S00_AXI_0.AWREADY),
    .S00_AXI_0_wdata(S00_AXI_0.WDATA),
    .S00_AXI_0_wstrb(S00_AXI_0.WSTRB),
    .S00_AXI_0_wlast(S00_AXI_0.WLAST),
    .S00_AXI_0_wvalid(S00_AXI_0.WVALID),
    .S00_AXI_0_wready(S00_AXI_0.WREADY),
    .S00_AXI_0_bid(S00_AXI_0.BID),
    .S00_AXI_0_bresp(S00_AXI_0.BRESP),
    .S00_AXI_0_bvalid(S00_AXI_0.BVALID),
    .S00_AXI_0_bready(S00_AXI_0.BREADY),
    .S00_AXI_0_arid(S00_AXI_0.ARID),
    .S00_AXI_0_araddr(S00_AXI_0.ARADDR),
    .S00_AXI_0_arlen(S00_AXI_0.ARLEN),
    .S00_AXI_0_arsize(S00_AXI_0.ARSIZE),
    .S00_AXI_0_arburst(S00_AXI_0.ARBURST),
    .S00_AXI_0_arlock(S00_AXI_0.ARLOCK),
    .S00_AXI_0_arcache(S00_AXI_0.ARCACHE),
    .S00_AXI_0_arprot(S00_AXI_0.ARPROT),
    .S00_AXI_0_arregion(S00_AXI_0.ARREGION),
    .S00_AXI_0_arqos(S00_AXI_0.ARQOS),
    .S00_AXI_0_arvalid(S00_AXI_0.ARVALID),
    .S00_AXI_0_arready(S00_AXI_0.ARREADY),
    .S00_AXI_0_rid(S00_AXI_0.RID),
    .S00_AXI_0_rdata(S00_AXI_0.RDATA),
    .S00_AXI_0_rresp(S00_AXI_0.RRESP),
    .S00_AXI_0_rlast(S00_AXI_0.RLAST),
    .S00_AXI_0_rvalid(S00_AXI_0.RVALID),
    .S00_AXI_0_rready(S00_AXI_0.RREADY),
    .S01_AXI_0_awid(S01_AXI_0.AWID),
    .S01_AXI_0_awaddr(S01_AXI_0.AWADDR),
    .S01_AXI_0_awlen(S01_AXI_0.AWLEN),
    .S01_AXI_0_awsize(S01_AXI_0.AWSIZE),
    .S01_AXI_0_awburst(S01_AXI_0.AWBURST),
    .S01_AXI_0_awlock(S01_AXI_0.AWLOCK),
    .S01_AXI_0_awcache(S01_AXI_0.AWCACHE),
    .S01_AXI_0_awprot(S01_AXI_0.AWPROT),
    .S01_AXI_0_awregion(S01_AXI_0.AWREGION),
    .S01_AXI_0_awqos(S01_AXI_0.AWQOS),
    .S01_AXI_0_awvalid(S01_AXI_0.AWVALID),
    .S01_AXI_0_awready(S01_AXI_0.AWREADY),
    .S01_AXI_0_wdata(S01_AXI_0.WDATA),
    .S01_AXI_0_wstrb(S01_AXI_0.WSTRB),
    .S01_AXI_0_wlast(S01_AXI_0.WLAST),
    .S01_AXI_0_wvalid(S01_AXI_0.WVALID),
    .S01_AXI_0_wready(S01_AXI_0.WREADY),
    .S01_AXI_0_bid(S01_AXI_0.BID),
    .S01_AXI_0_bresp(S01_AXI_0.BRESP),
    .S01_AXI_0_bvalid(S01_AXI_0.BVALID),
    .S01_AXI_0_bready(S01_AXI_0.BREADY),
    .S01_AXI_0_arid(S01_AXI_0.ARID),
    .S01_AXI_0_araddr(S01_AXI_0.ARADDR),
    .S01_AXI_0_arlen(S01_AXI_0.ARLEN),
    .S01_AXI_0_arsize(S01_AXI_0.ARSIZE),
    .S01_AXI_0_arburst(S01_AXI_0.ARBURST),
    .S01_AXI_0_arlock(S01_AXI_0.ARLOCK),
    .S01_AXI_0_arcache(S01_AXI_0.ARCACHE),
    .S01_AXI_0_arprot(S01_AXI_0.ARPROT),
    .S01_AXI_0_arregion(S01_AXI_0.ARREGION),
    .S01_AXI_0_arqos(S01_AXI_0.ARQOS),
    .S01_AXI_0_arvalid(S01_AXI_0.ARVALID),
    .S01_AXI_0_arready(S01_AXI_0.ARREADY),
    .S01_AXI_0_rid(S01_AXI_0.RID),
    .S01_AXI_0_rdata(S01_AXI_0.RDATA),
    .S01_AXI_0_rresp(S01_AXI_0.RRESP),
    .S01_AXI_0_rlast(S01_AXI_0.RLAST),
    .S01_AXI_0_rvalid(S01_AXI_0.RVALID),
    .S01_AXI_0_rready(S01_AXI_0.RREADY),
    .S03_AXI_0_awid(S03_AXI_0.AWID),
    .S03_AXI_0_awaddr(S03_AXI_0.AWADDR),
    .S03_AXI_0_awlen(S03_AXI_0.AWLEN),
    .S03_AXI_0_awsize(S03_AXI_0.AWSIZE),
    .S03_AXI_0_awburst(S03_AXI_0.AWBURST),
    .S03_AXI_0_awlock(S03_AXI_0.AWLOCK),
    .S03_AXI_0_awcache(S03_AXI_0.AWCACHE),
    .S03_AXI_0_awprot(S03_AXI_0.AWPROT),
    .S03_AXI_0_awregion(S03_AXI_0.AWREGION),
    .S03_AXI_0_awqos(S03_AXI_0.AWQOS),
    .S03_AXI_0_awvalid(S03_AXI_0.AWVALID),
    .S03_AXI_0_awready(S03_AXI_0.AWREADY),
    .S03_AXI_0_wdata(S03_AXI_0.WDATA),
    .S03_AXI_0_wstrb(S03_AXI_0.WSTRB),
    .S03_AXI_0_wlast(S03_AXI_0.WLAST),
    .S03_AXI_0_wvalid(S03_AXI_0.WVALID),
    .S03_AXI_0_wready(S03_AXI_0.WREADY),
    .S03_AXI_0_bid(S03_AXI_0.BID),
    .S03_AXI_0_bresp(S03_AXI_0.BRESP),
    .S03_AXI_0_bvalid(S03_AXI_0.BVALID),
    .S03_AXI_0_bready(S03_AXI_0.BREADY),
    .S03_AXI_0_arid(S03_AXI_0.ARID),
    .S03_AXI_0_araddr(S03_AXI_0.ARADDR),
    .S03_AXI_0_arlen(S03_AXI_0.ARLEN),
    .S03_AXI_0_arsize(S03_AXI_0.ARSIZE),
    .S03_AXI_0_arburst(S03_AXI_0.ARBURST),
    .S03_AXI_0_arlock(S03_AXI_0.ARLOCK),
    .S03_AXI_0_arcache(S03_AXI_0.ARCACHE),
    .S03_AXI_0_arprot(S03_AXI_0.ARPROT),
    .S03_AXI_0_arregion(S03_AXI_0.ARREGION),
    .S03_AXI_0_arqos(S03_AXI_0.ARQOS),
    .S03_AXI_0_arvalid(S03_AXI_0.ARVALID),
    .S03_AXI_0_arready(S03_AXI_0.ARREADY),
    .S03_AXI_0_rid(S03_AXI_0.RID),
    .S03_AXI_0_rdata(S03_AXI_0.RDATA),
    .S03_AXI_0_rresp(S03_AXI_0.RRESP),
    .S03_AXI_0_rlast(S03_AXI_0.RLAST),
    .S03_AXI_0_rvalid(S03_AXI_0.RVALID),
    .S03_AXI_0_rready(S03_AXI_0.RREADY),
    .axi_rst_in_0_n_0(axi_rst_in_0_n_0),
    .axi_clk_in_0_0(axi_clk_in_0_0)
  );

endmodule
