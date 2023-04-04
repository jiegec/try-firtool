module Memory1R1W(
  input         clock,
  input         reset,
  input  [4:0]  raddr, // @[src/main/scala/Memory.scala 4:17]
  output [63:0] rdata, // @[src/main/scala/Memory.scala 5:17]
  input  [4:0]  waddr, // @[src/main/scala/Memory.scala 7:17]
  input  [63:0] wdata // @[src/main/scala/Memory.scala 8:17]
);
  wire [4:0] mem_R0_addr; // @[src/main/scala/Memory.scala 10:24]
  wire  mem_R0_clk; // @[src/main/scala/Memory.scala 10:24]
  wire [63:0] mem_R0_data; // @[src/main/scala/Memory.scala 10:24]
  wire [4:0] mem_W0_addr; // @[src/main/scala/Memory.scala 10:24]
  wire  mem_W0_clk; // @[src/main/scala/Memory.scala 10:24]
  wire [63:0] mem_W0_data; // @[src/main/scala/Memory.scala 10:24]
  mem mem ( // @[src/main/scala/Memory.scala 10:24]
    .R0_addr(mem_R0_addr),
    .R0_clk(mem_R0_clk),
    .R0_data(mem_R0_data),
    .W0_addr(mem_W0_addr),
    .W0_clk(mem_W0_clk),
    .W0_data(mem_W0_data)
  );
  assign rdata = mem_R0_data; // @[src/main/scala/Memory.scala 11:9]
  assign mem_R0_addr = raddr; // @[src/main/scala/Memory.scala 11:20]
  assign mem_R0_clk = clock; // @[src/main/scala/Memory.scala 11:{20,20}]
  assign mem_W0_addr = waddr;
  assign mem_W0_clk = clock;
  assign mem_W0_data = wdata;
endmodule
module mem(
  input  [4:0]  R0_addr,
  input         R0_clk,
  output [63:0] R0_data,
  input  [4:0]  W0_addr,
  input         W0_clk,
  input  [63:0] W0_data
);
  wire [4:0] mem_ext_R0_addr;
  wire  mem_ext_R0_en;
  wire  mem_ext_R0_clk;
  wire [63:0] mem_ext_R0_data;
  wire [4:0] mem_ext_W0_addr;
  wire  mem_ext_W0_en;
  wire  mem_ext_W0_clk;
  wire [63:0] mem_ext_W0_data;
  mem_ext mem_ext (
    .R0_addr(mem_ext_R0_addr),
    .R0_en(mem_ext_R0_en),
    .R0_clk(mem_ext_R0_clk),
    .R0_data(mem_ext_R0_data),
    .W0_addr(mem_ext_W0_addr),
    .W0_en(mem_ext_W0_en),
    .W0_clk(mem_ext_W0_clk),
    .W0_data(mem_ext_W0_data)
  );
  assign mem_ext_R0_clk = R0_clk;
  assign mem_ext_R0_en = 1'h1;
  assign mem_ext_R0_addr = R0_addr;
  assign R0_data = mem_ext_R0_data;
  assign mem_ext_W0_clk = W0_clk;
  assign mem_ext_W0_en = 1'h1;
  assign mem_ext_W0_addr = W0_addr;
  assign mem_ext_W0_data = W0_data;
endmodule
