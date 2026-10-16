# ----------------------------------------
# Vivado xsim-based Makefile
# Compile -> Elaborate -> Simulate flow
# ----------------------------------------
COV_DIR      = cov_db
CC_DIR       = cov_code
REGRESS_DIR  = regress_results

TEST         ?= axi_base_test
TESTLIST     ?= axi_rd_wr_test axi_write_test axi_fixed_burst_write_test axi_incr_burst_write_test axi_wrap_burst_write_test axi_per_master_test
NUM_RUNS     ?= 1
UVM_VERBOSITY ?= UVM_MEDIUM
SEED_BASE    ?= 1
CLK_FREQUENCY ?= 100

# Regression test selection (driven from the command line):
#   make regress TESTLIST="a b c"  -> those tests
#   make regress TEST=a            -> only test a
#   make regress                   -> default TESTLIST
ifneq ($(filter command line environment,$(origin TESTLIST)),)
  REGRESS_TESTS := $(TESTLIST)
else ifneq ($(filter command line environment,$(origin TEST)),)
  REGRESS_TESTS := $(TEST)
else
  REGRESS_TESTS := $(TESTLIST)
endif

RTL_DIR   = ../../xsim
TB_DIR    = .
SIM_DIR   = .

TOP       = axi_tb_top
SNAPSHOT  = axi_tb_top_snap
TIMESCALE = 1ns/1ps
RTL_SRC   = $(RTL_DIR)/vlog.prj \
            $(RTL_DIR)/vhdl.prj
TB_SRC    = $(TB_DIR)/compile.f

# Print coverage percentages (with label line above each) from an xcrg html dashboard
define print_cc
sed 's/<[^>]*>//g' $(1) | sed 's/^[ \t]*//' | grep -v '^$$' | grep -v '[{};]' | grep -E '[A-Za-z].*[0-9]|[0-9].*[A-Za-z]' | head -40
endef

# PASS = UVM report summary shows 0 UVM_ERROR and 0 UVM_FATAL
define is_pass
[ -f $(1) ] && tr -d '\r' < $(1) | grep -q 'UVM Report Summary' && ! tr -d '\r' < $(1) | grep -Eq '^(UVM_ERROR|UVM_FATAL)[[:space:]]*:[[:space:]]*[1-9]'
endef

.PHONY: compile elaborate simulate gui_sim code_report cov_report all allg regress regress_report clean

# Step 1: Compile RTL + testbench sources
compile:
	xvlog --sv -prj $(RTL_DIR)/vlog.prj -L uvm
	xvhdl -prj $(RTL_DIR)/vhdl.prj
	xvlog --sv -f $(TB_SRC) -L uvm

# Step 2: Elaborate design into a simulation snapshot (with code coverage)
elaborate: compile
	xelab work.$(TOP) xil_defaultlib.glbl \
		--relax --debug typical \
		-timescale $(TIMESCALE) -s $(SNAPSHOT) \
		-L xil_defaultlib -L noc_nps_v1_0_2 \
		-L noc_nmu_sim_v1_0_0 -L noc_hbm_nmu_sim_v1_0_0 \
		-L noc_nsu_sim_v1_0_1 \
		-L xlconstant_v1_1_10 -L axi_bram_ctrl_v4_1_13 \
		-L emb_mem_gen_v1_0_11 -L clk_gen_sim_v1_0_6 \
		-L uvm -L unisims_ver -L unimacro_ver -L secureip -L xpm \
		-cc_type sbct

# Step 3: Run simulation
simulate: elaborate
	cp -f $(RTL_DIR)/nocattrs.dat .
	xsim $(SNAPSHOT) -runall \
		-testplusarg "UVM_TESTNAME=$(TEST)" \
		-testplusarg "UVM_VERBOSITY=$(UVM_VERBOSITY)" \
		-testplusarg "CLK_FREQUENCY=$(CLK_FREQUENCY)" \
		-cov_db_dir $(COV_DIR) -cov_db_name $(TEST) \
		-log xsim_$(TEST).log

gui_sim: elaborate
	cp -f $(RTL_DIR)/nocattrs.dat .
	xsim $(SNAPSHOT) -gui \
		-testplusarg "UVM_TESTNAME=$(TEST)" \
		-testplusarg "UVM_VERBOSITY=$(UVM_VERBOSITY)" \
		-testplusarg "CLK_FREQUENCY=$(CLK_FREQUENCY)" \
		-cov_db_dir $(COV_DIR) -cov_db_name $(TEST) \
		-log xsim_$(TEST).log

# Single-run reports (code coverage lives in ./xsim.codeCov/<snapshot>)
code_report:
	xcrg -cov_db_dir . -cov_db_name $(SNAPSHOT) \
		-report_format html -report_dir $(COV_DIR)/code_report
	-@$(call print_cc,$(COV_DIR)/code_report/codeCoverageReport/dashboard.html)

cov_report: code_report
	xcrg -cov_db_dir $(COV_DIR) -cov_db_name $(TEST) \
		-report_format html -report_dir $(COV_DIR)/report

# Convenience targets
all: compile elaborate simulate cov_report
allg: compile elaborate gui_sim

# ----------------------------------------
# Regression
#   make regress                                  # default TESTLIST, NUM_RUNS each
#   make regress TEST=axi_write_test NUM_RUNS=10  # one test, 10 runs
#   make regress TESTLIST="t1 t2" NUM_RUNS=3      # chosen tests, 3 runs each
#
# Per-run code coverage:
#   cov_code/<test>_run<N>/xsim.codeCov/<SNAPSHOT>   <- db
#   cov_code/<test>_run<N>/report/                   <- html report
# All per-run numbers are printed together at the end.
# ----------------------------------------
regress: compile elaborate
	@mkdir -p $(REGRESS_DIR)
	@rm -f $(REGRESS_DIR)/summary.log
	@rm -rf $(COV_DIR) $(CC_DIR) xsim.codeCov.pristine
	@mkdir -p $(CC_DIR)
	@cp -f $(RTL_DIR)/nocattrs.dat .
	@if [ -d xsim.codeCov ]; then \
		cp -r xsim.codeCov xsim.codeCov.pristine; \
	else \
		echo "WARNING: xsim.codeCov not found after elaborate - code coverage will be empty"; \
	fi
	@echo "Regression tests : $(REGRESS_TESTS)"
	@echo "Runs per test    : $(NUM_RUNS)"
	@for t in $(REGRESS_TESTS); do \
		for i in $$(seq 1 $(NUM_RUNS)); do \
			seed=$$(( $(SEED_BASE) + i )); \
			echo "=== Running $$t (run $$i/$(NUM_RUNS)) seed=$$seed ==="; \
			if [ -d xsim.codeCov.pristine ]; then \
				rm -rf xsim.codeCov; cp -r xsim.codeCov.pristine xsim.codeCov; \
			fi; \
			xsim $(SNAPSHOT) -runall \
				-testplusarg "UVM_TESTNAME=$$t" \
				-testplusarg "UVM_VERBOSITY=$(UVM_VERBOSITY)" \
				-testplusarg "CLK_FREQUENCY=$(CLK_FREQUENCY)" \
				-sv_seed $$seed \
				-cov_db_dir $(COV_DIR) -cov_db_name $${t}_run$${i} \
				-log $(REGRESS_DIR)/$${t}_run$${i}.log; \
			d=$(CC_DIR)/$${t}_run$${i}; \
			if [ -d xsim.codeCov/$(SNAPSHOT) ]; then \
				mkdir -p $$d/xsim.codeCov; \
				cp -r xsim.codeCov/$(SNAPSHOT) $$d/xsim.codeCov/$(SNAPSHOT); \
				xcrg -cov_db_dir $$d -cov_db_name $(SNAPSHOT) \
					-report_format html -report_dir $$d/report > $$d/xcrg.log 2>&1 || true; \
			else \
				echo "WARNING: no code cov db for $${t}_run$${i}"; \
			fi; \
			if $(call is_pass,$(REGRESS_DIR)/$${t}_run$${i}.log); then \
				echo "$$t (run $$i seed=$$seed) : PASS" | tee -a $(REGRESS_DIR)/summary.log; \
			else \
				echo "$$t (run $$i seed=$$seed) : FAIL" | tee -a $(REGRESS_DIR)/summary.log; \
				grep -E '^(UVM_ERROR|UVM_FATAL)' $(REGRESS_DIR)/$${t}_run$${i}.log | tail -3; \
				grep -q 'UVM Report Summary' $(REGRESS_DIR)/$${t}_run$${i}.log || echo "  (no UVM Report Summary in log)"; \
			fi; \
		done; \
	done
	@echo ""; echo "=== REGRESSION SUMMARY ==="; cat $(REGRESS_DIR)/summary.log
	@echo "PASS: $$(grep -c ': PASS' $(REGRESS_DIR)/summary.log)  FAIL: $$(grep -c ': FAIL' $(REGRESS_DIR)/summary.log)"
	@$(MAKE) --no-print-directory regress_report
	@! grep -q ': FAIL' $(REGRESS_DIR)/summary.log
# Never aborts the regression: tool problems only print a message.
regress_report:
	@echo ""; echo "=== MERGED FUNCTIONAL COVERAGE ==="
	-@xcrg -report_format text -cov_db_dir $(COV_DIR) -report_dir $(COV_DIR)/report > /dev/null 2>&1
	-@xcrg -report_format html -cov_db_dir $(COV_DIR) -report_dir $(COV_DIR)/report_html > /dev/null 2>&1
	-@grep -m1 "Coverage Score" $(COV_DIR)/report/functionalCoverageReport/xcrg_func_cov_report.txt | \
		awk -F',' '{printf "MERGED FUNCTIONAL COVERAGE = %.2f%%\n", $$2}'
	@echo "Merged functional report: $(COV_DIR)/report_html/functionalCoverageReport/dashboard.html"
	@echo ""; echo "=== CODE COVERAGE PER RUN ==="
	@for d in $$(ls -d $(CC_DIR)/*_run*/ 2>/dev/null | sed 's:/$$::'); do \
		echo "--- $$(basename $$d) ---"; \
		f=$$d/report/codeCoverageReport/dashboard.html; \
		if [ -f "$$f" ]; then \
			$(call print_cc,$$f); \
		else \
			echo "(no report, see $$d/xcrg.log)"; \
		fi; \
	done
	@echo ""; echo "Per-run code coverage reports: $(CC_DIR)/<run>/report/codeCoverageReport/dashboard.html"

clean:
	rm -rf xsim.dir xsim.codeCov xsim.codeCov.pristine $(COV_DIR) $(CC_DIR) $(REGRESS_DIR) *.log *.jou *.pb *.wdb .Xil xelab.pb webtalk*
