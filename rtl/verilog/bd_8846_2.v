//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_8846.bd
//Design : bd_8846
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_8846,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_8846,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=None}" *) (* HW_HANDOFF = "noc_axi_noc_0_0.hwdef" *) 
module bd_8846
   (M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arregion,
    M00_AXI_arsize,
    M00_AXI_aruser,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awregion,
    M00_AXI_awsize,
    M00_AXI_awuser,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_AXI_araddr,
    M01_AXI_arburst,
    M01_AXI_arcache,
    M01_AXI_arid,
    M01_AXI_arlen,
    M01_AXI_arlock,
    M01_AXI_arprot,
    M01_AXI_arqos,
    M01_AXI_arready,
    M01_AXI_arregion,
    M01_AXI_arsize,
    M01_AXI_aruser,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awburst,
    M01_AXI_awcache,
    M01_AXI_awid,
    M01_AXI_awlen,
    M01_AXI_awlock,
    M01_AXI_awprot,
    M01_AXI_awqos,
    M01_AXI_awready,
    M01_AXI_awregion,
    M01_AXI_awsize,
    M01_AXI_awuser,
    M01_AXI_awvalid,
    M01_AXI_bid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rid,
    M01_AXI_rlast,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wlast,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arid,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arregion,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awregion,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rid,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arid,
    S02_AXI_arlen,
    S02_AXI_arlock,
    S02_AXI_arprot,
    S02_AXI_arqos,
    S02_AXI_arready,
    S02_AXI_arregion,
    S02_AXI_arsize,
    S02_AXI_arvalid,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awid,
    S02_AXI_awlen,
    S02_AXI_awlock,
    S02_AXI_awprot,
    S02_AXI_awqos,
    S02_AXI_awready,
    S02_AXI_awregion,
    S02_AXI_awsize,
    S02_AXI_awvalid,
    S02_AXI_bid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_rdata,
    S02_AXI_rid,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_rvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid,
    S03_AXI_araddr,
    S03_AXI_arburst,
    S03_AXI_arcache,
    S03_AXI_arid,
    S03_AXI_arlen,
    S03_AXI_arlock,
    S03_AXI_arprot,
    S03_AXI_arqos,
    S03_AXI_arready,
    S03_AXI_arregion,
    S03_AXI_arsize,
    S03_AXI_arvalid,
    S03_AXI_awaddr,
    S03_AXI_awburst,
    S03_AXI_awcache,
    S03_AXI_awid,
    S03_AXI_awlen,
    S03_AXI_awlock,
    S03_AXI_awprot,
    S03_AXI_awqos,
    S03_AXI_awready,
    S03_AXI_awregion,
    S03_AXI_awsize,
    S03_AXI_awvalid,
    S03_AXI_bid,
    S03_AXI_bready,
    S03_AXI_bresp,
    S03_AXI_bvalid,
    S03_AXI_rdata,
    S03_AXI_rid,
    S03_AXI_rlast,
    S03_AXI_rready,
    S03_AXI_rresp,
    S03_AXI_rvalid,
    S03_AXI_wdata,
    S03_AXI_wlast,
    S03_AXI_wready,
    S03_AXI_wstrb,
    S03_AXI_wvalid,
    aclk0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, ADDR_WIDTH 64, APERTURES {0x201_0000_0000 1G}, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY pl, CLK_DOMAIN noc_noc_clk_gen_0_axi_clk_0, DATA_WIDTH 64, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NOC_ID -1, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 4, NUM_WRITE_OUTSTANDING 32, NUM_WRITE_THREADS 4, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]M00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST" *) output [1:0]M00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE" *) output [3:0]M00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARID" *) output [1:0]M00_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN" *) output [7:0]M00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK" *) output [0:0]M00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *) output [2:0]M00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS" *) output [3:0]M00_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *) input [0:0]M00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREGION" *) output [3:0]M00_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE" *) output [2:0]M00_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARUSER" *) output [17:0]M00_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *) output [0:0]M00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) output [63:0]M00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST" *) output [1:0]M00_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE" *) output [3:0]M00_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWID" *) output [1:0]M00_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN" *) output [7:0]M00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK" *) output [0:0]M00_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *) output [2:0]M00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS" *) output [3:0]M00_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *) input [0:0]M00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREGION" *) output [3:0]M00_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE" *) output [2:0]M00_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWUSER" *) output [17:0]M00_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *) output [0:0]M00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BID" *) input [1:0]M00_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *) output [0:0]M00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *) input [1:0]M00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *) input [0:0]M00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *) input [63:0]M00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RID" *) input [1:0]M00_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST" *) input [0:0]M00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) output [0:0]M00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *) input [1:0]M00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *) input [0:0]M00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) output [63:0]M00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST" *) output [0:0]M00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *) input [0:0]M00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) output [7:0]M00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *) output [0:0]M00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARADDR" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M01_AXI, ADDR_WIDTH 64, APERTURES {0x201_4000_0000 1G}, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY pl, CLK_DOMAIN noc_noc_clk_gen_0_axi_clk_0, DATA_WIDTH 64, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NOC_ID -1, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 4, NUM_WRITE_OUTSTANDING 32, NUM_WRITE_THREADS 4, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]M01_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARBURST" *) output [1:0]M01_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARCACHE" *) output [3:0]M01_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARID" *) output [1:0]M01_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARLEN" *) output [7:0]M01_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARLOCK" *) output [0:0]M01_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARPROT" *) output [2:0]M01_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARQOS" *) output [3:0]M01_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARREADY" *) input [0:0]M01_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARREGION" *) output [3:0]M01_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARSIZE" *) output [2:0]M01_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARUSER" *) output [17:0]M01_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARVALID" *) output [0:0]M01_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWADDR" *) output [63:0]M01_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWBURST" *) output [1:0]M01_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWCACHE" *) output [3:0]M01_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWID" *) output [1:0]M01_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWLEN" *) output [7:0]M01_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWLOCK" *) output [0:0]M01_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWPROT" *) output [2:0]M01_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWQOS" *) output [3:0]M01_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWREADY" *) input [0:0]M01_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWREGION" *) output [3:0]M01_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWSIZE" *) output [2:0]M01_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWUSER" *) output [17:0]M01_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWVALID" *) output [0:0]M01_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BID" *) input [1:0]M01_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BREADY" *) output [0:0]M01_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BRESP" *) input [1:0]M01_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BVALID" *) input [0:0]M01_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RDATA" *) input [63:0]M01_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RID" *) input [1:0]M01_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RLAST" *) input [0:0]M01_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RREADY" *) output [0:0]M01_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RRESP" *) input [1:0]M01_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RVALID" *) input [0:0]M01_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WDATA" *) output [63:0]M01_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WLAST" *) output [0:0]M01_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WREADY" *) input [0:0]M01_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WSTRB" *) output [7:0]M01_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WVALID" *) output [0:0]M01_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CATEGORY pl, CLK_DOMAIN noc_noc_clk_gen_0_axi_clk_0, CONNECTIONS M01_AXI {read_bw {500} write_bw {500} read_avg_burst {4} write_avg_burst {4} } M00_AXI {read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4} }, DATA_WIDTH 64, DEST_IDS M01_AXI:0x100:M00_AXI:0x80, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]S00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST" *) input [1:0]S00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE" *) input [3:0]S00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARID" *) input [1:0]S00_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN" *) input [7:0]S00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK" *) input [0:0]S00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]S00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS" *) input [3:0]S00_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output [0:0]S00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREGION" *) input [3:0]S00_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE" *) input [2:0]S00_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input [0:0]S00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [63:0]S00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST" *) input [1:0]S00_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE" *) input [3:0]S00_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWID" *) input [1:0]S00_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN" *) input [7:0]S00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK" *) input [0:0]S00_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]S00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS" *) input [3:0]S00_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output [0:0]S00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREGION" *) input [3:0]S00_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE" *) input [2:0]S00_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input [0:0]S00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BID" *) output [1:0]S00_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input [0:0]S00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]S00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output [0:0]S00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [63:0]S00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RID" *) output [1:0]S00_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST" *) output [0:0]S00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input [0:0]S00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]S00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output [0:0]S00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [63:0]S00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST" *) input [0:0]S00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output [0:0]S00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [7:0]S00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input [0:0]S00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S01_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CATEGORY pl, CLK_DOMAIN noc_noc_clk_gen_0_axi_clk_0, CONNECTIONS M01_AXI {read_bw {500} write_bw {500} read_avg_burst {4} write_avg_burst {4} } M00_AXI {read_bw {500} write_bw {500} read_avg_burst {4} write_avg_burst {4} }, DATA_WIDTH 64, DEST_IDS M01_AXI:0x100:M00_AXI:0x80, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]S01_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARBURST" *) input [1:0]S01_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARCACHE" *) input [3:0]S01_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARID" *) input [1:0]S01_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARLEN" *) input [7:0]S01_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARLOCK" *) input [0:0]S01_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARPROT" *) input [2:0]S01_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARQOS" *) input [3:0]S01_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARREADY" *) output [0:0]S01_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARREGION" *) input [3:0]S01_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARSIZE" *) input [2:0]S01_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARVALID" *) input [0:0]S01_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWADDR" *) input [63:0]S01_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWBURST" *) input [1:0]S01_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWCACHE" *) input [3:0]S01_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWID" *) input [1:0]S01_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWLEN" *) input [7:0]S01_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWLOCK" *) input [0:0]S01_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWPROT" *) input [2:0]S01_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWQOS" *) input [3:0]S01_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWREADY" *) output [0:0]S01_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWREGION" *) input [3:0]S01_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWSIZE" *) input [2:0]S01_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWVALID" *) input [0:0]S01_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BID" *) output [1:0]S01_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BREADY" *) input [0:0]S01_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BRESP" *) output [1:0]S01_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BVALID" *) output [0:0]S01_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RDATA" *) output [63:0]S01_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RID" *) output [1:0]S01_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RLAST" *) output [0:0]S01_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RREADY" *) input [0:0]S01_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RRESP" *) output [1:0]S01_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RVALID" *) output [0:0]S01_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WDATA" *) input [63:0]S01_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WLAST" *) input [0:0]S01_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WREADY" *) output [0:0]S01_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WSTRB" *) input [7:0]S01_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WVALID" *) input [0:0]S01_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S02_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CATEGORY pl, CLK_DOMAIN noc_noc_clk_gen_0_axi_clk_0, CONNECTIONS M01_AXI {read_bw {500} write_bw {500} read_avg_burst {4} write_avg_burst {4} } M00_AXI {read_bw {500} write_bw {500} read_avg_burst {4} write_avg_burst {4} }, DATA_WIDTH 64, DEST_IDS M01_AXI:0x100:M00_AXI:0x80, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]S02_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARBURST" *) input [1:0]S02_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARCACHE" *) input [3:0]S02_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARID" *) input [1:0]S02_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARLEN" *) input [7:0]S02_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARLOCK" *) input [0:0]S02_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARPROT" *) input [2:0]S02_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARQOS" *) input [3:0]S02_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARREADY" *) output [0:0]S02_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARREGION" *) input [3:0]S02_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARSIZE" *) input [2:0]S02_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARVALID" *) input [0:0]S02_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWADDR" *) input [63:0]S02_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWBURST" *) input [1:0]S02_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWCACHE" *) input [3:0]S02_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWID" *) input [1:0]S02_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWLEN" *) input [7:0]S02_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWLOCK" *) input [0:0]S02_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWPROT" *) input [2:0]S02_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWQOS" *) input [3:0]S02_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWREADY" *) output [0:0]S02_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWREGION" *) input [3:0]S02_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWSIZE" *) input [2:0]S02_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWVALID" *) input [0:0]S02_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BID" *) output [1:0]S02_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BREADY" *) input [0:0]S02_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BRESP" *) output [1:0]S02_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BVALID" *) output [0:0]S02_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RDATA" *) output [63:0]S02_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RID" *) output [1:0]S02_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RLAST" *) output [0:0]S02_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RREADY" *) input [0:0]S02_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RRESP" *) output [1:0]S02_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RVALID" *) output [0:0]S02_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WDATA" *) input [63:0]S02_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WLAST" *) input [0:0]S02_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WREADY" *) output [0:0]S02_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WSTRB" *) input [7:0]S02_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WVALID" *) input [0:0]S02_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S03_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CATEGORY pl, CLK_DOMAIN noc_noc_clk_gen_0_axi_clk_0, CONNECTIONS M01_AXI {read_bw {500} write_bw {500} read_avg_burst {4} write_avg_burst {4} } M00_AXI {read_bw {500} write_bw {500} read_avg_burst {4} write_avg_burst {4} }, DATA_WIDTH 64, DEST_IDS M01_AXI:0x100:M00_AXI:0x80, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]S03_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARBURST" *) input [1:0]S03_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARCACHE" *) input [3:0]S03_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARID" *) input [1:0]S03_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARLEN" *) input [7:0]S03_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARLOCK" *) input [0:0]S03_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARPROT" *) input [2:0]S03_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARQOS" *) input [3:0]S03_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARREADY" *) output [0:0]S03_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARREGION" *) input [3:0]S03_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARSIZE" *) input [2:0]S03_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARVALID" *) input [0:0]S03_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWADDR" *) input [63:0]S03_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWBURST" *) input [1:0]S03_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWCACHE" *) input [3:0]S03_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWID" *) input [1:0]S03_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWLEN" *) input [7:0]S03_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWLOCK" *) input [0:0]S03_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWPROT" *) input [2:0]S03_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWQOS" *) input [3:0]S03_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWREADY" *) output [0:0]S03_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWREGION" *) input [3:0]S03_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWSIZE" *) input [2:0]S03_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWVALID" *) input [0:0]S03_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI BID" *) output [1:0]S03_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI BREADY" *) input [0:0]S03_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI BRESP" *) output [1:0]S03_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI BVALID" *) output [0:0]S03_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RDATA" *) output [63:0]S03_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RID" *) output [1:0]S03_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RLAST" *) output [0:0]S03_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RREADY" *) input [0:0]S03_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RRESP" *) output [1:0]S03_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RVALID" *) output [0:0]S03_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WDATA" *) input [63:0]S03_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WLAST" *) input [0:0]S03_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WREADY" *) output [0:0]S03_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WSTRB" *) input [7:0]S03_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WVALID" *) input [0:0]S03_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK0, ASSOCIATED_BUSIF M00_AXI:M01_AXI:S00_AXI:S01_AXI:S02_AXI:S03_AXI, CLK_DOMAIN noc_noc_clk_gen_0_axi_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input aclk0;

  wire [63:0]M00_AXI_araddr;
  wire [1:0]M00_AXI_arburst;
  wire [3:0]M00_AXI_arcache;
  wire [1:0]M00_AXI_arid;
  wire [7:0]M00_AXI_arlen;
  wire [0:0]M00_AXI_arlock;
  wire [2:0]M00_AXI_arprot;
  wire [3:0]M00_AXI_arqos;
  wire [0:0]M00_AXI_arready;
  wire [3:0]M00_AXI_arregion;
  wire [2:0]M00_AXI_arsize;
  wire [17:0]M00_AXI_aruser;
  wire \^M00_AXI_arvalid ;
  wire [63:0]M00_AXI_awaddr;
  wire [1:0]M00_AXI_awburst;
  wire [3:0]M00_AXI_awcache;
  wire [1:0]M00_AXI_awid;
  wire [7:0]M00_AXI_awlen;
  wire [0:0]M00_AXI_awlock;
  wire [2:0]M00_AXI_awprot;
  wire [3:0]M00_AXI_awqos;
  wire [0:0]M00_AXI_awready;
  wire [3:0]M00_AXI_awregion;
  wire [2:0]M00_AXI_awsize;
  wire [17:0]M00_AXI_awuser;
  wire \^M00_AXI_awvalid ;
  wire [1:0]M00_AXI_bid;
  wire \^M00_AXI_bready ;
  wire [1:0]M00_AXI_bresp;
  wire [0:0]M00_AXI_bvalid;
  wire [63:0]M00_AXI_rdata;
  wire [1:0]M00_AXI_rid;
  wire [0:0]M00_AXI_rlast;
  wire \^M00_AXI_rready ;
  wire [1:0]M00_AXI_rresp;
  wire [0:0]M00_AXI_rvalid;
  wire [63:0]M00_AXI_wdata;
  wire [0:0]M00_AXI_wlast;
  wire [0:0]M00_AXI_wready;
  wire [7:0]M00_AXI_wstrb;
  wire \^M00_AXI_wvalid ;
  wire [63:0]M01_AXI_araddr;
  wire [1:0]M01_AXI_arburst;
  wire [3:0]M01_AXI_arcache;
  wire [1:0]M01_AXI_arid;
  wire [7:0]M01_AXI_arlen;
  wire [0:0]M01_AXI_arlock;
  wire [2:0]M01_AXI_arprot;
  wire [3:0]M01_AXI_arqos;
  wire [0:0]M01_AXI_arready;
  wire [3:0]M01_AXI_arregion;
  wire [2:0]M01_AXI_arsize;
  wire [17:0]M01_AXI_aruser;
  wire \^M01_AXI_arvalid ;
  wire [63:0]M01_AXI_awaddr;
  wire [1:0]M01_AXI_awburst;
  wire [3:0]M01_AXI_awcache;
  wire [1:0]M01_AXI_awid;
  wire [7:0]M01_AXI_awlen;
  wire [0:0]M01_AXI_awlock;
  wire [2:0]M01_AXI_awprot;
  wire [3:0]M01_AXI_awqos;
  wire [0:0]M01_AXI_awready;
  wire [3:0]M01_AXI_awregion;
  wire [2:0]M01_AXI_awsize;
  wire [17:0]M01_AXI_awuser;
  wire \^M01_AXI_awvalid ;
  wire [1:0]M01_AXI_bid;
  wire \^M01_AXI_bready ;
  wire [1:0]M01_AXI_bresp;
  wire [0:0]M01_AXI_bvalid;
  wire [63:0]M01_AXI_rdata;
  wire [1:0]M01_AXI_rid;
  wire [0:0]M01_AXI_rlast;
  wire \^M01_AXI_rready ;
  wire [1:0]M01_AXI_rresp;
  wire [0:0]M01_AXI_rvalid;
  wire [63:0]M01_AXI_wdata;
  wire [0:0]M01_AXI_wlast;
  wire [0:0]M01_AXI_wready;
  wire [7:0]M01_AXI_wstrb;
  wire \^M01_AXI_wvalid ;
  wire [63:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [1:0]S00_AXI_arid;
  wire [7:0]S00_AXI_arlen;
  wire [0:0]S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire \^S00_AXI_arready ;
  wire [3:0]S00_AXI_arregion;
  wire [2:0]S00_AXI_arsize;
  wire [0:0]S00_AXI_arvalid;
  wire [63:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [1:0]S00_AXI_awid;
  wire [7:0]S00_AXI_awlen;
  wire [0:0]S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire \^S00_AXI_awready ;
  wire [3:0]S00_AXI_awregion;
  wire [2:0]S00_AXI_awsize;
  wire [0:0]S00_AXI_awvalid;
  wire [1:0]S00_AXI_bid;
  wire [0:0]S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire \^S00_AXI_bvalid ;
  wire [63:0]S00_AXI_rdata;
  wire [1:0]S00_AXI_rid;
  wire [0:0]S00_AXI_rlast;
  wire [0:0]S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire \^S00_AXI_rvalid ;
  wire [63:0]S00_AXI_wdata;
  wire [0:0]S00_AXI_wlast;
  wire \^S00_AXI_wready ;
  wire [7:0]S00_AXI_wstrb;
  wire [0:0]S00_AXI_wvalid;
  wire [63:0]S01_AXI_araddr;
  wire [1:0]S01_AXI_arburst;
  wire [3:0]S01_AXI_arcache;
  wire [1:0]S01_AXI_arid;
  wire [7:0]S01_AXI_arlen;
  wire [0:0]S01_AXI_arlock;
  wire [2:0]S01_AXI_arprot;
  wire [3:0]S01_AXI_arqos;
  wire \^S01_AXI_arready ;
  wire [3:0]S01_AXI_arregion;
  wire [2:0]S01_AXI_arsize;
  wire [0:0]S01_AXI_arvalid;
  wire [63:0]S01_AXI_awaddr;
  wire [1:0]S01_AXI_awburst;
  wire [3:0]S01_AXI_awcache;
  wire [1:0]S01_AXI_awid;
  wire [7:0]S01_AXI_awlen;
  wire [0:0]S01_AXI_awlock;
  wire [2:0]S01_AXI_awprot;
  wire [3:0]S01_AXI_awqos;
  wire \^S01_AXI_awready ;
  wire [3:0]S01_AXI_awregion;
  wire [2:0]S01_AXI_awsize;
  wire [0:0]S01_AXI_awvalid;
  wire [1:0]S01_AXI_bid;
  wire [0:0]S01_AXI_bready;
  wire [1:0]S01_AXI_bresp;
  wire \^S01_AXI_bvalid ;
  wire [63:0]S01_AXI_rdata;
  wire [1:0]S01_AXI_rid;
  wire [0:0]S01_AXI_rlast;
  wire [0:0]S01_AXI_rready;
  wire [1:0]S01_AXI_rresp;
  wire \^S01_AXI_rvalid ;
  wire [63:0]S01_AXI_wdata;
  wire [0:0]S01_AXI_wlast;
  wire \^S01_AXI_wready ;
  wire [7:0]S01_AXI_wstrb;
  wire [0:0]S01_AXI_wvalid;
  wire [63:0]S02_AXI_araddr;
  wire [1:0]S02_AXI_arburst;
  wire [3:0]S02_AXI_arcache;
  wire [1:0]S02_AXI_arid;
  wire [7:0]S02_AXI_arlen;
  wire [0:0]S02_AXI_arlock;
  wire [2:0]S02_AXI_arprot;
  wire [3:0]S02_AXI_arqos;
  wire \^S02_AXI_arready ;
  wire [3:0]S02_AXI_arregion;
  wire [2:0]S02_AXI_arsize;
  wire [0:0]S02_AXI_arvalid;
  wire [63:0]S02_AXI_awaddr;
  wire [1:0]S02_AXI_awburst;
  wire [3:0]S02_AXI_awcache;
  wire [1:0]S02_AXI_awid;
  wire [7:0]S02_AXI_awlen;
  wire [0:0]S02_AXI_awlock;
  wire [2:0]S02_AXI_awprot;
  wire [3:0]S02_AXI_awqos;
  wire \^S02_AXI_awready ;
  wire [3:0]S02_AXI_awregion;
  wire [2:0]S02_AXI_awsize;
  wire [0:0]S02_AXI_awvalid;
  wire [1:0]S02_AXI_bid;
  wire [0:0]S02_AXI_bready;
  wire [1:0]S02_AXI_bresp;
  wire \^S02_AXI_bvalid ;
  wire [63:0]S02_AXI_rdata;
  wire [1:0]S02_AXI_rid;
  wire [0:0]S02_AXI_rlast;
  wire [0:0]S02_AXI_rready;
  wire [1:0]S02_AXI_rresp;
  wire \^S02_AXI_rvalid ;
  wire [63:0]S02_AXI_wdata;
  wire [0:0]S02_AXI_wlast;
  wire \^S02_AXI_wready ;
  wire [7:0]S02_AXI_wstrb;
  wire [0:0]S02_AXI_wvalid;
  wire [63:0]S03_AXI_araddr;
  wire [1:0]S03_AXI_arburst;
  wire [3:0]S03_AXI_arcache;
  wire [1:0]S03_AXI_arid;
  wire [7:0]S03_AXI_arlen;
  wire [0:0]S03_AXI_arlock;
  wire [2:0]S03_AXI_arprot;
  wire [3:0]S03_AXI_arqos;
  wire \^S03_AXI_arready ;
  wire [3:0]S03_AXI_arregion;
  wire [2:0]S03_AXI_arsize;
  wire [0:0]S03_AXI_arvalid;
  wire [63:0]S03_AXI_awaddr;
  wire [1:0]S03_AXI_awburst;
  wire [3:0]S03_AXI_awcache;
  wire [1:0]S03_AXI_awid;
  wire [7:0]S03_AXI_awlen;
  wire [0:0]S03_AXI_awlock;
  wire [2:0]S03_AXI_awprot;
  wire [3:0]S03_AXI_awqos;
  wire \^S03_AXI_awready ;
  wire [3:0]S03_AXI_awregion;
  wire [2:0]S03_AXI_awsize;
  wire [0:0]S03_AXI_awvalid;
  wire [1:0]S03_AXI_bid;
  wire [0:0]S03_AXI_bready;
  wire [1:0]S03_AXI_bresp;
  wire \^S03_AXI_bvalid ;
  wire [63:0]S03_AXI_rdata;
  wire [1:0]S03_AXI_rid;
  wire [0:0]S03_AXI_rlast;
  wire [0:0]S03_AXI_rready;
  wire [1:0]S03_AXI_rresp;
  wire \^S03_AXI_rvalid ;
  wire [63:0]S03_AXI_wdata;
  wire [0:0]S03_AXI_wlast;
  wire \^S03_AXI_wready ;
  wire [7:0]S03_AXI_wstrb;
  wire [0:0]S03_AXI_wvalid;
  wire aclk0;
  wire [0:0]const_0_dout;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m00_axi_nsu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m00_axi_nsu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]m00_axi_nsu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m00_axi_nsu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m00_axi_nsu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m00_axi_nsu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]m00_axi_nsu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m00_axi_nsu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m01_axi_nsu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m01_axi_nsu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]m01_axi_nsu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m01_axi_nsu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m01_axi_nsu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m01_axi_nsu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]m01_axi_nsu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m01_axi_nsu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s00_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s00_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s00_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s00_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s00_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s00_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s00_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s00_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s01_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s01_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s01_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s01_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s01_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s01_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s01_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s01_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s02_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s02_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s02_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s02_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s02_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s02_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s02_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s02_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s03_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s03_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s03_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s03_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s03_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s03_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s03_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s03_axi_nmu_if_noc_npp_out_noc_valid;

  assign M00_AXI_arvalid[0] = \^M00_AXI_arvalid ;
  assign M00_AXI_awvalid[0] = \^M00_AXI_awvalid ;
  assign M00_AXI_bready[0] = \^M00_AXI_bready ;
  assign M00_AXI_rready[0] = \^M00_AXI_rready ;
  assign M00_AXI_wvalid[0] = \^M00_AXI_wvalid ;
  assign M01_AXI_arvalid[0] = \^M01_AXI_arvalid ;
  assign M01_AXI_awvalid[0] = \^M01_AXI_awvalid ;
  assign M01_AXI_bready[0] = \^M01_AXI_bready ;
  assign M01_AXI_rready[0] = \^M01_AXI_rready ;
  assign M01_AXI_wvalid[0] = \^M01_AXI_wvalid ;
  assign S00_AXI_arready[0] = \^S00_AXI_arready ;
  assign S00_AXI_awready[0] = \^S00_AXI_awready ;
  assign S00_AXI_bvalid[0] = \^S00_AXI_bvalid ;
  assign S00_AXI_rvalid[0] = \^S00_AXI_rvalid ;
  assign S00_AXI_wready[0] = \^S00_AXI_wready ;
  assign S01_AXI_arready[0] = \^S01_AXI_arready ;
  assign S01_AXI_awready[0] = \^S01_AXI_awready ;
  assign S01_AXI_bvalid[0] = \^S01_AXI_bvalid ;
  assign S01_AXI_rvalid[0] = \^S01_AXI_rvalid ;
  assign S01_AXI_wready[0] = \^S01_AXI_wready ;
  assign S02_AXI_arready[0] = \^S02_AXI_arready ;
  assign S02_AXI_awready[0] = \^S02_AXI_awready ;
  assign S02_AXI_bvalid[0] = \^S02_AXI_bvalid ;
  assign S02_AXI_rvalid[0] = \^S02_AXI_rvalid ;
  assign S02_AXI_wready[0] = \^S02_AXI_wready ;
  assign S03_AXI_arready[0] = \^S03_AXI_arready ;
  assign S03_AXI_awready[0] = \^S03_AXI_awready ;
  assign S03_AXI_bvalid[0] = \^S03_AXI_bvalid ;
  assign S03_AXI_rvalid[0] = \^S03_AXI_rvalid ;
  assign S03_AXI_wready[0] = \^S03_AXI_wready ;
  (* DONT_TOUCH *) 
  bd_8846_M00_AXI_nsu_0 M00_AXI_nsu
       (.IF_NOC_AXI_ARADDR(M00_AXI_araddr),
        .IF_NOC_AXI_ARBURST(M00_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(M00_AXI_arcache),
        .IF_NOC_AXI_ARCID(M00_AXI_arid),
        .IF_NOC_AXI_ARLEN(M00_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(M00_AXI_arlock),
        .IF_NOC_AXI_ARPROT(M00_AXI_arprot),
        .IF_NOC_AXI_ARQOS(M00_AXI_arqos),
        .IF_NOC_AXI_ARREADY(M00_AXI_arready),
        .IF_NOC_AXI_ARREGION(M00_AXI_arregion),
        .IF_NOC_AXI_ARSIZE(M00_AXI_arsize),
        .IF_NOC_AXI_ARUSER(M00_AXI_aruser),
        .IF_NOC_AXI_ARVALID(\^M00_AXI_arvalid ),
        .IF_NOC_AXI_AWADDR(M00_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(M00_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(M00_AXI_awcache),
        .IF_NOC_AXI_AWCID(M00_AXI_awid),
        .IF_NOC_AXI_AWLEN(M00_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(M00_AXI_awlock),
        .IF_NOC_AXI_AWPROT(M00_AXI_awprot),
        .IF_NOC_AXI_AWQOS(M00_AXI_awqos),
        .IF_NOC_AXI_AWREADY(M00_AXI_awready),
        .IF_NOC_AXI_AWREGION(M00_AXI_awregion),
        .IF_NOC_AXI_AWSIZE(M00_AXI_awsize),
        .IF_NOC_AXI_AWUSER(M00_AXI_awuser),
        .IF_NOC_AXI_AWVALID(\^M00_AXI_awvalid ),
        .IF_NOC_AXI_BCID(M00_AXI_bid),
        .IF_NOC_AXI_BREADY(\^M00_AXI_bready ),
        .IF_NOC_AXI_BRESP(M00_AXI_bresp),
        .IF_NOC_AXI_BVALID(M00_AXI_bvalid),
        .IF_NOC_AXI_RCID(M00_AXI_rid),
        .IF_NOC_AXI_RDATA(M00_AXI_rdata),
        .IF_NOC_AXI_RLAST(M00_AXI_rlast),
        .IF_NOC_AXI_RREADY(\^M00_AXI_rready ),
        .IF_NOC_AXI_RRESP(M00_AXI_rresp),
        .IF_NOC_AXI_RVALID(M00_AXI_rvalid),
        .IF_NOC_AXI_WDATA(M00_AXI_wdata),
        .IF_NOC_AXI_WLAST(M00_AXI_wlast),
        .IF_NOC_AXI_WREADY(M00_AXI_wready),
        .IF_NOC_AXI_WSTRB(M00_AXI_wstrb),
        .IF_NOC_AXI_WVALID(\^M00_AXI_wvalid ),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(m00_axi_nsu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(m00_axi_nsu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(m00_axi_nsu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(m00_axi_nsu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(m00_axi_nsu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(m00_axi_nsu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(m00_axi_nsu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(m00_axi_nsu_if_noc_npp_out_noc_valid),
        .NSU(1'b0),
        .aclk(aclk0));
  (* DONT_TOUCH *) 
  bd_8846_M01_AXI_nsu_0 M01_AXI_nsu
       (.IF_NOC_AXI_ARADDR(M01_AXI_araddr),
        .IF_NOC_AXI_ARBURST(M01_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(M01_AXI_arcache),
        .IF_NOC_AXI_ARCID(M01_AXI_arid),
        .IF_NOC_AXI_ARLEN(M01_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(M01_AXI_arlock),
        .IF_NOC_AXI_ARPROT(M01_AXI_arprot),
        .IF_NOC_AXI_ARQOS(M01_AXI_arqos),
        .IF_NOC_AXI_ARREADY(M01_AXI_arready),
        .IF_NOC_AXI_ARREGION(M01_AXI_arregion),
        .IF_NOC_AXI_ARSIZE(M01_AXI_arsize),
        .IF_NOC_AXI_ARUSER(M01_AXI_aruser),
        .IF_NOC_AXI_ARVALID(\^M01_AXI_arvalid ),
        .IF_NOC_AXI_AWADDR(M01_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(M01_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(M01_AXI_awcache),
        .IF_NOC_AXI_AWCID(M01_AXI_awid),
        .IF_NOC_AXI_AWLEN(M01_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(M01_AXI_awlock),
        .IF_NOC_AXI_AWPROT(M01_AXI_awprot),
        .IF_NOC_AXI_AWQOS(M01_AXI_awqos),
        .IF_NOC_AXI_AWREADY(M01_AXI_awready),
        .IF_NOC_AXI_AWREGION(M01_AXI_awregion),
        .IF_NOC_AXI_AWSIZE(M01_AXI_awsize),
        .IF_NOC_AXI_AWUSER(M01_AXI_awuser),
        .IF_NOC_AXI_AWVALID(\^M01_AXI_awvalid ),
        .IF_NOC_AXI_BCID(M01_AXI_bid),
        .IF_NOC_AXI_BREADY(\^M01_AXI_bready ),
        .IF_NOC_AXI_BRESP(M01_AXI_bresp),
        .IF_NOC_AXI_BVALID(M01_AXI_bvalid),
        .IF_NOC_AXI_RCID(M01_AXI_rid),
        .IF_NOC_AXI_RDATA(M01_AXI_rdata),
        .IF_NOC_AXI_RLAST(M01_AXI_rlast),
        .IF_NOC_AXI_RREADY(\^M01_AXI_rready ),
        .IF_NOC_AXI_RRESP(M01_AXI_rresp),
        .IF_NOC_AXI_RVALID(M01_AXI_rvalid),
        .IF_NOC_AXI_WDATA(M01_AXI_wdata),
        .IF_NOC_AXI_WLAST(M01_AXI_wlast),
        .IF_NOC_AXI_WREADY(M01_AXI_wready),
        .IF_NOC_AXI_WSTRB(M01_AXI_wstrb),
        .IF_NOC_AXI_WVALID(\^M01_AXI_wvalid ),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(m01_axi_nsu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(m01_axi_nsu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(m01_axi_nsu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(m01_axi_nsu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(m01_axi_nsu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(m01_axi_nsu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(m01_axi_nsu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(m01_axi_nsu_if_noc_npp_out_noc_valid),
        .NSU(1'b0),
        .aclk(aclk0));
  (* DONT_TOUCH *) 
  bd_8846_S00_AXI_nmu_0 S00_AXI_nmu
       (.IF_NOC_AXI_ARADDR(S00_AXI_araddr),
        .IF_NOC_AXI_ARBURST(S00_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(S00_AXI_arcache),
        .IF_NOC_AXI_ARID(S00_AXI_arid),
        .IF_NOC_AXI_ARLEN(S00_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(S00_AXI_arlock),
        .IF_NOC_AXI_ARPROT(S00_AXI_arprot),
        .IF_NOC_AXI_ARQOS(S00_AXI_arqos),
        .IF_NOC_AXI_ARREADY(\^S00_AXI_arready ),
        .IF_NOC_AXI_ARREGION(S00_AXI_arregion),
        .IF_NOC_AXI_ARSIZE(S00_AXI_arsize),
        .IF_NOC_AXI_ARVALID(S00_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(S00_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(S00_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(S00_AXI_awcache),
        .IF_NOC_AXI_AWID(S00_AXI_awid),
        .IF_NOC_AXI_AWLEN(S00_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(S00_AXI_awlock),
        .IF_NOC_AXI_AWPROT(S00_AXI_awprot),
        .IF_NOC_AXI_AWQOS(S00_AXI_awqos),
        .IF_NOC_AXI_AWREADY(\^S00_AXI_awready ),
        .IF_NOC_AXI_AWREGION(S00_AXI_awregion),
        .IF_NOC_AXI_AWSIZE(S00_AXI_awsize),
        .IF_NOC_AXI_AWVALID(S00_AXI_awvalid),
        .IF_NOC_AXI_BID(S00_AXI_bid),
        .IF_NOC_AXI_BREADY(S00_AXI_bready),
        .IF_NOC_AXI_BRESP(S00_AXI_bresp),
        .IF_NOC_AXI_BVALID(\^S00_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(S00_AXI_rdata),
        .IF_NOC_AXI_RID(S00_AXI_rid),
        .IF_NOC_AXI_RLAST(S00_AXI_rlast),
        .IF_NOC_AXI_RREADY(S00_AXI_rready),
        .IF_NOC_AXI_RRESP(S00_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^S00_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(S00_AXI_wdata),
        .IF_NOC_AXI_WLAST(S00_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^S00_AXI_wready ),
        .IF_NOC_AXI_WSTRB(S00_AXI_wstrb),
        .IF_NOC_AXI_WVALID(S00_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(s00_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(s00_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(s00_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(s00_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(s00_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(s00_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(s00_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(s00_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aclk(aclk0));
  (* DONT_TOUCH *) 
  bd_8846_S01_AXI_nmu_0 S01_AXI_nmu
       (.IF_NOC_AXI_ARADDR(S01_AXI_araddr),
        .IF_NOC_AXI_ARBURST(S01_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(S01_AXI_arcache),
        .IF_NOC_AXI_ARID(S01_AXI_arid),
        .IF_NOC_AXI_ARLEN(S01_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(S01_AXI_arlock),
        .IF_NOC_AXI_ARPROT(S01_AXI_arprot),
        .IF_NOC_AXI_ARQOS(S01_AXI_arqos),
        .IF_NOC_AXI_ARREADY(\^S01_AXI_arready ),
        .IF_NOC_AXI_ARREGION(S01_AXI_arregion),
        .IF_NOC_AXI_ARSIZE(S01_AXI_arsize),
        .IF_NOC_AXI_ARVALID(S01_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(S01_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(S01_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(S01_AXI_awcache),
        .IF_NOC_AXI_AWID(S01_AXI_awid),
        .IF_NOC_AXI_AWLEN(S01_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(S01_AXI_awlock),
        .IF_NOC_AXI_AWPROT(S01_AXI_awprot),
        .IF_NOC_AXI_AWQOS(S01_AXI_awqos),
        .IF_NOC_AXI_AWREADY(\^S01_AXI_awready ),
        .IF_NOC_AXI_AWREGION(S01_AXI_awregion),
        .IF_NOC_AXI_AWSIZE(S01_AXI_awsize),
        .IF_NOC_AXI_AWVALID(S01_AXI_awvalid),
        .IF_NOC_AXI_BID(S01_AXI_bid),
        .IF_NOC_AXI_BREADY(S01_AXI_bready),
        .IF_NOC_AXI_BRESP(S01_AXI_bresp),
        .IF_NOC_AXI_BVALID(\^S01_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(S01_AXI_rdata),
        .IF_NOC_AXI_RID(S01_AXI_rid),
        .IF_NOC_AXI_RLAST(S01_AXI_rlast),
        .IF_NOC_AXI_RREADY(S01_AXI_rready),
        .IF_NOC_AXI_RRESP(S01_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^S01_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(S01_AXI_wdata),
        .IF_NOC_AXI_WLAST(S01_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^S01_AXI_wready ),
        .IF_NOC_AXI_WSTRB(S01_AXI_wstrb),
        .IF_NOC_AXI_WVALID(S01_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(s01_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(s01_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(s01_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(s01_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(s01_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(s01_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(s01_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(s01_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aclk(aclk0));
  (* DONT_TOUCH *) 
  bd_8846_S02_AXI_nmu_0 S02_AXI_nmu
       (.IF_NOC_AXI_ARADDR(S02_AXI_araddr),
        .IF_NOC_AXI_ARBURST(S02_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(S02_AXI_arcache),
        .IF_NOC_AXI_ARID(S02_AXI_arid),
        .IF_NOC_AXI_ARLEN(S02_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(S02_AXI_arlock),
        .IF_NOC_AXI_ARPROT(S02_AXI_arprot),
        .IF_NOC_AXI_ARQOS(S02_AXI_arqos),
        .IF_NOC_AXI_ARREADY(\^S02_AXI_arready ),
        .IF_NOC_AXI_ARREGION(S02_AXI_arregion),
        .IF_NOC_AXI_ARSIZE(S02_AXI_arsize),
        .IF_NOC_AXI_ARVALID(S02_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(S02_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(S02_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(S02_AXI_awcache),
        .IF_NOC_AXI_AWID(S02_AXI_awid),
        .IF_NOC_AXI_AWLEN(S02_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(S02_AXI_awlock),
        .IF_NOC_AXI_AWPROT(S02_AXI_awprot),
        .IF_NOC_AXI_AWQOS(S02_AXI_awqos),
        .IF_NOC_AXI_AWREADY(\^S02_AXI_awready ),
        .IF_NOC_AXI_AWREGION(S02_AXI_awregion),
        .IF_NOC_AXI_AWSIZE(S02_AXI_awsize),
        .IF_NOC_AXI_AWVALID(S02_AXI_awvalid),
        .IF_NOC_AXI_BID(S02_AXI_bid),
        .IF_NOC_AXI_BREADY(S02_AXI_bready),
        .IF_NOC_AXI_BRESP(S02_AXI_bresp),
        .IF_NOC_AXI_BVALID(\^S02_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(S02_AXI_rdata),
        .IF_NOC_AXI_RID(S02_AXI_rid),
        .IF_NOC_AXI_RLAST(S02_AXI_rlast),
        .IF_NOC_AXI_RREADY(S02_AXI_rready),
        .IF_NOC_AXI_RRESP(S02_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^S02_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(S02_AXI_wdata),
        .IF_NOC_AXI_WLAST(S02_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^S02_AXI_wready ),
        .IF_NOC_AXI_WSTRB(S02_AXI_wstrb),
        .IF_NOC_AXI_WVALID(S02_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(s02_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(s02_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(s02_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(s02_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(s02_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(s02_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(s02_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(s02_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aclk(aclk0));
  (* DONT_TOUCH *) 
  bd_8846_S03_AXI_nmu_0 S03_AXI_nmu
       (.IF_NOC_AXI_ARADDR(S03_AXI_araddr),
        .IF_NOC_AXI_ARBURST(S03_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(S03_AXI_arcache),
        .IF_NOC_AXI_ARID(S03_AXI_arid),
        .IF_NOC_AXI_ARLEN(S03_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(S03_AXI_arlock),
        .IF_NOC_AXI_ARPROT(S03_AXI_arprot),
        .IF_NOC_AXI_ARQOS(S03_AXI_arqos),
        .IF_NOC_AXI_ARREADY(\^S03_AXI_arready ),
        .IF_NOC_AXI_ARREGION(S03_AXI_arregion),
        .IF_NOC_AXI_ARSIZE(S03_AXI_arsize),
        .IF_NOC_AXI_ARVALID(S03_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(S03_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(S03_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(S03_AXI_awcache),
        .IF_NOC_AXI_AWID(S03_AXI_awid),
        .IF_NOC_AXI_AWLEN(S03_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(S03_AXI_awlock),
        .IF_NOC_AXI_AWPROT(S03_AXI_awprot),
        .IF_NOC_AXI_AWQOS(S03_AXI_awqos),
        .IF_NOC_AXI_AWREADY(\^S03_AXI_awready ),
        .IF_NOC_AXI_AWREGION(S03_AXI_awregion),
        .IF_NOC_AXI_AWSIZE(S03_AXI_awsize),
        .IF_NOC_AXI_AWVALID(S03_AXI_awvalid),
        .IF_NOC_AXI_BID(S03_AXI_bid),
        .IF_NOC_AXI_BREADY(S03_AXI_bready),
        .IF_NOC_AXI_BRESP(S03_AXI_bresp),
        .IF_NOC_AXI_BVALID(\^S03_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(S03_AXI_rdata),
        .IF_NOC_AXI_RID(S03_AXI_rid),
        .IF_NOC_AXI_RLAST(S03_AXI_rlast),
        .IF_NOC_AXI_RREADY(S03_AXI_rready),
        .IF_NOC_AXI_RRESP(S03_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^S03_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(S03_AXI_wdata),
        .IF_NOC_AXI_WLAST(S03_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^S03_AXI_wready ),
        .IF_NOC_AXI_WSTRB(S03_AXI_wstrb),
        .IF_NOC_AXI_WVALID(S03_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(s03_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(s03_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(s03_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(s03_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(s03_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(s03_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(s03_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(s03_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aclk(aclk0));
  (* DONT_TOUCH *) 
  bd_8846_const_0_0 const_0
       (.dout(const_0_dout));
endmodule
