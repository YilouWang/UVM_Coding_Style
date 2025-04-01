`ifndef __UVMT_DUTXX_BASE_TEST_SVH__
`define __UVMT_DUTXX_BASE_TEST_SVH__


class uvmt_dutxx_base_test_c extends uvm_test;

    // Objects
    uvmt_dutxx_cfg_c        test_cfg;
    uvmt_dutxx_randvars_c   test_randvars;

    uvme_dutxx_cfg_c        env_cfg;
    uvme_dutxx_cntxt_c      env_cntxt;

    // Components
    uvme_dutxx_env_c        env;
    uvme_dutxx_vsqr_c       vsqr;

    // Handles of Testbench Interfaces
    virtual uvmt_xx_tb_if   xx_vif;

    // Default Sequence
    rand uvme_dutxx_default_vseq_c default_vseq;

    // Factory & Field
    `uvm_component_utils_begin(uvmt_dutxx_base_test_c)
        `uvm_field_object(test_cfg, UVM_ALL_ON)
        `uvm_field_object(test_randvars, UVM_ALL_ON)
        `uvm_field_object(env_cfg, UVM_ALL_ON)
        `uvm_field_object(env_cntxt, UVM_ALL_ON)
    `uvm_component_utils_end

    // Constriants for Objects

    constraint env_cfg_con{

    }

    // Constructors
    extern function new (string name = "uvmt_dutxx_base_test", uvm_component = null);
    extern virtual function void build_phase (uvm_phase phase);
    extern virtual function void connect_phase (uvm_phase phase);
    extern virtual task void run_phase (uvm_phase phase);

endclass : uvmt_dutxx_base_test_c

`endif // __UVMT_DUTXX_BASE_TEST_SVH__