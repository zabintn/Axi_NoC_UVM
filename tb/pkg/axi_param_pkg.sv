package axi_param_pkg;

	parameter int DATA_WIDTH=64;
	parameter int ADDR_WIDTH=64;
	parameter int ID_WIDTH=2;
	parameter int LEN_WIDTH  = 8;
	parameter int SIZE_WIDTH = 3;
	parameter int BURST_TYPE = 2;
	parameter logic [ADDR_WIDTH-1:0] BASE0 = 64'h0000_0201_0000_0000;
	parameter logic [ADDR_WIDTH-1:0] TOP0  = 64'h0000_0201_001F_FFFF;
	parameter logic [ADDR_WIDTH-1:0] BASE1 = 64'h0000_0201_4000_0000;
	parameter logic [ADDR_WIDTH-1:0] TOP1  = 64'h0000_0201_401F_FFFF;
	parameter logic [ADDR_WIDTH-1:0] ADDRESS_CEIL=32'hFFFF_FFFF;
	parameter int MASTER_NUM=4;
endpackage

