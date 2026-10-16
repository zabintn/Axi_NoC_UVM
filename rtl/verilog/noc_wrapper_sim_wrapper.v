//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Design : noc_wrapper_sim_wrapper
//Purpose: NoC Simulation Wrapper netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module noc_wrapper_sim_wrapper
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
  input [63:0]S00_AXI_0_araddr;
  input [1:0]S00_AXI_0_arburst;
  input [3:0]S00_AXI_0_arcache;
  input [1:0]S00_AXI_0_arid;
  input [7:0]S00_AXI_0_arlen;
  input [0:0]S00_AXI_0_arlock;
  input [2:0]S00_AXI_0_arprot;
  input [3:0]S00_AXI_0_arqos;
  output [0:0]S00_AXI_0_arready;
  input [3:0]S00_AXI_0_arregion;
  input [2:0]S00_AXI_0_arsize;
  input [0:0]S00_AXI_0_arvalid;
  input [63:0]S00_AXI_0_awaddr;
  input [1:0]S00_AXI_0_awburst;
  input [3:0]S00_AXI_0_awcache;
  input [1:0]S00_AXI_0_awid;
  input [7:0]S00_AXI_0_awlen;
  input [0:0]S00_AXI_0_awlock;
  input [2:0]S00_AXI_0_awprot;
  input [3:0]S00_AXI_0_awqos;
  output [0:0]S00_AXI_0_awready;
  input [3:0]S00_AXI_0_awregion;
  input [2:0]S00_AXI_0_awsize;
  input [0:0]S00_AXI_0_awvalid;
  output [1:0]S00_AXI_0_bid;
  input [0:0]S00_AXI_0_bready;
  output [1:0]S00_AXI_0_bresp;
  output [0:0]S00_AXI_0_bvalid;
  output [63:0]S00_AXI_0_rdata;
  output [1:0]S00_AXI_0_rid;
  output [0:0]S00_AXI_0_rlast;
  input [0:0]S00_AXI_0_rready;
  output [1:0]S00_AXI_0_rresp;
  output [0:0]S00_AXI_0_rvalid;
  input [63:0]S00_AXI_0_wdata;
  input [0:0]S00_AXI_0_wlast;
  output [0:0]S00_AXI_0_wready;
  input [7:0]S00_AXI_0_wstrb;
  input [0:0]S00_AXI_0_wvalid;
  input [63:0]S01_AXI_0_araddr;
  input [1:0]S01_AXI_0_arburst;
  input [3:0]S01_AXI_0_arcache;
  input [1:0]S01_AXI_0_arid;
  input [7:0]S01_AXI_0_arlen;
  input [0:0]S01_AXI_0_arlock;
  input [2:0]S01_AXI_0_arprot;
  input [3:0]S01_AXI_0_arqos;
  output [0:0]S01_AXI_0_arready;
  input [3:0]S01_AXI_0_arregion;
  input [2:0]S01_AXI_0_arsize;
  input [0:0]S01_AXI_0_arvalid;
  input [63:0]S01_AXI_0_awaddr;
  input [1:0]S01_AXI_0_awburst;
  input [3:0]S01_AXI_0_awcache;
  input [1:0]S01_AXI_0_awid;
  input [7:0]S01_AXI_0_awlen;
  input [0:0]S01_AXI_0_awlock;
  input [2:0]S01_AXI_0_awprot;
  input [3:0]S01_AXI_0_awqos;
  output [0:0]S01_AXI_0_awready;
  input [3:0]S01_AXI_0_awregion;
  input [2:0]S01_AXI_0_awsize;
  input [0:0]S01_AXI_0_awvalid;
  output [1:0]S01_AXI_0_bid;
  input [0:0]S01_AXI_0_bready;
  output [1:0]S01_AXI_0_bresp;
  output [0:0]S01_AXI_0_bvalid;
  output [63:0]S01_AXI_0_rdata;
  output [1:0]S01_AXI_0_rid;
  output [0:0]S01_AXI_0_rlast;
  input [0:0]S01_AXI_0_rready;
  output [1:0]S01_AXI_0_rresp;
  output [0:0]S01_AXI_0_rvalid;
  input [63:0]S01_AXI_0_wdata;
  input [0:0]S01_AXI_0_wlast;
  output [0:0]S01_AXI_0_wready;
  input [7:0]S01_AXI_0_wstrb;
  input [0:0]S01_AXI_0_wvalid;
  input [63:0]S02_AXI_0_araddr;
  input [1:0]S02_AXI_0_arburst;
  input [3:0]S02_AXI_0_arcache;
  input [1:0]S02_AXI_0_arid;
  input [7:0]S02_AXI_0_arlen;
  input [0:0]S02_AXI_0_arlock;
  input [2:0]S02_AXI_0_arprot;
  input [3:0]S02_AXI_0_arqos;
  output [0:0]S02_AXI_0_arready;
  input [3:0]S02_AXI_0_arregion;
  input [2:0]S02_AXI_0_arsize;
  input [0:0]S02_AXI_0_arvalid;
  input [63:0]S02_AXI_0_awaddr;
  input [1:0]S02_AXI_0_awburst;
  input [3:0]S02_AXI_0_awcache;
  input [1:0]S02_AXI_0_awid;
  input [7:0]S02_AXI_0_awlen;
  input [0:0]S02_AXI_0_awlock;
  input [2:0]S02_AXI_0_awprot;
  input [3:0]S02_AXI_0_awqos;
  output [0:0]S02_AXI_0_awready;
  input [3:0]S02_AXI_0_awregion;
  input [2:0]S02_AXI_0_awsize;
  input [0:0]S02_AXI_0_awvalid;
  output [1:0]S02_AXI_0_bid;
  input [0:0]S02_AXI_0_bready;
  output [1:0]S02_AXI_0_bresp;
  output [0:0]S02_AXI_0_bvalid;
  output [63:0]S02_AXI_0_rdata;
  output [1:0]S02_AXI_0_rid;
  output [0:0]S02_AXI_0_rlast;
  input [0:0]S02_AXI_0_rready;
  output [1:0]S02_AXI_0_rresp;
  output [0:0]S02_AXI_0_rvalid;
  input [63:0]S02_AXI_0_wdata;
  input [0:0]S02_AXI_0_wlast;
  output [0:0]S02_AXI_0_wready;
  input [7:0]S02_AXI_0_wstrb;
  input [0:0]S02_AXI_0_wvalid;
  input [63:0]S03_AXI_0_araddr;
  input [1:0]S03_AXI_0_arburst;
  input [3:0]S03_AXI_0_arcache;
  input [1:0]S03_AXI_0_arid;
  input [7:0]S03_AXI_0_arlen;
  input [0:0]S03_AXI_0_arlock;
  input [2:0]S03_AXI_0_arprot;
  input [3:0]S03_AXI_0_arqos;
  output [0:0]S03_AXI_0_arready;
  input [3:0]S03_AXI_0_arregion;
  input [2:0]S03_AXI_0_arsize;
  input [0:0]S03_AXI_0_arvalid;
  input [63:0]S03_AXI_0_awaddr;
  input [1:0]S03_AXI_0_awburst;
  input [3:0]S03_AXI_0_awcache;
  input [1:0]S03_AXI_0_awid;
  input [7:0]S03_AXI_0_awlen;
  input [0:0]S03_AXI_0_awlock;
  input [2:0]S03_AXI_0_awprot;
  input [3:0]S03_AXI_0_awqos;
  output [0:0]S03_AXI_0_awready;
  input [3:0]S03_AXI_0_awregion;
  input [2:0]S03_AXI_0_awsize;
  input [0:0]S03_AXI_0_awvalid;
  output [1:0]S03_AXI_0_bid;
  input [0:0]S03_AXI_0_bready;
  output [1:0]S03_AXI_0_bresp;
  output [0:0]S03_AXI_0_bvalid;
  output [63:0]S03_AXI_0_rdata;
  output [1:0]S03_AXI_0_rid;
  output [0:0]S03_AXI_0_rlast;
  input [0:0]S03_AXI_0_rready;
  output [1:0]S03_AXI_0_rresp;
  output [0:0]S03_AXI_0_rvalid;
  input [63:0]S03_AXI_0_wdata;
  input [0:0]S03_AXI_0_wlast;
  output [0:0]S03_AXI_0_wready;
  input [7:0]S03_AXI_0_wstrb;
  input [0:0]S03_AXI_0_wvalid;
  input axi_clk_in_0_0;
  input axi_rst_in_0_n_0;

  wire axi_clk_in_0_0_net;
  wire axi_rst_in_0_n_0_net;
  wire [0:0]nps_0_mnpp_s_credit_rdy_net;
  wire [7:0]nps_0_mnpp_s_credit_return_net;
  wire [181:0]nps_0_mnpp_s_flit_net;
  wire [7:0]nps_0_mnpp_s_valid_net;
  wire [0:0]nps_0_snpp_s_credit_rdy_net;
  wire [7:0]nps_0_snpp_s_credit_return_net;
  wire [181:0]nps_0_snpp_s_flit_net;
  wire [7:0]nps_0_snpp_s_valid_net;
  wire [0:0]nps_2_mnpp_s_credit_rdy_net;
  wire [7:0]nps_2_mnpp_s_credit_return_net;
  wire [181:0]nps_2_mnpp_s_flit_net;
  wire [7:0]nps_2_mnpp_s_valid_net;
  wire [0:0]nps_2_snpp_s_credit_rdy_net;
  wire [7:0]nps_2_snpp_s_credit_return_net;
  wire [181:0]nps_2_snpp_s_flit_net;
  wire [7:0]nps_2_snpp_s_valid_net;
  wire [0:0]nps_3_mnpp_s_credit_rdy_net;
  wire [7:0]nps_3_mnpp_s_credit_return_net;
  wire [181:0]nps_3_mnpp_s_flit_net;
  wire [7:0]nps_3_mnpp_s_valid_net;
  wire [0:0]nps_3_snpp_s_credit_rdy_net;
  wire [7:0]nps_3_snpp_s_credit_return_net;
  wire [181:0]nps_3_snpp_s_flit_net;
  wire [7:0]nps_3_snpp_s_valid_net;
  wire [0:0]nps_4_mnpp_s_credit_rdy_net;
  wire [7:0]nps_4_mnpp_s_credit_return_net;
  wire [181:0]nps_4_mnpp_s_flit_net;
  wire [7:0]nps_4_mnpp_s_valid_net;
  wire [0:0]nps_4_snpp_s_credit_rdy_net;
  wire [7:0]nps_4_snpp_s_credit_return_net;
  wire [181:0]nps_4_snpp_s_flit_net;
  wire [7:0]nps_4_snpp_s_valid_net;
  wire [0:0]nps_6_mnpp_s_credit_rdy_net;
  wire [7:0]nps_6_mnpp_s_credit_return_net;
  wire [181:0]nps_6_mnpp_s_flit_net;
  wire [7:0]nps_6_mnpp_s_valid_net;
  wire [0:0]nps_6_snpp_s_credit_rdy_net;
  wire [7:0]nps_6_snpp_s_credit_return_net;
  wire [181:0]nps_6_snpp_s_flit_net;
  wire [7:0]nps_6_snpp_s_valid_net;
  wire [0:0]nps_7_mnpp_s_credit_rdy_net;
  wire [7:0]nps_7_mnpp_s_credit_return_net;
  wire [181:0]nps_7_mnpp_s_flit_net;
  wire [7:0]nps_7_mnpp_s_valid_net;
  wire [0:0]nps_7_snpp_s_credit_rdy_net;
  wire [7:0]nps_7_snpp_s_credit_return_net;
  wire [181:0]nps_7_snpp_s_flit_net;
  wire [7:0]nps_7_snpp_s_valid_net;
  wire [63:0]s00_axi_0_araddr_net;
  wire [1:0]s00_axi_0_arburst_net;
  wire [3:0]s00_axi_0_arcache_net;
  wire [1:0]s00_axi_0_arid_net;
  wire [7:0]s00_axi_0_arlen_net;
  wire [0:0]s00_axi_0_arlock_net;
  wire [2:0]s00_axi_0_arprot_net;
  wire [3:0]s00_axi_0_arqos_net;
  wire [0:0]s00_axi_0_arready_net;
  wire [3:0]s00_axi_0_arregion_net;
  wire [2:0]s00_axi_0_arsize_net;
  wire [0:0]s00_axi_0_arvalid_net;
  wire [63:0]s00_axi_0_awaddr_net;
  wire [1:0]s00_axi_0_awburst_net;
  wire [3:0]s00_axi_0_awcache_net;
  wire [1:0]s00_axi_0_awid_net;
  wire [7:0]s00_axi_0_awlen_net;
  wire [0:0]s00_axi_0_awlock_net;
  wire [2:0]s00_axi_0_awprot_net;
  wire [3:0]s00_axi_0_awqos_net;
  wire [0:0]s00_axi_0_awready_net;
  wire [3:0]s00_axi_0_awregion_net;
  wire [2:0]s00_axi_0_awsize_net;
  wire [0:0]s00_axi_0_awvalid_net;
  wire [1:0]s00_axi_0_bid_net;
  wire [0:0]s00_axi_0_bready_net;
  wire [1:0]s00_axi_0_bresp_net;
  wire [0:0]s00_axi_0_bvalid_net;
  wire [63:0]s00_axi_0_rdata_net;
  wire [1:0]s00_axi_0_rid_net;
  wire [0:0]s00_axi_0_rlast_net;
  wire [0:0]s00_axi_0_rready_net;
  wire [1:0]s00_axi_0_rresp_net;
  wire [0:0]s00_axi_0_rvalid_net;
  wire [63:0]s00_axi_0_wdata_net;
  wire [0:0]s00_axi_0_wlast_net;
  wire [0:0]s00_axi_0_wready_net;
  wire [7:0]s00_axi_0_wstrb_net;
  wire [0:0]s00_axi_0_wvalid_net;
  wire [63:0]s01_axi_0_araddr_net;
  wire [1:0]s01_axi_0_arburst_net;
  wire [3:0]s01_axi_0_arcache_net;
  wire [1:0]s01_axi_0_arid_net;
  wire [7:0]s01_axi_0_arlen_net;
  wire [0:0]s01_axi_0_arlock_net;
  wire [2:0]s01_axi_0_arprot_net;
  wire [3:0]s01_axi_0_arqos_net;
  wire [0:0]s01_axi_0_arready_net;
  wire [3:0]s01_axi_0_arregion_net;
  wire [2:0]s01_axi_0_arsize_net;
  wire [0:0]s01_axi_0_arvalid_net;
  wire [63:0]s01_axi_0_awaddr_net;
  wire [1:0]s01_axi_0_awburst_net;
  wire [3:0]s01_axi_0_awcache_net;
  wire [1:0]s01_axi_0_awid_net;
  wire [7:0]s01_axi_0_awlen_net;
  wire [0:0]s01_axi_0_awlock_net;
  wire [2:0]s01_axi_0_awprot_net;
  wire [3:0]s01_axi_0_awqos_net;
  wire [0:0]s01_axi_0_awready_net;
  wire [3:0]s01_axi_0_awregion_net;
  wire [2:0]s01_axi_0_awsize_net;
  wire [0:0]s01_axi_0_awvalid_net;
  wire [1:0]s01_axi_0_bid_net;
  wire [0:0]s01_axi_0_bready_net;
  wire [1:0]s01_axi_0_bresp_net;
  wire [0:0]s01_axi_0_bvalid_net;
  wire [63:0]s01_axi_0_rdata_net;
  wire [1:0]s01_axi_0_rid_net;
  wire [0:0]s01_axi_0_rlast_net;
  wire [0:0]s01_axi_0_rready_net;
  wire [1:0]s01_axi_0_rresp_net;
  wire [0:0]s01_axi_0_rvalid_net;
  wire [63:0]s01_axi_0_wdata_net;
  wire [0:0]s01_axi_0_wlast_net;
  wire [0:0]s01_axi_0_wready_net;
  wire [7:0]s01_axi_0_wstrb_net;
  wire [0:0]s01_axi_0_wvalid_net;
  wire [63:0]s02_axi_0_araddr_net;
  wire [1:0]s02_axi_0_arburst_net;
  wire [3:0]s02_axi_0_arcache_net;
  wire [1:0]s02_axi_0_arid_net;
  wire [7:0]s02_axi_0_arlen_net;
  wire [0:0]s02_axi_0_arlock_net;
  wire [2:0]s02_axi_0_arprot_net;
  wire [3:0]s02_axi_0_arqos_net;
  wire [0:0]s02_axi_0_arready_net;
  wire [3:0]s02_axi_0_arregion_net;
  wire [2:0]s02_axi_0_arsize_net;
  wire [0:0]s02_axi_0_arvalid_net;
  wire [63:0]s02_axi_0_awaddr_net;
  wire [1:0]s02_axi_0_awburst_net;
  wire [3:0]s02_axi_0_awcache_net;
  wire [1:0]s02_axi_0_awid_net;
  wire [7:0]s02_axi_0_awlen_net;
  wire [0:0]s02_axi_0_awlock_net;
  wire [2:0]s02_axi_0_awprot_net;
  wire [3:0]s02_axi_0_awqos_net;
  wire [0:0]s02_axi_0_awready_net;
  wire [3:0]s02_axi_0_awregion_net;
  wire [2:0]s02_axi_0_awsize_net;
  wire [0:0]s02_axi_0_awvalid_net;
  wire [1:0]s02_axi_0_bid_net;
  wire [0:0]s02_axi_0_bready_net;
  wire [1:0]s02_axi_0_bresp_net;
  wire [0:0]s02_axi_0_bvalid_net;
  wire [63:0]s02_axi_0_rdata_net;
  wire [1:0]s02_axi_0_rid_net;
  wire [0:0]s02_axi_0_rlast_net;
  wire [0:0]s02_axi_0_rready_net;
  wire [1:0]s02_axi_0_rresp_net;
  wire [0:0]s02_axi_0_rvalid_net;
  wire [63:0]s02_axi_0_wdata_net;
  wire [0:0]s02_axi_0_wlast_net;
  wire [0:0]s02_axi_0_wready_net;
  wire [7:0]s02_axi_0_wstrb_net;
  wire [0:0]s02_axi_0_wvalid_net;
  wire [63:0]s03_axi_0_araddr_net;
  wire [1:0]s03_axi_0_arburst_net;
  wire [3:0]s03_axi_0_arcache_net;
  wire [1:0]s03_axi_0_arid_net;
  wire [7:0]s03_axi_0_arlen_net;
  wire [0:0]s03_axi_0_arlock_net;
  wire [2:0]s03_axi_0_arprot_net;
  wire [3:0]s03_axi_0_arqos_net;
  wire [0:0]s03_axi_0_arready_net;
  wire [3:0]s03_axi_0_arregion_net;
  wire [2:0]s03_axi_0_arsize_net;
  wire [0:0]s03_axi_0_arvalid_net;
  wire [63:0]s03_axi_0_awaddr_net;
  wire [1:0]s03_axi_0_awburst_net;
  wire [3:0]s03_axi_0_awcache_net;
  wire [1:0]s03_axi_0_awid_net;
  wire [7:0]s03_axi_0_awlen_net;
  wire [0:0]s03_axi_0_awlock_net;
  wire [2:0]s03_axi_0_awprot_net;
  wire [3:0]s03_axi_0_awqos_net;
  wire [0:0]s03_axi_0_awready_net;
  wire [3:0]s03_axi_0_awregion_net;
  wire [2:0]s03_axi_0_awsize_net;
  wire [0:0]s03_axi_0_awvalid_net;
  wire [1:0]s03_axi_0_bid_net;
  wire [0:0]s03_axi_0_bready_net;
  wire [1:0]s03_axi_0_bresp_net;
  wire [0:0]s03_axi_0_bvalid_net;
  wire [63:0]s03_axi_0_rdata_net;
  wire [1:0]s03_axi_0_rid_net;
  wire [0:0]s03_axi_0_rlast_net;
  wire [0:0]s03_axi_0_rready_net;
  wire [1:0]s03_axi_0_rresp_net;
  wire [0:0]s03_axi_0_rvalid_net;
  wire [63:0]s03_axi_0_wdata_net;
  wire [0:0]s03_axi_0_wlast_net;
  wire [0:0]s03_axi_0_wready_net;
  wire [7:0]s03_axi_0_wstrb_net;
  wire [0:0]s03_axi_0_wvalid_net;

  assign S00_AXI_0_arready[0] = s00_axi_0_arready_net;
  assign S00_AXI_0_awready[0] = s00_axi_0_awready_net;
  assign S00_AXI_0_bid[1:0] = s00_axi_0_bid_net;
  assign S00_AXI_0_bresp[1:0] = s00_axi_0_bresp_net;
  assign S00_AXI_0_bvalid[0] = s00_axi_0_bvalid_net;
  assign S00_AXI_0_rdata[63:0] = s00_axi_0_rdata_net;
  assign S00_AXI_0_rid[1:0] = s00_axi_0_rid_net;
  assign S00_AXI_0_rlast[0] = s00_axi_0_rlast_net;
  assign S00_AXI_0_rresp[1:0] = s00_axi_0_rresp_net;
  assign S00_AXI_0_rvalid[0] = s00_axi_0_rvalid_net;
  assign S00_AXI_0_wready[0] = s00_axi_0_wready_net;
  assign S01_AXI_0_arready[0] = s01_axi_0_arready_net;
  assign S01_AXI_0_awready[0] = s01_axi_0_awready_net;
  assign S01_AXI_0_bid[1:0] = s01_axi_0_bid_net;
  assign S01_AXI_0_bresp[1:0] = s01_axi_0_bresp_net;
  assign S01_AXI_0_bvalid[0] = s01_axi_0_bvalid_net;
  assign S01_AXI_0_rdata[63:0] = s01_axi_0_rdata_net;
  assign S01_AXI_0_rid[1:0] = s01_axi_0_rid_net;
  assign S01_AXI_0_rlast[0] = s01_axi_0_rlast_net;
  assign S01_AXI_0_rresp[1:0] = s01_axi_0_rresp_net;
  assign S01_AXI_0_rvalid[0] = s01_axi_0_rvalid_net;
  assign S01_AXI_0_wready[0] = s01_axi_0_wready_net;
  assign S02_AXI_0_arready[0] = s02_axi_0_arready_net;
  assign S02_AXI_0_awready[0] = s02_axi_0_awready_net;
  assign S02_AXI_0_bid[1:0] = s02_axi_0_bid_net;
  assign S02_AXI_0_bresp[1:0] = s02_axi_0_bresp_net;
  assign S02_AXI_0_bvalid[0] = s02_axi_0_bvalid_net;
  assign S02_AXI_0_rdata[63:0] = s02_axi_0_rdata_net;
  assign S02_AXI_0_rid[1:0] = s02_axi_0_rid_net;
  assign S02_AXI_0_rlast[0] = s02_axi_0_rlast_net;
  assign S02_AXI_0_rresp[1:0] = s02_axi_0_rresp_net;
  assign S02_AXI_0_rvalid[0] = s02_axi_0_rvalid_net;
  assign S02_AXI_0_wready[0] = s02_axi_0_wready_net;
  assign S03_AXI_0_arready[0] = s03_axi_0_arready_net;
  assign S03_AXI_0_awready[0] = s03_axi_0_awready_net;
  assign S03_AXI_0_bid[1:0] = s03_axi_0_bid_net;
  assign S03_AXI_0_bresp[1:0] = s03_axi_0_bresp_net;
  assign S03_AXI_0_bvalid[0] = s03_axi_0_bvalid_net;
  assign S03_AXI_0_rdata[63:0] = s03_axi_0_rdata_net;
  assign S03_AXI_0_rid[1:0] = s03_axi_0_rid_net;
  assign S03_AXI_0_rlast[0] = s03_axi_0_rlast_net;
  assign S03_AXI_0_rresp[1:0] = s03_axi_0_rresp_net;
  assign S03_AXI_0_rvalid[0] = s03_axi_0_rvalid_net;
  assign S03_AXI_0_wready[0] = s03_axi_0_wready_net;
  assign axi_clk_in_0_0_net = axi_clk_in_0_0;
  assign axi_rst_in_0_n_0_net = axi_rst_in_0_n_0;
  assign s00_axi_0_araddr_net = S00_AXI_0_araddr[63:0];
  assign s00_axi_0_arburst_net = S00_AXI_0_arburst[1:0];
  assign s00_axi_0_arcache_net = S00_AXI_0_arcache[3:0];
  assign s00_axi_0_arid_net = S00_AXI_0_arid[1:0];
  assign s00_axi_0_arlen_net = S00_AXI_0_arlen[7:0];
  assign s00_axi_0_arlock_net = S00_AXI_0_arlock[0];
  assign s00_axi_0_arprot_net = S00_AXI_0_arprot[2:0];
  assign s00_axi_0_arqos_net = S00_AXI_0_arqos[3:0];
  assign s00_axi_0_arregion_net = S00_AXI_0_arregion[3:0];
  assign s00_axi_0_arsize_net = S00_AXI_0_arsize[2:0];
  assign s00_axi_0_arvalid_net = S00_AXI_0_arvalid[0];
  assign s00_axi_0_awaddr_net = S00_AXI_0_awaddr[63:0];
  assign s00_axi_0_awburst_net = S00_AXI_0_awburst[1:0];
  assign s00_axi_0_awcache_net = S00_AXI_0_awcache[3:0];
  assign s00_axi_0_awid_net = S00_AXI_0_awid[1:0];
  assign s00_axi_0_awlen_net = S00_AXI_0_awlen[7:0];
  assign s00_axi_0_awlock_net = S00_AXI_0_awlock[0];
  assign s00_axi_0_awprot_net = S00_AXI_0_awprot[2:0];
  assign s00_axi_0_awqos_net = S00_AXI_0_awqos[3:0];
  assign s00_axi_0_awregion_net = S00_AXI_0_awregion[3:0];
  assign s00_axi_0_awsize_net = S00_AXI_0_awsize[2:0];
  assign s00_axi_0_awvalid_net = S00_AXI_0_awvalid[0];
  assign s00_axi_0_bready_net = S00_AXI_0_bready[0];
  assign s00_axi_0_rready_net = S00_AXI_0_rready[0];
  assign s00_axi_0_wdata_net = S00_AXI_0_wdata[63:0];
  assign s00_axi_0_wlast_net = S00_AXI_0_wlast[0];
  assign s00_axi_0_wstrb_net = S00_AXI_0_wstrb[7:0];
  assign s00_axi_0_wvalid_net = S00_AXI_0_wvalid[0];
  assign s01_axi_0_araddr_net = S01_AXI_0_araddr[63:0];
  assign s01_axi_0_arburst_net = S01_AXI_0_arburst[1:0];
  assign s01_axi_0_arcache_net = S01_AXI_0_arcache[3:0];
  assign s01_axi_0_arid_net = S01_AXI_0_arid[1:0];
  assign s01_axi_0_arlen_net = S01_AXI_0_arlen[7:0];
  assign s01_axi_0_arlock_net = S01_AXI_0_arlock[0];
  assign s01_axi_0_arprot_net = S01_AXI_0_arprot[2:0];
  assign s01_axi_0_arqos_net = S01_AXI_0_arqos[3:0];
  assign s01_axi_0_arregion_net = S01_AXI_0_arregion[3:0];
  assign s01_axi_0_arsize_net = S01_AXI_0_arsize[2:0];
  assign s01_axi_0_arvalid_net = S01_AXI_0_arvalid[0];
  assign s01_axi_0_awaddr_net = S01_AXI_0_awaddr[63:0];
  assign s01_axi_0_awburst_net = S01_AXI_0_awburst[1:0];
  assign s01_axi_0_awcache_net = S01_AXI_0_awcache[3:0];
  assign s01_axi_0_awid_net = S01_AXI_0_awid[1:0];
  assign s01_axi_0_awlen_net = S01_AXI_0_awlen[7:0];
  assign s01_axi_0_awlock_net = S01_AXI_0_awlock[0];
  assign s01_axi_0_awprot_net = S01_AXI_0_awprot[2:0];
  assign s01_axi_0_awqos_net = S01_AXI_0_awqos[3:0];
  assign s01_axi_0_awregion_net = S01_AXI_0_awregion[3:0];
  assign s01_axi_0_awsize_net = S01_AXI_0_awsize[2:0];
  assign s01_axi_0_awvalid_net = S01_AXI_0_awvalid[0];
  assign s01_axi_0_bready_net = S01_AXI_0_bready[0];
  assign s01_axi_0_rready_net = S01_AXI_0_rready[0];
  assign s01_axi_0_wdata_net = S01_AXI_0_wdata[63:0];
  assign s01_axi_0_wlast_net = S01_AXI_0_wlast[0];
  assign s01_axi_0_wstrb_net = S01_AXI_0_wstrb[7:0];
  assign s01_axi_0_wvalid_net = S01_AXI_0_wvalid[0];
  assign s02_axi_0_araddr_net = S02_AXI_0_araddr[63:0];
  assign s02_axi_0_arburst_net = S02_AXI_0_arburst[1:0];
  assign s02_axi_0_arcache_net = S02_AXI_0_arcache[3:0];
  assign s02_axi_0_arid_net = S02_AXI_0_arid[1:0];
  assign s02_axi_0_arlen_net = S02_AXI_0_arlen[7:0];
  assign s02_axi_0_arlock_net = S02_AXI_0_arlock[0];
  assign s02_axi_0_arprot_net = S02_AXI_0_arprot[2:0];
  assign s02_axi_0_arqos_net = S02_AXI_0_arqos[3:0];
  assign s02_axi_0_arregion_net = S02_AXI_0_arregion[3:0];
  assign s02_axi_0_arsize_net = S02_AXI_0_arsize[2:0];
  assign s02_axi_0_arvalid_net = S02_AXI_0_arvalid[0];
  assign s02_axi_0_awaddr_net = S02_AXI_0_awaddr[63:0];
  assign s02_axi_0_awburst_net = S02_AXI_0_awburst[1:0];
  assign s02_axi_0_awcache_net = S02_AXI_0_awcache[3:0];
  assign s02_axi_0_awid_net = S02_AXI_0_awid[1:0];
  assign s02_axi_0_awlen_net = S02_AXI_0_awlen[7:0];
  assign s02_axi_0_awlock_net = S02_AXI_0_awlock[0];
  assign s02_axi_0_awprot_net = S02_AXI_0_awprot[2:0];
  assign s02_axi_0_awqos_net = S02_AXI_0_awqos[3:0];
  assign s02_axi_0_awregion_net = S02_AXI_0_awregion[3:0];
  assign s02_axi_0_awsize_net = S02_AXI_0_awsize[2:0];
  assign s02_axi_0_awvalid_net = S02_AXI_0_awvalid[0];
  assign s02_axi_0_bready_net = S02_AXI_0_bready[0];
  assign s02_axi_0_rready_net = S02_AXI_0_rready[0];
  assign s02_axi_0_wdata_net = S02_AXI_0_wdata[63:0];
  assign s02_axi_0_wlast_net = S02_AXI_0_wlast[0];
  assign s02_axi_0_wstrb_net = S02_AXI_0_wstrb[7:0];
  assign s02_axi_0_wvalid_net = S02_AXI_0_wvalid[0];
  assign s03_axi_0_araddr_net = S03_AXI_0_araddr[63:0];
  assign s03_axi_0_arburst_net = S03_AXI_0_arburst[1:0];
  assign s03_axi_0_arcache_net = S03_AXI_0_arcache[3:0];
  assign s03_axi_0_arid_net = S03_AXI_0_arid[1:0];
  assign s03_axi_0_arlen_net = S03_AXI_0_arlen[7:0];
  assign s03_axi_0_arlock_net = S03_AXI_0_arlock[0];
  assign s03_axi_0_arprot_net = S03_AXI_0_arprot[2:0];
  assign s03_axi_0_arqos_net = S03_AXI_0_arqos[3:0];
  assign s03_axi_0_arregion_net = S03_AXI_0_arregion[3:0];
  assign s03_axi_0_arsize_net = S03_AXI_0_arsize[2:0];
  assign s03_axi_0_arvalid_net = S03_AXI_0_arvalid[0];
  assign s03_axi_0_awaddr_net = S03_AXI_0_awaddr[63:0];
  assign s03_axi_0_awburst_net = S03_AXI_0_awburst[1:0];
  assign s03_axi_0_awcache_net = S03_AXI_0_awcache[3:0];
  assign s03_axi_0_awid_net = S03_AXI_0_awid[1:0];
  assign s03_axi_0_awlen_net = S03_AXI_0_awlen[7:0];
  assign s03_axi_0_awlock_net = S03_AXI_0_awlock[0];
  assign s03_axi_0_awprot_net = S03_AXI_0_awprot[2:0];
  assign s03_axi_0_awqos_net = S03_AXI_0_awqos[3:0];
  assign s03_axi_0_awregion_net = S03_AXI_0_awregion[3:0];
  assign s03_axi_0_awsize_net = S03_AXI_0_awsize[2:0];
  assign s03_axi_0_awvalid_net = S03_AXI_0_awvalid[0];
  assign s03_axi_0_bready_net = S03_AXI_0_bready[0];
  assign s03_axi_0_rready_net = S03_AXI_0_rready[0];
  assign s03_axi_0_wdata_net = S03_AXI_0_wdata[63:0];
  assign s03_axi_0_wlast_net = S03_AXI_0_wlast[0];
  assign s03_axi_0_wstrb_net = S03_AXI_0_wstrb[7:0];
  assign s03_axi_0_wvalid_net = S03_AXI_0_wvalid[0];
  noc_wrapper noc_wrapper_i
       (.S00_AXI_0_araddr(s00_axi_0_araddr_net),
        .S00_AXI_0_arburst(s00_axi_0_arburst_net),
        .S00_AXI_0_arcache(s00_axi_0_arcache_net),
        .S00_AXI_0_arid(s00_axi_0_arid_net),
        .S00_AXI_0_arlen(s00_axi_0_arlen_net),
        .S00_AXI_0_arlock(s00_axi_0_arlock_net),
        .S00_AXI_0_arprot(s00_axi_0_arprot_net),
        .S00_AXI_0_arqos(s00_axi_0_arqos_net),
        .S00_AXI_0_arready(s00_axi_0_arready_net),
        .S00_AXI_0_arregion(s00_axi_0_arregion_net),
        .S00_AXI_0_arsize(s00_axi_0_arsize_net),
        .S00_AXI_0_arvalid(s00_axi_0_arvalid_net),
        .S00_AXI_0_awaddr(s00_axi_0_awaddr_net),
        .S00_AXI_0_awburst(s00_axi_0_awburst_net),
        .S00_AXI_0_awcache(s00_axi_0_awcache_net),
        .S00_AXI_0_awid(s00_axi_0_awid_net),
        .S00_AXI_0_awlen(s00_axi_0_awlen_net),
        .S00_AXI_0_awlock(s00_axi_0_awlock_net),
        .S00_AXI_0_awprot(s00_axi_0_awprot_net),
        .S00_AXI_0_awqos(s00_axi_0_awqos_net),
        .S00_AXI_0_awready(s00_axi_0_awready_net),
        .S00_AXI_0_awregion(s00_axi_0_awregion_net),
        .S00_AXI_0_awsize(s00_axi_0_awsize_net),
        .S00_AXI_0_awvalid(s00_axi_0_awvalid_net),
        .S00_AXI_0_bid(s00_axi_0_bid_net),
        .S00_AXI_0_bready(s00_axi_0_bready_net),
        .S00_AXI_0_bresp(s00_axi_0_bresp_net),
        .S00_AXI_0_bvalid(s00_axi_0_bvalid_net),
        .S00_AXI_0_rdata(s00_axi_0_rdata_net),
        .S00_AXI_0_rid(s00_axi_0_rid_net),
        .S00_AXI_0_rlast(s00_axi_0_rlast_net),
        .S00_AXI_0_rready(s00_axi_0_rready_net),
        .S00_AXI_0_rresp(s00_axi_0_rresp_net),
        .S00_AXI_0_rvalid(s00_axi_0_rvalid_net),
        .S00_AXI_0_wdata(s00_axi_0_wdata_net),
        .S00_AXI_0_wlast(s00_axi_0_wlast_net),
        .S00_AXI_0_wready(s00_axi_0_wready_net),
        .S00_AXI_0_wstrb(s00_axi_0_wstrb_net),
        .S00_AXI_0_wvalid(s00_axi_0_wvalid_net),
        .S01_AXI_0_araddr(s01_axi_0_araddr_net),
        .S01_AXI_0_arburst(s01_axi_0_arburst_net),
        .S01_AXI_0_arcache(s01_axi_0_arcache_net),
        .S01_AXI_0_arid(s01_axi_0_arid_net),
        .S01_AXI_0_arlen(s01_axi_0_arlen_net),
        .S01_AXI_0_arlock(s01_axi_0_arlock_net),
        .S01_AXI_0_arprot(s01_axi_0_arprot_net),
        .S01_AXI_0_arqos(s01_axi_0_arqos_net),
        .S01_AXI_0_arready(s01_axi_0_arready_net),
        .S01_AXI_0_arregion(s01_axi_0_arregion_net),
        .S01_AXI_0_arsize(s01_axi_0_arsize_net),
        .S01_AXI_0_arvalid(s01_axi_0_arvalid_net),
        .S01_AXI_0_awaddr(s01_axi_0_awaddr_net),
        .S01_AXI_0_awburst(s01_axi_0_awburst_net),
        .S01_AXI_0_awcache(s01_axi_0_awcache_net),
        .S01_AXI_0_awid(s01_axi_0_awid_net),
        .S01_AXI_0_awlen(s01_axi_0_awlen_net),
        .S01_AXI_0_awlock(s01_axi_0_awlock_net),
        .S01_AXI_0_awprot(s01_axi_0_awprot_net),
        .S01_AXI_0_awqos(s01_axi_0_awqos_net),
        .S01_AXI_0_awready(s01_axi_0_awready_net),
        .S01_AXI_0_awregion(s01_axi_0_awregion_net),
        .S01_AXI_0_awsize(s01_axi_0_awsize_net),
        .S01_AXI_0_awvalid(s01_axi_0_awvalid_net),
        .S01_AXI_0_bid(s01_axi_0_bid_net),
        .S01_AXI_0_bready(s01_axi_0_bready_net),
        .S01_AXI_0_bresp(s01_axi_0_bresp_net),
        .S01_AXI_0_bvalid(s01_axi_0_bvalid_net),
        .S01_AXI_0_rdata(s01_axi_0_rdata_net),
        .S01_AXI_0_rid(s01_axi_0_rid_net),
        .S01_AXI_0_rlast(s01_axi_0_rlast_net),
        .S01_AXI_0_rready(s01_axi_0_rready_net),
        .S01_AXI_0_rresp(s01_axi_0_rresp_net),
        .S01_AXI_0_rvalid(s01_axi_0_rvalid_net),
        .S01_AXI_0_wdata(s01_axi_0_wdata_net),
        .S01_AXI_0_wlast(s01_axi_0_wlast_net),
        .S01_AXI_0_wready(s01_axi_0_wready_net),
        .S01_AXI_0_wstrb(s01_axi_0_wstrb_net),
        .S01_AXI_0_wvalid(s01_axi_0_wvalid_net),
        .S02_AXI_0_araddr(s02_axi_0_araddr_net),
        .S02_AXI_0_arburst(s02_axi_0_arburst_net),
        .S02_AXI_0_arcache(s02_axi_0_arcache_net),
        .S02_AXI_0_arid(s02_axi_0_arid_net),
        .S02_AXI_0_arlen(s02_axi_0_arlen_net),
        .S02_AXI_0_arlock(s02_axi_0_arlock_net),
        .S02_AXI_0_arprot(s02_axi_0_arprot_net),
        .S02_AXI_0_arqos(s02_axi_0_arqos_net),
        .S02_AXI_0_arready(s02_axi_0_arready_net),
        .S02_AXI_0_arregion(s02_axi_0_arregion_net),
        .S02_AXI_0_arsize(s02_axi_0_arsize_net),
        .S02_AXI_0_arvalid(s02_axi_0_arvalid_net),
        .S02_AXI_0_awaddr(s02_axi_0_awaddr_net),
        .S02_AXI_0_awburst(s02_axi_0_awburst_net),
        .S02_AXI_0_awcache(s02_axi_0_awcache_net),
        .S02_AXI_0_awid(s02_axi_0_awid_net),
        .S02_AXI_0_awlen(s02_axi_0_awlen_net),
        .S02_AXI_0_awlock(s02_axi_0_awlock_net),
        .S02_AXI_0_awprot(s02_axi_0_awprot_net),
        .S02_AXI_0_awqos(s02_axi_0_awqos_net),
        .S02_AXI_0_awready(s02_axi_0_awready_net),
        .S02_AXI_0_awregion(s02_axi_0_awregion_net),
        .S02_AXI_0_awsize(s02_axi_0_awsize_net),
        .S02_AXI_0_awvalid(s02_axi_0_awvalid_net),
        .S02_AXI_0_bid(s02_axi_0_bid_net),
        .S02_AXI_0_bready(s02_axi_0_bready_net),
        .S02_AXI_0_bresp(s02_axi_0_bresp_net),
        .S02_AXI_0_bvalid(s02_axi_0_bvalid_net),
        .S02_AXI_0_rdata(s02_axi_0_rdata_net),
        .S02_AXI_0_rid(s02_axi_0_rid_net),
        .S02_AXI_0_rlast(s02_axi_0_rlast_net),
        .S02_AXI_0_rready(s02_axi_0_rready_net),
        .S02_AXI_0_rresp(s02_axi_0_rresp_net),
        .S02_AXI_0_rvalid(s02_axi_0_rvalid_net),
        .S02_AXI_0_wdata(s02_axi_0_wdata_net),
        .S02_AXI_0_wlast(s02_axi_0_wlast_net),
        .S02_AXI_0_wready(s02_axi_0_wready_net),
        .S02_AXI_0_wstrb(s02_axi_0_wstrb_net),
        .S02_AXI_0_wvalid(s02_axi_0_wvalid_net),
        .S03_AXI_0_araddr(s03_axi_0_araddr_net),
        .S03_AXI_0_arburst(s03_axi_0_arburst_net),
        .S03_AXI_0_arcache(s03_axi_0_arcache_net),
        .S03_AXI_0_arid(s03_axi_0_arid_net),
        .S03_AXI_0_arlen(s03_axi_0_arlen_net),
        .S03_AXI_0_arlock(s03_axi_0_arlock_net),
        .S03_AXI_0_arprot(s03_axi_0_arprot_net),
        .S03_AXI_0_arqos(s03_axi_0_arqos_net),
        .S03_AXI_0_arready(s03_axi_0_arready_net),
        .S03_AXI_0_arregion(s03_axi_0_arregion_net),
        .S03_AXI_0_arsize(s03_axi_0_arsize_net),
        .S03_AXI_0_arvalid(s03_axi_0_arvalid_net),
        .S03_AXI_0_awaddr(s03_axi_0_awaddr_net),
        .S03_AXI_0_awburst(s03_axi_0_awburst_net),
        .S03_AXI_0_awcache(s03_axi_0_awcache_net),
        .S03_AXI_0_awid(s03_axi_0_awid_net),
        .S03_AXI_0_awlen(s03_axi_0_awlen_net),
        .S03_AXI_0_awlock(s03_axi_0_awlock_net),
        .S03_AXI_0_awprot(s03_axi_0_awprot_net),
        .S03_AXI_0_awqos(s03_axi_0_awqos_net),
        .S03_AXI_0_awready(s03_axi_0_awready_net),
        .S03_AXI_0_awregion(s03_axi_0_awregion_net),
        .S03_AXI_0_awsize(s03_axi_0_awsize_net),
        .S03_AXI_0_awvalid(s03_axi_0_awvalid_net),
        .S03_AXI_0_bid(s03_axi_0_bid_net),
        .S03_AXI_0_bready(s03_axi_0_bready_net),
        .S03_AXI_0_bresp(s03_axi_0_bresp_net),
        .S03_AXI_0_bvalid(s03_axi_0_bvalid_net),
        .S03_AXI_0_rdata(s03_axi_0_rdata_net),
        .S03_AXI_0_rid(s03_axi_0_rid_net),
        .S03_AXI_0_rlast(s03_axi_0_rlast_net),
        .S03_AXI_0_rready(s03_axi_0_rready_net),
        .S03_AXI_0_rresp(s03_axi_0_rresp_net),
        .S03_AXI_0_rvalid(s03_axi_0_rvalid_net),
        .S03_AXI_0_wdata(s03_axi_0_wdata_net),
        .S03_AXI_0_wlast(s03_axi_0_wlast_net),
        .S03_AXI_0_wready(s03_axi_0_wready_net),
        .S03_AXI_0_wstrb(s03_axi_0_wstrb_net),
        .S03_AXI_0_wvalid(s03_axi_0_wvalid_net),
        .axi_clk_in_0_0(axi_clk_in_0_0_net),
        .axi_rst_in_0_n_0(axi_rst_in_0_n_0_net));
  xlnoc xlnoc_i
       (.nps_0_MNPP_S_credit_rdy(nps_0_mnpp_s_credit_rdy_net),
        .nps_0_MNPP_S_credit_return(nps_0_mnpp_s_credit_return_net),
        .nps_0_MNPP_S_flit(nps_0_mnpp_s_flit_net),
        .nps_0_MNPP_S_valid(nps_0_mnpp_s_valid_net),
        .nps_0_SNPP_S_credit_rdy(nps_0_snpp_s_credit_rdy_net),
        .nps_0_SNPP_S_credit_return(nps_0_snpp_s_credit_return_net),
        .nps_0_SNPP_S_flit(nps_0_snpp_s_flit_net),
        .nps_0_SNPP_S_valid(nps_0_snpp_s_valid_net),
        .nps_2_MNPP_S_credit_rdy(nps_2_mnpp_s_credit_rdy_net),
        .nps_2_MNPP_S_credit_return(nps_2_mnpp_s_credit_return_net),
        .nps_2_MNPP_S_flit(nps_2_mnpp_s_flit_net),
        .nps_2_MNPP_S_valid(nps_2_mnpp_s_valid_net),
        .nps_2_SNPP_S_credit_rdy(nps_2_snpp_s_credit_rdy_net),
        .nps_2_SNPP_S_credit_return(nps_2_snpp_s_credit_return_net),
        .nps_2_SNPP_S_flit(nps_2_snpp_s_flit_net),
        .nps_2_SNPP_S_valid(nps_2_snpp_s_valid_net),
        .nps_3_MNPP_S_credit_rdy(nps_3_mnpp_s_credit_rdy_net),
        .nps_3_MNPP_S_credit_return(nps_3_mnpp_s_credit_return_net),
        .nps_3_MNPP_S_flit(nps_3_mnpp_s_flit_net),
        .nps_3_MNPP_S_valid(nps_3_mnpp_s_valid_net),
        .nps_3_SNPP_S_credit_rdy(nps_3_snpp_s_credit_rdy_net),
        .nps_3_SNPP_S_credit_return(nps_3_snpp_s_credit_return_net),
        .nps_3_SNPP_S_flit(nps_3_snpp_s_flit_net),
        .nps_3_SNPP_S_valid(nps_3_snpp_s_valid_net),
        .nps_4_MNPP_S_credit_rdy(nps_4_mnpp_s_credit_rdy_net),
        .nps_4_MNPP_S_credit_return(nps_4_mnpp_s_credit_return_net),
        .nps_4_MNPP_S_flit(nps_4_mnpp_s_flit_net),
        .nps_4_MNPP_S_valid(nps_4_mnpp_s_valid_net),
        .nps_4_SNPP_S_credit_rdy(nps_4_snpp_s_credit_rdy_net),
        .nps_4_SNPP_S_credit_return(nps_4_snpp_s_credit_return_net),
        .nps_4_SNPP_S_flit(nps_4_snpp_s_flit_net),
        .nps_4_SNPP_S_valid(nps_4_snpp_s_valid_net),
        .nps_6_MNPP_S_credit_rdy(nps_6_mnpp_s_credit_rdy_net),
        .nps_6_MNPP_S_credit_return(nps_6_mnpp_s_credit_return_net),
        .nps_6_MNPP_S_flit(nps_6_mnpp_s_flit_net),
        .nps_6_MNPP_S_valid(nps_6_mnpp_s_valid_net),
        .nps_6_SNPP_S_credit_rdy(nps_6_snpp_s_credit_rdy_net),
        .nps_6_SNPP_S_credit_return(nps_6_snpp_s_credit_return_net),
        .nps_6_SNPP_S_flit(nps_6_snpp_s_flit_net),
        .nps_6_SNPP_S_valid(nps_6_snpp_s_valid_net),
        .nps_7_MNPP_S_credit_rdy(nps_7_mnpp_s_credit_rdy_net),
        .nps_7_MNPP_S_credit_return(nps_7_mnpp_s_credit_return_net),
        .nps_7_MNPP_S_flit(nps_7_mnpp_s_flit_net),
        .nps_7_MNPP_S_valid(nps_7_mnpp_s_valid_net),
        .nps_7_SNPP_S_credit_rdy(nps_7_snpp_s_credit_rdy_net),
        .nps_7_SNPP_S_credit_return(nps_7_snpp_s_credit_return_net),
        .nps_7_SNPP_S_flit(nps_7_snpp_s_flit_net),
        .nps_7_SNPP_S_valid(nps_7_snpp_s_valid_net));

assign noc_wrapper_i.noc_i.axi_noc_0.inst.s03_axi_nmu_if_noc_npp_in_noc_credit_rdy = nps_0_mnpp_s_credit_rdy_net;
assign nps_0_mnpp_s_credit_return_net = noc_wrapper_i.noc_i.axi_noc_0.inst.s03_axi_nmu_if_noc_npp_in_noc_credit_return;
assign noc_wrapper_i.noc_i.axi_noc_0.inst.s03_axi_nmu_if_noc_npp_in_noc_flit = nps_0_mnpp_s_flit_net;
assign noc_wrapper_i.noc_i.axi_noc_0.inst.s03_axi_nmu_if_noc_npp_in_noc_valid = nps_0_mnpp_s_valid_net;
assign nps_0_snpp_s_credit_rdy_net = noc_wrapper_i.noc_i.axi_noc_0.inst.s03_axi_nmu_if_noc_npp_out_noc_credit_rdy;
assign noc_wrapper_i.noc_i.axi_noc_0.inst.s03_axi_nmu_if_noc_npp_out_noc_credit_return = nps_0_snpp_s_credit_return_net;
assign nps_0_snpp_s_flit_net = noc_wrapper_i.noc_i.axi_noc_0.inst.s03_axi_nmu_if_noc_npp_out_noc_flit;
assign nps_0_snpp_s_valid_net = noc_wrapper_i.noc_i.axi_noc_0.inst.s03_axi_nmu_if_noc_npp_out_noc_valid;
assign noc_wrapper_i.noc_i.axi_noc_0.inst.s01_axi_nmu_if_noc_npp_in_noc_credit_rdy = nps_2_mnpp_s_credit_rdy_net;
assign nps_2_mnpp_s_credit_return_net = noc_wrapper_i.noc_i.axi_noc_0.inst.s01_axi_nmu_if_noc_npp_in_noc_credit_return;
assign noc_wrapper_i.noc_i.axi_noc_0.inst.s01_axi_nmu_if_noc_npp_in_noc_flit = nps_2_mnpp_s_flit_net;
assign noc_wrapper_i.noc_i.axi_noc_0.inst.s01_axi_nmu_if_noc_npp_in_noc_valid = nps_2_mnpp_s_valid_net;
assign nps_2_snpp_s_credit_rdy_net = noc_wrapper_i.noc_i.axi_noc_0.inst.s01_axi_nmu_if_noc_npp_out_noc_credit_rdy;
assign noc_wrapper_i.noc_i.axi_noc_0.inst.s01_axi_nmu_if_noc_npp_out_noc_credit_return = nps_2_snpp_s_credit_return_net;
assign nps_2_snpp_s_flit_net = noc_wrapper_i.noc_i.axi_noc_0.inst.s01_axi_nmu_if_noc_npp_out_noc_flit;
assign nps_2_snpp_s_valid_net = noc_wrapper_i.noc_i.axi_noc_0.inst.s01_axi_nmu_if_noc_npp_out_noc_valid;
assign noc_wrapper_i.noc_i.axi_noc_0.inst.s02_axi_nmu_if_noc_npp_in_noc_credit_rdy = nps_3_mnpp_s_credit_rdy_net;
assign nps_3_mnpp_s_credit_return_net = noc_wrapper_i.noc_i.axi_noc_0.inst.s02_axi_nmu_if_noc_npp_in_noc_credit_return;
assign noc_wrapper_i.noc_i.axi_noc_0.inst.s02_axi_nmu_if_noc_npp_in_noc_flit = nps_3_mnpp_s_flit_net;
assign noc_wrapper_i.noc_i.axi_noc_0.inst.s02_axi_nmu_if_noc_npp_in_noc_valid = nps_3_mnpp_s_valid_net;
assign nps_3_snpp_s_credit_rdy_net = noc_wrapper_i.noc_i.axi_noc_0.inst.s02_axi_nmu_if_noc_npp_out_noc_credit_rdy;
assign noc_wrapper_i.noc_i.axi_noc_0.inst.s02_axi_nmu_if_noc_npp_out_noc_credit_return = nps_3_snpp_s_credit_return_net;
assign nps_3_snpp_s_flit_net = noc_wrapper_i.noc_i.axi_noc_0.inst.s02_axi_nmu_if_noc_npp_out_noc_flit;
assign nps_3_snpp_s_valid_net = noc_wrapper_i.noc_i.axi_noc_0.inst.s02_axi_nmu_if_noc_npp_out_noc_valid;
assign noc_wrapper_i.noc_i.axi_noc_0.inst.m00_axi_nsu_if_noc_npp_in_noc_credit_rdy = nps_4_mnpp_s_credit_rdy_net;
assign nps_4_mnpp_s_credit_return_net = noc_wrapper_i.noc_i.axi_noc_0.inst.m00_axi_nsu_if_noc_npp_in_noc_credit_return;
assign noc_wrapper_i.noc_i.axi_noc_0.inst.m00_axi_nsu_if_noc_npp_in_noc_flit = nps_4_mnpp_s_flit_net;
assign noc_wrapper_i.noc_i.axi_noc_0.inst.m00_axi_nsu_if_noc_npp_in_noc_valid = nps_4_mnpp_s_valid_net;
assign nps_4_snpp_s_credit_rdy_net = noc_wrapper_i.noc_i.axi_noc_0.inst.m00_axi_nsu_if_noc_npp_out_noc_credit_rdy;
assign noc_wrapper_i.noc_i.axi_noc_0.inst.m00_axi_nsu_if_noc_npp_out_noc_credit_return = nps_4_snpp_s_credit_return_net;
assign nps_4_snpp_s_flit_net = noc_wrapper_i.noc_i.axi_noc_0.inst.m00_axi_nsu_if_noc_npp_out_noc_flit;
assign nps_4_snpp_s_valid_net = noc_wrapper_i.noc_i.axi_noc_0.inst.m00_axi_nsu_if_noc_npp_out_noc_valid;
assign noc_wrapper_i.noc_i.axi_noc_0.inst.s00_axi_nmu_if_noc_npp_in_noc_credit_rdy = nps_6_mnpp_s_credit_rdy_net;
assign nps_6_mnpp_s_credit_return_net = noc_wrapper_i.noc_i.axi_noc_0.inst.s00_axi_nmu_if_noc_npp_in_noc_credit_return;
assign noc_wrapper_i.noc_i.axi_noc_0.inst.s00_axi_nmu_if_noc_npp_in_noc_flit = nps_6_mnpp_s_flit_net;
assign noc_wrapper_i.noc_i.axi_noc_0.inst.s00_axi_nmu_if_noc_npp_in_noc_valid = nps_6_mnpp_s_valid_net;
assign nps_6_snpp_s_credit_rdy_net = noc_wrapper_i.noc_i.axi_noc_0.inst.s00_axi_nmu_if_noc_npp_out_noc_credit_rdy;
assign noc_wrapper_i.noc_i.axi_noc_0.inst.s00_axi_nmu_if_noc_npp_out_noc_credit_return = nps_6_snpp_s_credit_return_net;
assign nps_6_snpp_s_flit_net = noc_wrapper_i.noc_i.axi_noc_0.inst.s00_axi_nmu_if_noc_npp_out_noc_flit;
assign nps_6_snpp_s_valid_net = noc_wrapper_i.noc_i.axi_noc_0.inst.s00_axi_nmu_if_noc_npp_out_noc_valid;
assign noc_wrapper_i.noc_i.axi_noc_0.inst.m01_axi_nsu_if_noc_npp_in_noc_credit_rdy = nps_7_mnpp_s_credit_rdy_net;
assign nps_7_mnpp_s_credit_return_net = noc_wrapper_i.noc_i.axi_noc_0.inst.m01_axi_nsu_if_noc_npp_in_noc_credit_return;
assign noc_wrapper_i.noc_i.axi_noc_0.inst.m01_axi_nsu_if_noc_npp_in_noc_flit = nps_7_mnpp_s_flit_net;
assign noc_wrapper_i.noc_i.axi_noc_0.inst.m01_axi_nsu_if_noc_npp_in_noc_valid = nps_7_mnpp_s_valid_net;
assign nps_7_snpp_s_credit_rdy_net = noc_wrapper_i.noc_i.axi_noc_0.inst.m01_axi_nsu_if_noc_npp_out_noc_credit_rdy;
assign noc_wrapper_i.noc_i.axi_noc_0.inst.m01_axi_nsu_if_noc_npp_out_noc_credit_return = nps_7_snpp_s_credit_return_net;
assign nps_7_snpp_s_flit_net = noc_wrapper_i.noc_i.axi_noc_0.inst.m01_axi_nsu_if_noc_npp_out_noc_flit;
assign nps_7_snpp_s_valid_net = noc_wrapper_i.noc_i.axi_noc_0.inst.m01_axi_nsu_if_noc_npp_out_noc_valid;

endmodule