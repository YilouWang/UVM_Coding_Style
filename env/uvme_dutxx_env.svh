`ifndef __UVME_DUTXX_ENV_SVH__
`define __UVME_DUTXX_ENV_SVH__


class uvme_dutxx_env_c extends uvm_env;

    // Objects
    uvme_cfg
    uvme_cntxt

    // Components
    uvme_vsqr
    uvme_prdr
    uvme_sb
    uvme_cov_model

    // Agents
    uvma_xx_agent_c
    uvma_yy_agent_c

    // Factory & Field
    `uvm_component_utils_begin()
        `uvm_field_object()

    // Constructors
    extern function new (string name = "uvme_dutxx_env", uvm_component = parent);

    /** Build Phase
      * get_and_set_config()
      * get_and_set_cntxt()
      * retrieve_vifs()
      * create_agents()
      * create_env_components()
      * create_vsequencer()
      * create_cov_model()
      */
    extern virtual function void build_phase (uvm_phase phase);

    /** Connect Phase
      * connect_predictor()
      * connect_scoreboard()
      * connect_cov_model()
      * assemble_vsequencer()
      */
    extern virtual function void connect_phase (uvm_phase phase);

    /** End of Elaboration Phase
      * print the final elaboration configuration
      */
    extern virtual function void end_of_elaboration_phase (uvm_phase phase);

    extern virtual task void run_phase (uvm_phase phase);

endclass : uvme_dutxx_env_c

`endif // __UVME_DUTXX_ENV_SVH__
