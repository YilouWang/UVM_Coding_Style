`ifndef __UVMA_XX_PKG_SV__
`define __UVMA_XX_PKG_SV__

// Pre-processor macros
`include "uvm_macros.svh"
`include "uvma_xx_macros.svh"


// Interfaces / Modules / Checkers
`include "uvma_xx_if.sv"


package uvma_xx_pkg;

    import uvm_pkg::*;
    import other_pkg::*;

    // Constants, Structs, and Enums
    `include "uvma_xx_constants.svh"
    `include "uvma_xx_tdefs.svh"

    // Objects
    `include "uvma_xx_cfg.svh"
    `include "uvma_xx_cntxt.svh"

    // High-Level Transactions
    `include "uvma_xx_seq_item.svh"
    `include "uvma_xx_trn.svh"

    // Agent Components
    `include "uvma_xx_agent.svh"
    `include "uvma_xx_drv.svh"
    `include "uvma_xx_mon.svh"
    `include "uvma_xx_sqr.svh"
    `include "uvma_xx_cov_model.svh"
    `include "uvma_xx_logger.svh"

    // Sequences
    `include "uvma_xx_base_seq.svh"
    `include "uvma_xx_random_seq.svh"
    `include "uvma_xx_default_seq.svh"

endpackage : uvma_xx_pkg

`endif // __UVMA_XX_PKG_SV__
