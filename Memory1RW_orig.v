module Memory1RW(
  input         clock,
  input         reset,
  input  [4:0]  addr, // @[src/main/scala/Memory.scala 21:16]
  output [63:0] rdata, // @[src/main/scala/Memory.scala 22:17]
  input  [63:0] wdata, // @[src/main/scala/Memory.scala 23:17]
  input         we // @[src/main/scala/Memory.scala 24:14]
);
  wire [4:0] mem_RW0_addr; // @[src/main/scala/Memory.scala 26:24]
  wire  mem_RW0_clk; // @[src/main/scala/Memory.scala 26:24]
  wire  mem_RW0_wmode; // @[src/main/scala/Memory.scala 26:24]
  wire [63:0] mem_RW0_wdata; // @[src/main/scala/Memory.scala 26:24]
  wire [63:0] mem_RW0_rdata; // @[src/main/scala/Memory.scala 26:24]
  mem mem ( // @[src/main/scala/Memory.scala 26:24]
    .RW0_addr(mem_RW0_addr),
    .RW0_clk(mem_RW0_clk),
    .RW0_wmode(mem_RW0_wmode),
    .RW0_wdata(mem_RW0_wdata),
    .RW0_rdata(mem_RW0_rdata)
  );
  assign rdata = mem_RW0_rdata; // @[src/main/scala/Memory.scala 29:12 32:11]
  assign mem_RW0_addr = addr; // @[src/main/scala/Memory.scala 27:17]
  assign mem_RW0_clk = clock; // @[src/main/scala/Memory.scala 27:17]
  assign mem_RW0_wmode = we; // @[src/main/scala/Memory.scala 29:12 30:10 27:17]
  assign mem_RW0_wdata = wdata; // @[src/main/scala/Memory.scala 29:12 30:10]
endmodule
module mem(
  input  [4:0]  RW0_addr,
  input         RW0_clk,
  input         RW0_wmode,
  input  [63:0] RW0_wdata,
  output [63:0] RW0_rdata
);
  wire [4:0] mem_ext_RW0_addr;
  wire  mem_ext_RW0_en;
  wire  mem_ext_RW0_clk;
  wire  mem_ext_RW0_wmode;
  wire [63:0] mem_ext_RW0_wdata;
  wire [63:0] mem_ext_RW0_rdata;
  mem_ext mem_ext (
    .RW0_addr(mem_ext_RW0_addr),
    .RW0_en(mem_ext_RW0_en),
    .RW0_clk(mem_ext_RW0_clk),
    .RW0_wmode(mem_ext_RW0_wmode),
    .RW0_wdata(mem_ext_RW0_wdata),
    .RW0_rdata(mem_ext_RW0_rdata)
  );
  assign mem_ext_RW0_clk = RW0_clk;
  assign mem_ext_RW0_en = 1'h1;
  assign mem_ext_RW0_addr = RW0_addr;
  assign RW0_rdata = mem_ext_RW0_rdata;
  assign mem_ext_RW0_wmode = RW0_wmode;
  assign mem_ext_RW0_wdata = RW0_wdata;
endmodule
