# ----------------------------------------
# Vivado xsim-based Makefile
# Compile -> Elaborate -> Simulate flow
# ----------------------------------------

TEST ?= axi_base_test
UVM_VERBOSITY ?= UVM_MEDIUM
SEED ?= random
CLK_FREQUENCY ?= 100

RTL_DIR   = ../../AXI_NoC/xsim/
TB_DIR    = .
SIM_DIR   = .

TOP       = axi_tb_top
SNAPSHOT  = axi_tb_top_snap
TIMESCALE = 1ns/1ps
RTL_SRC   = $(RTL_DIR)/vlog.prj \
	    $(RTL_DIR)/vhdl.prj
TB_SRC    = $(TB_DIR)/compile.f
.PHONY: compile elaborate simulate run clean

# Step 1: Compile RTL + testbench sources
compile:
	xvlog --sv -prj $(RTL_DIR)/vlog.prj -L uvm
	xvhdl -prj $(RTL_DIR)/vhdl.prj
	xvlog --sv -f $(TB_SRC) -L uvm	
# Step 2: Elaborate design into a simulation snapshot
elaborate: compile
	xelab work.$(TOP) xil_defaultlib.glbl \
		--relax --debug typical \
		-timescale $(TIMESCALE) -s $(SNAPSHOT) \
		-L xil_defaultlib -L noc_nps_v1_0_2 \
		-L noc_nmu_sim_v1_0_0 -L noc_hbm_nmu_sim_v1_0_0 \
		-L noc_nsu_sim_v1_0_1 \
		-L xlconstant_v1_1_10 -L axi_bram_ctrl_v4_1_13 \
		-L emb_mem_gen_v1_0_11 -L clk_gen_sim_v1_0_6 \
		-L uvm -L unisims_ver -L unimacro_ver -L secureip -L xpm

# Step 3: Run simulation:
simulate: elaborate
		cp -f $(RTL_DIR)/nocattrs.dat .
		xsim $(SNAPSHOT) -runall \
		-testplusarg "UVM_TESTNAME=$(TEST)" \
		-testplusarg "UVM_VERBOSITY=$(UVM_VERBOSITY)"\
                -testplusarg "CLK_FREQUENCY=$(CLK_FREQUENCY)"\
		-log xsim_$(TEST).log

gui_sim: elaborate
	xsim $(SNAPSHOT) -gui \
		-testplusarg "UVM_TESTNAME=$(TEST)" \
		-testplusarg "UVM_VERBOSITY=$(UVM_VERBOSITY)"\
                -testplusarg "CLK_FREQUENCY=$(CLK_FREQUENCY)"\
		-log xsim_$(TEST).log

# Convenience target: does all three in order
all: compile elaborate simulate
allg: compile elaborate gui_sim

clean:
	rm -rf xsim.dir *.log *.jou *.pb *.wdb .Xil xelab.pb webtalk* 
