`ifndef __UVME_DUTXX_PKG_SV__
`define __UVME_DUTXX_PKG_SV__


// Pre-processor macros
`include "uvm_macros.svh"
`include "uvme_dutxx_macros.svh"

package uvme_dutxx_pkg;

    import uvm_pkg::*;
    import other_pkg::*;
    import uvma_xx_pkg::*;

    // Constants, Structs, and Enums
    `include "uvme_dutxx_constants.svh"
    `include "uvme_dutxx_tdefs.svh"

    // Objects
    `include "uvme_dutxx_cfg.svh"
    `include "uvme_dutxx_cntxt.svh"

    // Environment Components
    `include "uvme_dutxx_env.svh"
    `include "uvme_dutxx_vsqr.svh"
    `include "uvme_dutxx_prdr.svh"
    `include "uvme_dutxx_sb.svh"
    `include "uvme_dutxx_cov_model.svh"

    // Virtual Sequences
    `include "uvme_dutxx_base_vseq.svh"
    `include "uvme_dutxx_random_vseq.svh"
    `include "uvme_dutxx_default_vseq.svh"

endpackage : uvme_dutxx_pkg

`endif // __UVME_DUTXX_PKG_SV__
