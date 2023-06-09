// Generated by CIRCT unknown git version
module Memory1RW(	// <stdin>:3:10
  input         clock,	// <stdin>:4:11
                reset,	// <stdin>:5:11
  input  [4:0]  addr,	// src/main/scala/Memory.scala:90:16
  input  [63:0] wdata,	// src/main/scala/Memory.scala:92:17
  input         we,	// src/main/scala/Memory.scala:93:14
  output [63:0] rdata	// src/main/scala/Memory.scala:91:17
);

  mem mem (	// src/main/scala/Memory.scala:95:24
    .RW0_addr  (addr),
    .RW0_clk   (clock),
    .RW0_wmode (we),
    .RW0_wdata (wdata),
    .RW0_rdata (rdata)
  );
endmodule

module mem(	// src/main/scala/Memory.scala:95:24
  input  [4:0]  RW0_addr,
  input         RW0_clk,
                RW0_wmode,
  input  [63:0] RW0_wdata,
  output [63:0] RW0_rdata
);

  mem_ext mem_ext (	// src/main/scala/Memory.scala:95:24
    .RW0_addr  (RW0_addr),
    .RW0_en    (1'h1),
    .RW0_clk   (RW0_clk),
    .RW0_wmode (RW0_wmode),
    .RW0_wdata (RW0_wdata),
    .RW0_rdata (RW0_rdata)
  );
endmodule

// external module mem_ext


// ----- 8< ----- FILE "metadata/tb_seq_mems.json" ----- 8< -----

[
  {
    "module_name": "mem_ext",
    "depth": 32,
    "width": 64,
    "masked": false,
    "read": false,
    "write": false,
    "readwrite": true,
    "extra_ports": [],
    "hierarchy": [
      "Memory1RW.mem.mem_ext"
    ]
  }
]

// ----- 8< ----- FILE "metadata/seq_mems.json" ----- 8< -----

[]

// ----- 8< ----- FILE "Memory1RW_firtool.conf" ----- 8< -----

name mem_ext depth 32 width 64 ports rw
