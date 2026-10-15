//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Tue Oct 13 18:07:22 2026
//Host        : vlsi-vivado running 64-bit Ubuntu 24.04.4 LTS
//Command     : generate_target axi_noc.bd
//Design      : axi_noc
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "axi_noc,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=axi_noc,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=6,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "axi_noc.hwdef" *) 
module axi_noc
   (S00_AXI_0_araddr,
    S00_AXI_0_arburst,
    S00_AXI_0_arcache,
    S00_AXI_0_arid,
    S00_AXI_0_arlen,
    S00_AXI_0_arlock,
    S00_AXI_0_arprot,
    S00_AXI_0_arqos,
    S00_AXI_0_arready,
    S00_AXI_0_arregion,
    S00_AXI_0_arsize,
    S00_AXI_0_arvalid,
    S00_AXI_0_awaddr,
    S00_AXI_0_awburst,
    S00_AXI_0_awcache,
    S00_AXI_0_awid,
    S00_AXI_0_awlen,
    S00_AXI_0_awlock,
    S00_AXI_0_awprot,
    S00_AXI_0_awqos,
    S00_AXI_0_awready,
    S00_AXI_0_awregion,
    S00_AXI_0_awsize,
    S00_AXI_0_awvalid,
    S00_AXI_0_bid,
    S00_AXI_0_bready,
    S00_AXI_0_bresp,
    S00_AXI_0_bvalid,
    S00_AXI_0_rdata,
    S00_AXI_0_rid,
    S00_AXI_0_rlast,
    S00_AXI_0_rready,
    S00_AXI_0_rresp,
    S00_AXI_0_rvalid,
    S00_AXI_0_wdata,
    S00_AXI_0_wlast,
    S00_AXI_0_wready,
    S00_AXI_0_wstrb,
    S00_AXI_0_wvalid,
    S01_AXI_0_araddr,
    S01_AXI_0_arburst,
    S01_AXI_0_arcache,
    S01_AXI_0_arid,
    S01_AXI_0_arlen,
    S01_AXI_0_arlock,
    S01_AXI_0_arprot,
    S01_AXI_0_arqos,
    S01_AXI_0_arready,
    S01_AXI_0_arregion,
    S01_AXI_0_arsize,
    S01_AXI_0_arvalid,
    S01_AXI_0_awaddr,
    S01_AXI_0_awburst,
    S01_AXI_0_awcache,
    S01_AXI_0_awid,
    S01_AXI_0_awlen,
    S01_AXI_0_awlock,
    S01_AXI_0_awprot,
    S01_AXI_0_awqos,
    S01_AXI_0_awready,
    S01_AXI_0_awregion,
    S01_AXI_0_awsize,
    S01_AXI_0_awvalid,
    S01_AXI_0_bid,
    S01_AXI_0_bready,
    S01_AXI_0_bresp,
    S01_AXI_0_bvalid,
    S01_AXI_0_rdata,
    S01_AXI_0_rid,
    S01_AXI_0_rlast,
    S01_AXI_0_rready,
    S01_AXI_0_rresp,
    S01_AXI_0_rvalid,
    S01_AXI_0_wdata,
    S01_AXI_0_wlast,
    S01_AXI_0_wready,
    S01_AXI_0_wstrb,
    S01_AXI_0_wvalid,
    S02_AXI_0_araddr,
    S02_AXI_0_arburst,
    S02_AXI_0_arcache,
    S02_AXI_0_arid,
    S02_AXI_0_arlen,
    S02_AXI_0_arlock,
    S02_AXI_0_arprot,
    S02_AXI_0_arqos,
    S02_AXI_0_arready,
    S02_AXI_0_arregion,
    S02_AXI_0_arsize,
    S02_AXI_0_arvalid,
    S02_AXI_0_awaddr,
    S02_AXI_0_awburst,
    S02_AXI_0_awcache,
    S02_AXI_0_awid,
    S02_AXI_0_awlen,
    S02_AXI_0_awlock,
    S02_AXI_0_awprot,
    S02_AXI_0_awqos,
    S02_AXI_0_awready,
    S02_AXI_0_awregion,
    S02_AXI_0_awsize,
    S02_AXI_0_awvalid,
    S02_AXI_0_bid,
    S02_AXI_0_bready,
    S02_AXI_0_bresp,
    S02_AXI_0_bvalid,
    S02_AXI_0_rdata,
    S02_AXI_0_rid,
    S02_AXI_0_rlast,
    S02_AXI_0_rready,
    S02_AXI_0_rresp,
    S02_AXI_0_rvalid,
    S02_AXI_0_wdata,
    S02_AXI_0_wlast,
    S02_AXI_0_wready,
    S02_AXI_0_wstrb,
    S02_AXI_0_wvalid,
    S03_AXI_0_araddr,
    S03_AXI_0_arburst,
    S03_AXI_0_arcache,
    S03_AXI_0_arid,
    S03_AXI_0_arlen,
    S03_AXI_0_arlock,
    S03_AXI_0_arprot,
    S03_AXI_0_arqos,
    S03_AXI_0_arready,
    S03_AXI_0_arregion,
    S03_AXI_0_arsize,
    S03_AXI_0_arvalid,
    S03_AXI_0_awaddr,
    S03_AXI_0_awburst,
    S03_AXI_0_awcache,
    S03_AXI_0_awid,
    S03_AXI_0_awlen,
    S03_AXI_0_awlock,
    S03_AXI_0_awprot,
    S03_AXI_0_awqos,
    S03_AXI_0_awready,
    S03_AXI_0_awregion,
    S03_AXI_0_awsize,
    S03_AXI_0_awvalid,
    S03_AXI_0_bid,
    S03_AXI_0_bready,
    S03_AXI_0_bresp,
    S03_AXI_0_bvalid,
    S03_AXI_0_rdata,
    S03_AXI_0_rid,
    S03_AXI_0_rlast,
    S03_AXI_0_rready,
    S03_AXI_0_rresp,
    S03_AXI_0_rvalid,
    S03_AXI_0_wdata,
    S03_AXI_0_wlast,
    S03_AXI_0_wready,
    S03_AXI_0_wstrb,
    S03_AXI_0_wvalid,
    axi_clk_in_0_0,
    axi_rst_in_0_n_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_0, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]S00_AXI_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARBURST" *) input [1:0]S00_AXI_0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARCACHE" *) input [3:0]S00_AXI_0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARID" *) input [1:0]S00_AXI_0_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARLEN" *) input [7:0]S00_AXI_0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARLOCK" *) input [0:0]S00_AXI_0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARPROT" *) input [2:0]S00_AXI_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARQOS" *) input [3:0]S00_AXI_0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARREADY" *) output [0:0]S00_AXI_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARREGION" *) input [3:0]S00_AXI_0_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARSIZE" *) input [2:0]S00_AXI_0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARVALID" *) input [0:0]S00_AXI_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWADDR" *) input [63:0]S00_AXI_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWBURST" *) input [1:0]S00_AXI_0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWCACHE" *) input [3:0]S00_AXI_0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWID" *) input [1:0]S00_AXI_0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWLEN" *) input [7:0]S00_AXI_0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWLOCK" *) input [0:0]S00_AXI_0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWPROT" *) input [2:0]S00_AXI_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWQOS" *) input [3:0]S00_AXI_0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWREADY" *) output [0:0]S00_AXI_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWREGION" *) input [3:0]S00_AXI_0_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWSIZE" *) input [2:0]S00_AXI_0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWVALID" *) input [0:0]S00_AXI_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 BID" *) output [1:0]S00_AXI_0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 BREADY" *) input [0:0]S00_AXI_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 BRESP" *) output [1:0]S00_AXI_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 BVALID" *) output [0:0]S00_AXI_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 RDATA" *) output [31:0]S00_AXI_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 RID" *) output [1:0]S00_AXI_0_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 RLAST" *) output [0:0]S00_AXI_0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 RREADY" *) input [0:0]S00_AXI_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 RRESP" *) output [1:0]S00_AXI_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 RVALID" *) output [0:0]S00_AXI_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 WDATA" *) input [31:0]S00_AXI_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 WLAST" *) input [0:0]S00_AXI_0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 WREADY" *) output [0:0]S00_AXI_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 WSTRB" *) input [3:0]S00_AXI_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_0 WVALID" *) input [0:0]S00_AXI_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S01_AXI_0, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]S01_AXI_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 ARBURST" *) input [1:0]S01_AXI_0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 ARCACHE" *) input [3:0]S01_AXI_0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 ARID" *) input [1:0]S01_AXI_0_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 ARLEN" *) input [7:0]S01_AXI_0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 ARLOCK" *) input [0:0]S01_AXI_0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 ARPROT" *) input [2:0]S01_AXI_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 ARQOS" *) input [3:0]S01_AXI_0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 ARREADY" *) output [0:0]S01_AXI_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 ARREGION" *) input [3:0]S01_AXI_0_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 ARSIZE" *) input [2:0]S01_AXI_0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 ARVALID" *) input [0:0]S01_AXI_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 AWADDR" *) input [63:0]S01_AXI_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 AWBURST" *) input [1:0]S01_AXI_0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 AWCACHE" *) input [3:0]S01_AXI_0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 AWID" *) input [1:0]S01_AXI_0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 AWLEN" *) input [7:0]S01_AXI_0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 AWLOCK" *) input [0:0]S01_AXI_0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 AWPROT" *) input [2:0]S01_AXI_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 AWQOS" *) input [3:0]S01_AXI_0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 AWREADY" *) output [0:0]S01_AXI_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 AWREGION" *) input [3:0]S01_AXI_0_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 AWSIZE" *) input [2:0]S01_AXI_0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 AWVALID" *) input [0:0]S01_AXI_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 BID" *) output [1:0]S01_AXI_0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 BREADY" *) input [0:0]S01_AXI_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 BRESP" *) output [1:0]S01_AXI_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 BVALID" *) output [0:0]S01_AXI_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 RDATA" *) output [31:0]S01_AXI_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 RID" *) output [1:0]S01_AXI_0_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 RLAST" *) output [0:0]S01_AXI_0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 RREADY" *) input [0:0]S01_AXI_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 RRESP" *) output [1:0]S01_AXI_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 RVALID" *) output [0:0]S01_AXI_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 WDATA" *) input [31:0]S01_AXI_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 WLAST" *) input [0:0]S01_AXI_0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 WREADY" *) output [0:0]S01_AXI_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 WSTRB" *) input [3:0]S01_AXI_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI_0 WVALID" *) input [0:0]S01_AXI_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S02_AXI_0, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]S02_AXI_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 ARBURST" *) input [1:0]S02_AXI_0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 ARCACHE" *) input [3:0]S02_AXI_0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 ARID" *) input [1:0]S02_AXI_0_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 ARLEN" *) input [7:0]S02_AXI_0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 ARLOCK" *) input [0:0]S02_AXI_0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 ARPROT" *) input [2:0]S02_AXI_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 ARQOS" *) input [3:0]S02_AXI_0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 ARREADY" *) output [0:0]S02_AXI_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 ARREGION" *) input [3:0]S02_AXI_0_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 ARSIZE" *) input [2:0]S02_AXI_0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 ARVALID" *) input [0:0]S02_AXI_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 AWADDR" *) input [63:0]S02_AXI_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 AWBURST" *) input [1:0]S02_AXI_0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 AWCACHE" *) input [3:0]S02_AXI_0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 AWID" *) input [1:0]S02_AXI_0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 AWLEN" *) input [7:0]S02_AXI_0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 AWLOCK" *) input [0:0]S02_AXI_0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 AWPROT" *) input [2:0]S02_AXI_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 AWQOS" *) input [3:0]S02_AXI_0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 AWREADY" *) output [0:0]S02_AXI_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 AWREGION" *) input [3:0]S02_AXI_0_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 AWSIZE" *) input [2:0]S02_AXI_0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 AWVALID" *) input [0:0]S02_AXI_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 BID" *) output [1:0]S02_AXI_0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 BREADY" *) input [0:0]S02_AXI_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 BRESP" *) output [1:0]S02_AXI_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 BVALID" *) output [0:0]S02_AXI_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 RDATA" *) output [31:0]S02_AXI_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 RID" *) output [1:0]S02_AXI_0_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 RLAST" *) output [0:0]S02_AXI_0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 RREADY" *) input [0:0]S02_AXI_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 RRESP" *) output [1:0]S02_AXI_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 RVALID" *) output [0:0]S02_AXI_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 WDATA" *) input [31:0]S02_AXI_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 WLAST" *) input [0:0]S02_AXI_0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 WREADY" *) output [0:0]S02_AXI_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 WSTRB" *) input [3:0]S02_AXI_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI_0 WVALID" *) input [0:0]S02_AXI_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S03_AXI_0, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]S03_AXI_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 ARBURST" *) input [1:0]S03_AXI_0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 ARCACHE" *) input [3:0]S03_AXI_0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 ARID" *) input [1:0]S03_AXI_0_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 ARLEN" *) input [7:0]S03_AXI_0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 ARLOCK" *) input [0:0]S03_AXI_0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 ARPROT" *) input [2:0]S03_AXI_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 ARQOS" *) input [3:0]S03_AXI_0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 ARREADY" *) output [0:0]S03_AXI_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 ARREGION" *) input [3:0]S03_AXI_0_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 ARSIZE" *) input [2:0]S03_AXI_0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 ARVALID" *) input [0:0]S03_AXI_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 AWADDR" *) input [63:0]S03_AXI_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 AWBURST" *) input [1:0]S03_AXI_0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 AWCACHE" *) input [3:0]S03_AXI_0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 AWID" *) input [1:0]S03_AXI_0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 AWLEN" *) input [7:0]S03_AXI_0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 AWLOCK" *) input [0:0]S03_AXI_0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 AWPROT" *) input [2:0]S03_AXI_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 AWQOS" *) input [3:0]S03_AXI_0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 AWREADY" *) output [0:0]S03_AXI_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 AWREGION" *) input [3:0]S03_AXI_0_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 AWSIZE" *) input [2:0]S03_AXI_0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 AWVALID" *) input [0:0]S03_AXI_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 BID" *) output [1:0]S03_AXI_0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 BREADY" *) input [0:0]S03_AXI_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 BRESP" *) output [1:0]S03_AXI_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 BVALID" *) output [0:0]S03_AXI_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 RDATA" *) output [31:0]S03_AXI_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 RID" *) output [1:0]S03_AXI_0_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 RLAST" *) output [0:0]S03_AXI_0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 RREADY" *) input [0:0]S03_AXI_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 RRESP" *) output [1:0]S03_AXI_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 RVALID" *) output [0:0]S03_AXI_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 WDATA" *) input [31:0]S03_AXI_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 WLAST" *) input [0:0]S03_AXI_0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 WREADY" *) output [0:0]S03_AXI_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 WSTRB" *) input [3:0]S03_AXI_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI_0 WVALID" *) input [0:0]S03_AXI_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AXI_CLK_IN_0_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AXI_CLK_IN_0_0, ASSOCIATED_RESET axi_rst_in_0_n_0, CLK_DOMAIN axi_noc_axi_clk_in_0_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input axi_clk_in_0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AXI_RST_IN_0_N_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AXI_RST_IN_0_N_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input axi_rst_in_0_n_0;

  wire [63:0]S00_AXI_0_araddr;
  wire [1:0]S00_AXI_0_arburst;
  wire [3:0]S00_AXI_0_arcache;
  wire [1:0]S00_AXI_0_arid;
  wire [7:0]S00_AXI_0_arlen;
  wire [0:0]S00_AXI_0_arlock;
  wire [2:0]S00_AXI_0_arprot;
  wire [3:0]S00_AXI_0_arqos;
  wire [0:0]S00_AXI_0_arready;
  wire [3:0]S00_AXI_0_arregion;
  wire [2:0]S00_AXI_0_arsize;
  wire [0:0]S00_AXI_0_arvalid;
  wire [63:0]S00_AXI_0_awaddr;
  wire [1:0]S00_AXI_0_awburst;
  wire [3:0]S00_AXI_0_awcache;
  wire [1:0]S00_AXI_0_awid;
  wire [7:0]S00_AXI_0_awlen;
  wire [0:0]S00_AXI_0_awlock;
  wire [2:0]S00_AXI_0_awprot;
  wire [3:0]S00_AXI_0_awqos;
  wire [0:0]S00_AXI_0_awready;
  wire [3:0]S00_AXI_0_awregion;
  wire [2:0]S00_AXI_0_awsize;
  wire [0:0]S00_AXI_0_awvalid;
  wire [1:0]S00_AXI_0_bid;
  wire [0:0]S00_AXI_0_bready;
  wire [1:0]S00_AXI_0_bresp;
  wire [0:0]S00_AXI_0_bvalid;
  wire [31:0]S00_AXI_0_rdata;
  wire [1:0]S00_AXI_0_rid;
  wire [0:0]S00_AXI_0_rlast;
  wire [0:0]S00_AXI_0_rready;
  wire [1:0]S00_AXI_0_rresp;
  wire [0:0]S00_AXI_0_rvalid;
  wire [31:0]S00_AXI_0_wdata;
  wire [0:0]S00_AXI_0_wlast;
  wire [0:0]S00_AXI_0_wready;
  wire [3:0]S00_AXI_0_wstrb;
  wire [0:0]S00_AXI_0_wvalid;
  wire [63:0]S01_AXI_0_araddr;
  wire [1:0]S01_AXI_0_arburst;
  wire [3:0]S01_AXI_0_arcache;
  wire [1:0]S01_AXI_0_arid;
  wire [7:0]S01_AXI_0_arlen;
  wire [0:0]S01_AXI_0_arlock;
  wire [2:0]S01_AXI_0_arprot;
  wire [3:0]S01_AXI_0_arqos;
  wire [0:0]S01_AXI_0_arready;
  wire [3:0]S01_AXI_0_arregion;
  wire [2:0]S01_AXI_0_arsize;
  wire [0:0]S01_AXI_0_arvalid;
  wire [63:0]S01_AXI_0_awaddr;
  wire [1:0]S01_AXI_0_awburst;
  wire [3:0]S01_AXI_0_awcache;
  wire [1:0]S01_AXI_0_awid;
  wire [7:0]S01_AXI_0_awlen;
  wire [0:0]S01_AXI_0_awlock;
  wire [2:0]S01_AXI_0_awprot;
  wire [3:0]S01_AXI_0_awqos;
  wire [0:0]S01_AXI_0_awready;
  wire [3:0]S01_AXI_0_awregion;
  wire [2:0]S01_AXI_0_awsize;
  wire [0:0]S01_AXI_0_awvalid;
  wire [1:0]S01_AXI_0_bid;
  wire [0:0]S01_AXI_0_bready;
  wire [1:0]S01_AXI_0_bresp;
  wire [0:0]S01_AXI_0_bvalid;
  wire [31:0]S01_AXI_0_rdata;
  wire [1:0]S01_AXI_0_rid;
  wire [0:0]S01_AXI_0_rlast;
  wire [0:0]S01_AXI_0_rready;
  wire [1:0]S01_AXI_0_rresp;
  wire [0:0]S01_AXI_0_rvalid;
  wire [31:0]S01_AXI_0_wdata;
  wire [0:0]S01_AXI_0_wlast;
  wire [0:0]S01_AXI_0_wready;
  wire [3:0]S01_AXI_0_wstrb;
  wire [0:0]S01_AXI_0_wvalid;
  wire [63:0]S02_AXI_0_araddr;
  wire [1:0]S02_AXI_0_arburst;
  wire [3:0]S02_AXI_0_arcache;
  wire [1:0]S02_AXI_0_arid;
  wire [7:0]S02_AXI_0_arlen;
  wire [0:0]S02_AXI_0_arlock;
  wire [2:0]S02_AXI_0_arprot;
  wire [3:0]S02_AXI_0_arqos;
  wire [0:0]S02_AXI_0_arready;
  wire [3:0]S02_AXI_0_arregion;
  wire [2:0]S02_AXI_0_arsize;
  wire [0:0]S02_AXI_0_arvalid;
  wire [63:0]S02_AXI_0_awaddr;
  wire [1:0]S02_AXI_0_awburst;
  wire [3:0]S02_AXI_0_awcache;
  wire [1:0]S02_AXI_0_awid;
  wire [7:0]S02_AXI_0_awlen;
  wire [0:0]S02_AXI_0_awlock;
  wire [2:0]S02_AXI_0_awprot;
  wire [3:0]S02_AXI_0_awqos;
  wire [0:0]S02_AXI_0_awready;
  wire [3:0]S02_AXI_0_awregion;
  wire [2:0]S02_AXI_0_awsize;
  wire [0:0]S02_AXI_0_awvalid;
  wire [1:0]S02_AXI_0_bid;
  wire [0:0]S02_AXI_0_bready;
  wire [1:0]S02_AXI_0_bresp;
  wire [0:0]S02_AXI_0_bvalid;
  wire [31:0]S02_AXI_0_rdata;
  wire [1:0]S02_AXI_0_rid;
  wire [0:0]S02_AXI_0_rlast;
  wire [0:0]S02_AXI_0_rready;
  wire [1:0]S02_AXI_0_rresp;
  wire [0:0]S02_AXI_0_rvalid;
  wire [31:0]S02_AXI_0_wdata;
  wire [0:0]S02_AXI_0_wlast;
  wire [0:0]S02_AXI_0_wready;
  wire [3:0]S02_AXI_0_wstrb;
  wire [0:0]S02_AXI_0_wvalid;
  wire [63:0]S03_AXI_0_araddr;
  wire [1:0]S03_AXI_0_arburst;
  wire [3:0]S03_AXI_0_arcache;
  wire [1:0]S03_AXI_0_arid;
  wire [7:0]S03_AXI_0_arlen;
  wire [0:0]S03_AXI_0_arlock;
  wire [2:0]S03_AXI_0_arprot;
  wire [3:0]S03_AXI_0_arqos;
  wire [0:0]S03_AXI_0_arready;
  wire [3:0]S03_AXI_0_arregion;
  wire [2:0]S03_AXI_0_arsize;
  wire [0:0]S03_AXI_0_arvalid;
  wire [63:0]S03_AXI_0_awaddr;
  wire [1:0]S03_AXI_0_awburst;
  wire [3:0]S03_AXI_0_awcache;
  wire [1:0]S03_AXI_0_awid;
  wire [7:0]S03_AXI_0_awlen;
  wire [0:0]S03_AXI_0_awlock;
  wire [2:0]S03_AXI_0_awprot;
  wire [3:0]S03_AXI_0_awqos;
  wire [0:0]S03_AXI_0_awready;
  wire [3:0]S03_AXI_0_awregion;
  wire [2:0]S03_AXI_0_awsize;
  wire [0:0]S03_AXI_0_awvalid;
  wire [1:0]S03_AXI_0_bid;
  wire [0:0]S03_AXI_0_bready;
  wire [1:0]S03_AXI_0_bresp;
  wire [0:0]S03_AXI_0_bvalid;
  wire [31:0]S03_AXI_0_rdata;
  wire [1:0]S03_AXI_0_rid;
  wire [0:0]S03_AXI_0_rlast;
  wire [0:0]S03_AXI_0_rready;
  wire [1:0]S03_AXI_0_rresp;
  wire [0:0]S03_AXI_0_rvalid;
  wire [31:0]S03_AXI_0_wdata;
  wire [0:0]S03_AXI_0_wlast;
  wire [0:0]S03_AXI_0_wready;
  wire [3:0]S03_AXI_0_wstrb;
  wire [0:0]S03_AXI_0_wvalid;
  wire [20:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [20:0]axi_bram_ctrl_1_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_1_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_1_BRAM_PORTA_EN;
  wire axi_bram_ctrl_1_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_1_BRAM_PORTA_WE;
  wire axi_clk_in_0_0;
  wire [63:0]axi_noc_0_M00_AXI_ARADDR;
  wire [1:0]axi_noc_0_M00_AXI_ARBURST;
  wire [3:0]axi_noc_0_M00_AXI_ARCACHE;
  wire [1:0]axi_noc_0_M00_AXI_ARID;
  wire [7:0]axi_noc_0_M00_AXI_ARLEN;
  wire [0:0]axi_noc_0_M00_AXI_ARLOCK;
  wire [2:0]axi_noc_0_M00_AXI_ARPROT;
  wire axi_noc_0_M00_AXI_ARREADY;
  wire [2:0]axi_noc_0_M00_AXI_ARSIZE;
  wire [0:0]axi_noc_0_M00_AXI_ARVALID;
  wire [63:0]axi_noc_0_M00_AXI_AWADDR;
  wire [1:0]axi_noc_0_M00_AXI_AWBURST;
  wire [3:0]axi_noc_0_M00_AXI_AWCACHE;
  wire [1:0]axi_noc_0_M00_AXI_AWID;
  wire [7:0]axi_noc_0_M00_AXI_AWLEN;
  wire [0:0]axi_noc_0_M00_AXI_AWLOCK;
  wire [2:0]axi_noc_0_M00_AXI_AWPROT;
  wire axi_noc_0_M00_AXI_AWREADY;
  wire [2:0]axi_noc_0_M00_AXI_AWSIZE;
  wire [0:0]axi_noc_0_M00_AXI_AWVALID;
  wire [1:0]axi_noc_0_M00_AXI_BID;
  wire [0:0]axi_noc_0_M00_AXI_BREADY;
  wire [1:0]axi_noc_0_M00_AXI_BRESP;
  wire axi_noc_0_M00_AXI_BVALID;
  wire [31:0]axi_noc_0_M00_AXI_RDATA;
  wire [1:0]axi_noc_0_M00_AXI_RID;
  wire axi_noc_0_M00_AXI_RLAST;
  wire [0:0]axi_noc_0_M00_AXI_RREADY;
  wire [1:0]axi_noc_0_M00_AXI_RRESP;
  wire axi_noc_0_M00_AXI_RVALID;
  wire [31:0]axi_noc_0_M00_AXI_WDATA;
  wire [0:0]axi_noc_0_M00_AXI_WLAST;
  wire axi_noc_0_M00_AXI_WREADY;
  wire [3:0]axi_noc_0_M00_AXI_WSTRB;
  wire [0:0]axi_noc_0_M00_AXI_WVALID;
  wire [63:0]axi_noc_0_M01_AXI_ARADDR;
  wire [1:0]axi_noc_0_M01_AXI_ARBURST;
  wire [3:0]axi_noc_0_M01_AXI_ARCACHE;
  wire [1:0]axi_noc_0_M01_AXI_ARID;
  wire [7:0]axi_noc_0_M01_AXI_ARLEN;
  wire [0:0]axi_noc_0_M01_AXI_ARLOCK;
  wire [2:0]axi_noc_0_M01_AXI_ARPROT;
  wire axi_noc_0_M01_AXI_ARREADY;
  wire [2:0]axi_noc_0_M01_AXI_ARSIZE;
  wire [0:0]axi_noc_0_M01_AXI_ARVALID;
  wire [63:0]axi_noc_0_M01_AXI_AWADDR;
  wire [1:0]axi_noc_0_M01_AXI_AWBURST;
  wire [3:0]axi_noc_0_M01_AXI_AWCACHE;
  wire [1:0]axi_noc_0_M01_AXI_AWID;
  wire [7:0]axi_noc_0_M01_AXI_AWLEN;
  wire [0:0]axi_noc_0_M01_AXI_AWLOCK;
  wire [2:0]axi_noc_0_M01_AXI_AWPROT;
  wire axi_noc_0_M01_AXI_AWREADY;
  wire [2:0]axi_noc_0_M01_AXI_AWSIZE;
  wire [0:0]axi_noc_0_M01_AXI_AWVALID;
  wire [1:0]axi_noc_0_M01_AXI_BID;
  wire [0:0]axi_noc_0_M01_AXI_BREADY;
  wire [1:0]axi_noc_0_M01_AXI_BRESP;
  wire axi_noc_0_M01_AXI_BVALID;
  wire [31:0]axi_noc_0_M01_AXI_RDATA;
  wire [1:0]axi_noc_0_M01_AXI_RID;
  wire axi_noc_0_M01_AXI_RLAST;
  wire [0:0]axi_noc_0_M01_AXI_RREADY;
  wire [1:0]axi_noc_0_M01_AXI_RRESP;
  wire axi_noc_0_M01_AXI_RVALID;
  wire [31:0]axi_noc_0_M01_AXI_WDATA;
  wire [0:0]axi_noc_0_M01_AXI_WLAST;
  wire axi_noc_0_M01_AXI_WREADY;
  wire [3:0]axi_noc_0_M01_AXI_WSTRB;
  wire [0:0]axi_noc_0_M01_AXI_WVALID;
  wire axi_rst_in_0_n_0;
  wire noc_clk_gen_axi_clk_0;
  wire noc_clk_gen_axi_rst_0_n;

  axi_noc_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(noc_clk_gen_axi_clk_0),
        .s_axi_araddr(axi_noc_0_M00_AXI_ARADDR[20:0]),
        .s_axi_arburst(axi_noc_0_M00_AXI_ARBURST),
        .s_axi_arcache(axi_noc_0_M00_AXI_ARCACHE),
        .s_axi_aresetn(noc_clk_gen_axi_rst_0_n),
        .s_axi_arid(axi_noc_0_M00_AXI_ARID),
        .s_axi_arlen(axi_noc_0_M00_AXI_ARLEN),
        .s_axi_arlock(axi_noc_0_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_noc_0_M00_AXI_ARPROT),
        .s_axi_arready(axi_noc_0_M00_AXI_ARREADY),
        .s_axi_arsize(axi_noc_0_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_noc_0_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_noc_0_M00_AXI_AWADDR[20:0]),
        .s_axi_awburst(axi_noc_0_M00_AXI_AWBURST),
        .s_axi_awcache(axi_noc_0_M00_AXI_AWCACHE),
        .s_axi_awid(axi_noc_0_M00_AXI_AWID),
        .s_axi_awlen(axi_noc_0_M00_AXI_AWLEN),
        .s_axi_awlock(axi_noc_0_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_noc_0_M00_AXI_AWPROT),
        .s_axi_awready(axi_noc_0_M00_AXI_AWREADY),
        .s_axi_awsize(axi_noc_0_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_noc_0_M00_AXI_AWVALID),
        .s_axi_bid(axi_noc_0_M00_AXI_BID),
        .s_axi_bready(axi_noc_0_M00_AXI_BREADY),
        .s_axi_bresp(axi_noc_0_M00_AXI_BRESP),
        .s_axi_bvalid(axi_noc_0_M00_AXI_BVALID),
        .s_axi_rdata(axi_noc_0_M00_AXI_RDATA),
        .s_axi_rid(axi_noc_0_M00_AXI_RID),
        .s_axi_rlast(axi_noc_0_M00_AXI_RLAST),
        .s_axi_rready(axi_noc_0_M00_AXI_RREADY),
        .s_axi_rresp(axi_noc_0_M00_AXI_RRESP),
        .s_axi_rvalid(axi_noc_0_M00_AXI_RVALID),
        .s_axi_wdata(axi_noc_0_M00_AXI_WDATA),
        .s_axi_wlast(axi_noc_0_M00_AXI_WLAST),
        .s_axi_wready(axi_noc_0_M00_AXI_WREADY),
        .s_axi_wstrb(axi_noc_0_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_noc_0_M00_AXI_WVALID));
  axi_noc_axi_bram_ctrl_1_0 axi_bram_ctrl_1
       (.bram_addr_a(axi_bram_ctrl_1_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_1_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .s_axi_aclk(noc_clk_gen_axi_clk_0),
        .s_axi_araddr(axi_noc_0_M01_AXI_ARADDR[20:0]),
        .s_axi_arburst(axi_noc_0_M01_AXI_ARBURST),
        .s_axi_arcache(axi_noc_0_M01_AXI_ARCACHE),
        .s_axi_aresetn(noc_clk_gen_axi_rst_0_n),
        .s_axi_arid(axi_noc_0_M01_AXI_ARID),
        .s_axi_arlen(axi_noc_0_M01_AXI_ARLEN),
        .s_axi_arlock(axi_noc_0_M01_AXI_ARLOCK),
        .s_axi_arprot(axi_noc_0_M01_AXI_ARPROT),
        .s_axi_arready(axi_noc_0_M01_AXI_ARREADY),
        .s_axi_arsize(axi_noc_0_M01_AXI_ARSIZE),
        .s_axi_arvalid(axi_noc_0_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_noc_0_M01_AXI_AWADDR[20:0]),
        .s_axi_awburst(axi_noc_0_M01_AXI_AWBURST),
        .s_axi_awcache(axi_noc_0_M01_AXI_AWCACHE),
        .s_axi_awid(axi_noc_0_M01_AXI_AWID),
        .s_axi_awlen(axi_noc_0_M01_AXI_AWLEN),
        .s_axi_awlock(axi_noc_0_M01_AXI_AWLOCK),
        .s_axi_awprot(axi_noc_0_M01_AXI_AWPROT),
        .s_axi_awready(axi_noc_0_M01_AXI_AWREADY),
        .s_axi_awsize(axi_noc_0_M01_AXI_AWSIZE),
        .s_axi_awvalid(axi_noc_0_M01_AXI_AWVALID),
        .s_axi_bid(axi_noc_0_M01_AXI_BID),
        .s_axi_bready(axi_noc_0_M01_AXI_BREADY),
        .s_axi_bresp(axi_noc_0_M01_AXI_BRESP),
        .s_axi_bvalid(axi_noc_0_M01_AXI_BVALID),
        .s_axi_rdata(axi_noc_0_M01_AXI_RDATA),
        .s_axi_rid(axi_noc_0_M01_AXI_RID),
        .s_axi_rlast(axi_noc_0_M01_AXI_RLAST),
        .s_axi_rready(axi_noc_0_M01_AXI_RREADY),
        .s_axi_rresp(axi_noc_0_M01_AXI_RRESP),
        .s_axi_rvalid(axi_noc_0_M01_AXI_RVALID),
        .s_axi_wdata(axi_noc_0_M01_AXI_WDATA),
        .s_axi_wlast(axi_noc_0_M01_AXI_WLAST),
        .s_axi_wready(axi_noc_0_M01_AXI_WREADY),
        .s_axi_wstrb(axi_noc_0_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_noc_0_M01_AXI_WVALID));
  axi_noc_axi_noc_0_0 axi_noc_0
       (.M00_AXI_araddr(axi_noc_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_noc_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_noc_0_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_noc_0_M00_AXI_ARID),
        .M00_AXI_arlen(axi_noc_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_noc_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_noc_0_M00_AXI_ARPROT),
        .M00_AXI_arready(axi_noc_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_noc_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_noc_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_noc_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_noc_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_noc_0_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_noc_0_M00_AXI_AWID),
        .M00_AXI_awlen(axi_noc_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_noc_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_noc_0_M00_AXI_AWPROT),
        .M00_AXI_awready(axi_noc_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_noc_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_noc_0_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_noc_0_M00_AXI_BID),
        .M00_AXI_bready(axi_noc_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_noc_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_noc_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_noc_0_M00_AXI_RDATA),
        .M00_AXI_rid(axi_noc_0_M00_AXI_RID),
        .M00_AXI_rlast(axi_noc_0_M00_AXI_RLAST),
        .M00_AXI_rready(axi_noc_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_noc_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_noc_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_noc_0_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_noc_0_M00_AXI_WLAST),
        .M00_AXI_wready(axi_noc_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_noc_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_noc_0_M00_AXI_WVALID),
        .M01_AXI_araddr(axi_noc_0_M01_AXI_ARADDR),
        .M01_AXI_arburst(axi_noc_0_M01_AXI_ARBURST),
        .M01_AXI_arcache(axi_noc_0_M01_AXI_ARCACHE),
        .M01_AXI_arid(axi_noc_0_M01_AXI_ARID),
        .M01_AXI_arlen(axi_noc_0_M01_AXI_ARLEN),
        .M01_AXI_arlock(axi_noc_0_M01_AXI_ARLOCK),
        .M01_AXI_arprot(axi_noc_0_M01_AXI_ARPROT),
        .M01_AXI_arready(axi_noc_0_M01_AXI_ARREADY),
        .M01_AXI_arsize(axi_noc_0_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(axi_noc_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_noc_0_M01_AXI_AWADDR),
        .M01_AXI_awburst(axi_noc_0_M01_AXI_AWBURST),
        .M01_AXI_awcache(axi_noc_0_M01_AXI_AWCACHE),
        .M01_AXI_awid(axi_noc_0_M01_AXI_AWID),
        .M01_AXI_awlen(axi_noc_0_M01_AXI_AWLEN),
        .M01_AXI_awlock(axi_noc_0_M01_AXI_AWLOCK),
        .M01_AXI_awprot(axi_noc_0_M01_AXI_AWPROT),
        .M01_AXI_awready(axi_noc_0_M01_AXI_AWREADY),
        .M01_AXI_awsize(axi_noc_0_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(axi_noc_0_M01_AXI_AWVALID),
        .M01_AXI_bid(axi_noc_0_M01_AXI_BID),
        .M01_AXI_bready(axi_noc_0_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_noc_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_noc_0_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_noc_0_M01_AXI_RDATA),
        .M01_AXI_rid(axi_noc_0_M01_AXI_RID),
        .M01_AXI_rlast(axi_noc_0_M01_AXI_RLAST),
        .M01_AXI_rready(axi_noc_0_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_noc_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_noc_0_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_noc_0_M01_AXI_WDATA),
        .M01_AXI_wlast(axi_noc_0_M01_AXI_WLAST),
        .M01_AXI_wready(axi_noc_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_noc_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_noc_0_M01_AXI_WVALID),
        .S00_AXI_araddr(S00_AXI_0_araddr),
        .S00_AXI_arburst(S00_AXI_0_arburst),
        .S00_AXI_arcache(S00_AXI_0_arcache),
        .S00_AXI_arid(S00_AXI_0_arid),
        .S00_AXI_arlen(S00_AXI_0_arlen),
        .S00_AXI_arlock(S00_AXI_0_arlock),
        .S00_AXI_arprot(S00_AXI_0_arprot),
        .S00_AXI_arqos(S00_AXI_0_arqos),
        .S00_AXI_arready(S00_AXI_0_arready),
        .S00_AXI_arregion(S00_AXI_0_arregion),
        .S00_AXI_arsize(S00_AXI_0_arsize),
        .S00_AXI_arvalid(S00_AXI_0_arvalid),
        .S00_AXI_awaddr(S00_AXI_0_awaddr),
        .S00_AXI_awburst(S00_AXI_0_awburst),
        .S00_AXI_awcache(S00_AXI_0_awcache),
        .S00_AXI_awid(S00_AXI_0_awid),
        .S00_AXI_awlen(S00_AXI_0_awlen),
        .S00_AXI_awlock(S00_AXI_0_awlock),
        .S00_AXI_awprot(S00_AXI_0_awprot),
        .S00_AXI_awqos(S00_AXI_0_awqos),
        .S00_AXI_awready(S00_AXI_0_awready),
        .S00_AXI_awregion(S00_AXI_0_awregion),
        .S00_AXI_awsize(S00_AXI_0_awsize),
        .S00_AXI_awvalid(S00_AXI_0_awvalid),
        .S00_AXI_bid(S00_AXI_0_bid),
        .S00_AXI_bready(S00_AXI_0_bready),
        .S00_AXI_bresp(S00_AXI_0_bresp),
        .S00_AXI_bvalid(S00_AXI_0_bvalid),
        .S00_AXI_rdata(S00_AXI_0_rdata),
        .S00_AXI_rid(S00_AXI_0_rid),
        .S00_AXI_rlast(S00_AXI_0_rlast),
        .S00_AXI_rready(S00_AXI_0_rready),
        .S00_AXI_rresp(S00_AXI_0_rresp),
        .S00_AXI_rvalid(S00_AXI_0_rvalid),
        .S00_AXI_wdata(S00_AXI_0_wdata),
        .S00_AXI_wlast(S00_AXI_0_wlast),
        .S00_AXI_wready(S00_AXI_0_wready),
        .S00_AXI_wstrb(S00_AXI_0_wstrb),
        .S00_AXI_wvalid(S00_AXI_0_wvalid),
        .S01_AXI_araddr(S01_AXI_0_araddr),
        .S01_AXI_arburst(S01_AXI_0_arburst),
        .S01_AXI_arcache(S01_AXI_0_arcache),
        .S01_AXI_arid(S01_AXI_0_arid),
        .S01_AXI_arlen(S01_AXI_0_arlen),
        .S01_AXI_arlock(S01_AXI_0_arlock),
        .S01_AXI_arprot(S01_AXI_0_arprot),
        .S01_AXI_arqos(S01_AXI_0_arqos),
        .S01_AXI_arready(S01_AXI_0_arready),
        .S01_AXI_arregion(S01_AXI_0_arregion),
        .S01_AXI_arsize(S01_AXI_0_arsize),
        .S01_AXI_arvalid(S01_AXI_0_arvalid),
        .S01_AXI_awaddr(S01_AXI_0_awaddr),
        .S01_AXI_awburst(S01_AXI_0_awburst),
        .S01_AXI_awcache(S01_AXI_0_awcache),
        .S01_AXI_awid(S01_AXI_0_awid),
        .S01_AXI_awlen(S01_AXI_0_awlen),
        .S01_AXI_awlock(S01_AXI_0_awlock),
        .S01_AXI_awprot(S01_AXI_0_awprot),
        .S01_AXI_awqos(S01_AXI_0_awqos),
        .S01_AXI_awready(S01_AXI_0_awready),
        .S01_AXI_awregion(S01_AXI_0_awregion),
        .S01_AXI_awsize(S01_AXI_0_awsize),
        .S01_AXI_awvalid(S01_AXI_0_awvalid),
        .S01_AXI_bid(S01_AXI_0_bid),
        .S01_AXI_bready(S01_AXI_0_bready),
        .S01_AXI_bresp(S01_AXI_0_bresp),
        .S01_AXI_bvalid(S01_AXI_0_bvalid),
        .S01_AXI_rdata(S01_AXI_0_rdata),
        .S01_AXI_rid(S01_AXI_0_rid),
        .S01_AXI_rlast(S01_AXI_0_rlast),
        .S01_AXI_rready(S01_AXI_0_rready),
        .S01_AXI_rresp(S01_AXI_0_rresp),
        .S01_AXI_rvalid(S01_AXI_0_rvalid),
        .S01_AXI_wdata(S01_AXI_0_wdata),
        .S01_AXI_wlast(S01_AXI_0_wlast),
        .S01_AXI_wready(S01_AXI_0_wready),
        .S01_AXI_wstrb(S01_AXI_0_wstrb),
        .S01_AXI_wvalid(S01_AXI_0_wvalid),
        .S02_AXI_araddr(S02_AXI_0_araddr),
        .S02_AXI_arburst(S02_AXI_0_arburst),
        .S02_AXI_arcache(S02_AXI_0_arcache),
        .S02_AXI_arid(S02_AXI_0_arid),
        .S02_AXI_arlen(S02_AXI_0_arlen),
        .S02_AXI_arlock(S02_AXI_0_arlock),
        .S02_AXI_arprot(S02_AXI_0_arprot),
        .S02_AXI_arqos(S02_AXI_0_arqos),
        .S02_AXI_arready(S02_AXI_0_arready),
        .S02_AXI_arregion(S02_AXI_0_arregion),
        .S02_AXI_arsize(S02_AXI_0_arsize),
        .S02_AXI_arvalid(S02_AXI_0_arvalid),
        .S02_AXI_awaddr(S02_AXI_0_awaddr),
        .S02_AXI_awburst(S02_AXI_0_awburst),
        .S02_AXI_awcache(S02_AXI_0_awcache),
        .S02_AXI_awid(S02_AXI_0_awid),
        .S02_AXI_awlen(S02_AXI_0_awlen),
        .S02_AXI_awlock(S02_AXI_0_awlock),
        .S02_AXI_awprot(S02_AXI_0_awprot),
        .S02_AXI_awqos(S02_AXI_0_awqos),
        .S02_AXI_awready(S02_AXI_0_awready),
        .S02_AXI_awregion(S02_AXI_0_awregion),
        .S02_AXI_awsize(S02_AXI_0_awsize),
        .S02_AXI_awvalid(S02_AXI_0_awvalid),
        .S02_AXI_bid(S02_AXI_0_bid),
        .S02_AXI_bready(S02_AXI_0_bready),
        .S02_AXI_bresp(S02_AXI_0_bresp),
        .S02_AXI_bvalid(S02_AXI_0_bvalid),
        .S02_AXI_rdata(S02_AXI_0_rdata),
        .S02_AXI_rid(S02_AXI_0_rid),
        .S02_AXI_rlast(S02_AXI_0_rlast),
        .S02_AXI_rready(S02_AXI_0_rready),
        .S02_AXI_rresp(S02_AXI_0_rresp),
        .S02_AXI_rvalid(S02_AXI_0_rvalid),
        .S02_AXI_wdata(S02_AXI_0_wdata),
        .S02_AXI_wlast(S02_AXI_0_wlast),
        .S02_AXI_wready(S02_AXI_0_wready),
        .S02_AXI_wstrb(S02_AXI_0_wstrb),
        .S02_AXI_wvalid(S02_AXI_0_wvalid),
        .S03_AXI_araddr(S03_AXI_0_araddr),
        .S03_AXI_arburst(S03_AXI_0_arburst),
        .S03_AXI_arcache(S03_AXI_0_arcache),
        .S03_AXI_arid(S03_AXI_0_arid),
        .S03_AXI_arlen(S03_AXI_0_arlen),
        .S03_AXI_arlock(S03_AXI_0_arlock),
        .S03_AXI_arprot(S03_AXI_0_arprot),
        .S03_AXI_arqos(S03_AXI_0_arqos),
        .S03_AXI_arready(S03_AXI_0_arready),
        .S03_AXI_arregion(S03_AXI_0_arregion),
        .S03_AXI_arsize(S03_AXI_0_arsize),
        .S03_AXI_arvalid(S03_AXI_0_arvalid),
        .S03_AXI_awaddr(S03_AXI_0_awaddr),
        .S03_AXI_awburst(S03_AXI_0_awburst),
        .S03_AXI_awcache(S03_AXI_0_awcache),
        .S03_AXI_awid(S03_AXI_0_awid),
        .S03_AXI_awlen(S03_AXI_0_awlen),
        .S03_AXI_awlock(S03_AXI_0_awlock),
        .S03_AXI_awprot(S03_AXI_0_awprot),
        .S03_AXI_awqos(S03_AXI_0_awqos),
        .S03_AXI_awready(S03_AXI_0_awready),
        .S03_AXI_awregion(S03_AXI_0_awregion),
        .S03_AXI_awsize(S03_AXI_0_awsize),
        .S03_AXI_awvalid(S03_AXI_0_awvalid),
        .S03_AXI_bid(S03_AXI_0_bid),
        .S03_AXI_bready(S03_AXI_0_bready),
        .S03_AXI_bresp(S03_AXI_0_bresp),
        .S03_AXI_bvalid(S03_AXI_0_bvalid),
        .S03_AXI_rdata(S03_AXI_0_rdata),
        .S03_AXI_rid(S03_AXI_0_rid),
        .S03_AXI_rlast(S03_AXI_0_rlast),
        .S03_AXI_rready(S03_AXI_0_rready),
        .S03_AXI_rresp(S03_AXI_0_rresp),
        .S03_AXI_rvalid(S03_AXI_0_rvalid),
        .S03_AXI_wdata(S03_AXI_0_wdata),
        .S03_AXI_wlast(S03_AXI_0_wlast),
        .S03_AXI_wready(S03_AXI_0_wready),
        .S03_AXI_wstrb(S03_AXI_0_wstrb),
        .S03_AXI_wvalid(S03_AXI_0_wvalid),
        .aclk0(noc_clk_gen_axi_clk_0));
  axi_noc_emb_mem_gen_0_0 emb_mem_gen_0
       (.addra(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .regcea(1'b1),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE));
  axi_noc_emb_mem_gen_1_0 emb_mem_gen_1
       (.addra(axi_bram_ctrl_1_BRAM_PORTA_ADDR),
        .clka(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .regcea(1'b1),
        .rsta(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_1_BRAM_PORTA_WE));
  axi_noc_noc_clk_gen_0 noc_clk_gen
       (.axi_clk_0(noc_clk_gen_axi_clk_0),
        .axi_clk_in_0(axi_clk_in_0_0),
        .axi_rst_0_n(noc_clk_gen_axi_rst_0_n),
        .axi_rst_in_0_n(axi_rst_in_0_n_0));
endmodule
