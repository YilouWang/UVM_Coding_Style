`ifndef __UVMA_XX_AGENT_SVH__
`define __UVMA_XX_AGENT_SVH__


class uvma_xx_agent_c extends uvm_agent;

    // Objects (cfg & cntxt)
    cfg encapuslates the configuration of the agent
    cntxt encapsulates all state variables and vif_handles

    // vif (agent_vif)

    // Components (drv, mon, sqr)
    driver
    monitor
    sequencer
    cov_model
    logger

    // TLM (analysis_port)
    drv_ap
    mon_ap

    // Factory & Field
    `uvm_component_utils_begin()
        `uvm_field_object()

    // Constructors
    extern function new (string name = "uvma_xx_agents", uvm_component = parent);

    /** Build Phase
      * get_and_set_config()
      * get_and_set_cntxt()
      * retrieve_vifs()
      * create_components()
      */
    extern function void build_phase (uvm_phase phase);

    /** Connect Phase
      * connect_drv_and_sqr()
      * connect_aps()
      * connect_cov_model()
      * connect_logger()
      */
    extern function void connect_phase (uvm_phase phase);

endclass : uvma_xx_agents

`endif // __UVMA_XX_AGENT_SVH__
