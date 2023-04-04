module Memory1R1WMasked(
  input        clock,
  input        reset,
  input  [4:0] raddr, // @[src/main/scala/Memory.scala 21:17]
  output [7:0] rdata_0, // @[src/main/scala/Memory.scala 22:17]
  output [7:0] rdata_1, // @[src/main/scala/Memory.scala 22:17]
  output [7:0] rdata_2, // @[src/main/scala/Memory.scala 22:17]
  output [7:0] rdata_3, // @[src/main/scala/Memory.scala 22:17]
  output [7:0] rdata_4, // @[src/main/scala/Memory.scala 22:17]
  output [7:0] rdata_5, // @[src/main/scala/Memory.scala 22:17]
  output [7:0] rdata_6, // @[src/main/scala/Memory.scala 22:17]
  output [7:0] rdata_7, // @[src/main/scala/Memory.scala 22:17]
  input  [4:0] waddr, // @[src/main/scala/Memory.scala 24:17]
  input  [7:0] wdata_0, // @[src/main/scala/Memory.scala 25:17]
  input  [7:0] wdata_1, // @[src/main/scala/Memory.scala 25:17]
  input  [7:0] wdata_2, // @[src/main/scala/Memory.scala 25:17]
  input  [7:0] wdata_3, // @[src/main/scala/Memory.scala 25:17]
  input  [7:0] wdata_4, // @[src/main/scala/Memory.scala 25:17]
  input  [7:0] wdata_5, // @[src/main/scala/Memory.scala 25:17]
  input  [7:0] wdata_6, // @[src/main/scala/Memory.scala 25:17]
  input  [7:0] wdata_7, // @[src/main/scala/Memory.scala 25:17]
  input  [7:0] wmask // @[src/main/scala/Memory.scala 26:17]
);
  wire [4:0] mem_R0_addr; // @[src/main/scala/Memory.scala 28:24]
  wire  mem_R0_clk; // @[src/main/scala/Memory.scala 28:24]
  wire [7:0] mem_R0_data_0; // @[src/main/scala/Memory.scala 28:24]
  wire [7:0] mem_R0_data_1; // @[src/main/scala/Memory.scala 28:24]
  wire [7:0] mem_R0_data_2; // @[src/main/scala/Memory.scala 28:24]
  wire [7:0] mem_R0_data_3; // @[src/main/scala/Memory.scala 28:24]
  wire [7:0] mem_R0_data_4; // @[src/main/scala/Memory.scala 28:24]
  wire [7:0] mem_R0_data_5; // @[src/main/scala/Memory.scala 28:24]
  wire [7:0] mem_R0_data_6; // @[src/main/scala/Memory.scala 28:24]
  wire [7:0] mem_R0_data_7; // @[src/main/scala/Memory.scala 28:24]
  wire [4:0] mem_W0_addr; // @[src/main/scala/Memory.scala 28:24]
  wire  mem_W0_clk; // @[src/main/scala/Memory.scala 28:24]
  wire [7:0] mem_W0_data_0; // @[src/main/scala/Memory.scala 28:24]
  wire [7:0] mem_W0_data_1; // @[src/main/scala/Memory.scala 28:24]
  wire [7:0] mem_W0_data_2; // @[src/main/scala/Memory.scala 28:24]
  wire [7:0] mem_W0_data_3; // @[src/main/scala/Memory.scala 28:24]
  wire [7:0] mem_W0_data_4; // @[src/main/scala/Memory.scala 28:24]
  wire [7:0] mem_W0_data_5; // @[src/main/scala/Memory.scala 28:24]
  wire [7:0] mem_W0_data_6; // @[src/main/scala/Memory.scala 28:24]
  wire [7:0] mem_W0_data_7; // @[src/main/scala/Memory.scala 28:24]
  wire  mem_W0_mask_0; // @[src/main/scala/Memory.scala 28:24]
  wire  mem_W0_mask_1; // @[src/main/scala/Memory.scala 28:24]
  wire  mem_W0_mask_2; // @[src/main/scala/Memory.scala 28:24]
  wire  mem_W0_mask_3; // @[src/main/scala/Memory.scala 28:24]
  wire  mem_W0_mask_4; // @[src/main/scala/Memory.scala 28:24]
  wire  mem_W0_mask_5; // @[src/main/scala/Memory.scala 28:24]
  wire  mem_W0_mask_6; // @[src/main/scala/Memory.scala 28:24]
  wire  mem_W0_mask_7; // @[src/main/scala/Memory.scala 28:24]
  mem mem ( // @[src/main/scala/Memory.scala 28:24]
    .R0_addr(mem_R0_addr),
    .R0_clk(mem_R0_clk),
    .R0_data_0(mem_R0_data_0),
    .R0_data_1(mem_R0_data_1),
    .R0_data_2(mem_R0_data_2),
    .R0_data_3(mem_R0_data_3),
    .R0_data_4(mem_R0_data_4),
    .R0_data_5(mem_R0_data_5),
    .R0_data_6(mem_R0_data_6),
    .R0_data_7(mem_R0_data_7),
    .W0_addr(mem_W0_addr),
    .W0_clk(mem_W0_clk),
    .W0_data_0(mem_W0_data_0),
    .W0_data_1(mem_W0_data_1),
    .W0_data_2(mem_W0_data_2),
    .W0_data_3(mem_W0_data_3),
    .W0_data_4(mem_W0_data_4),
    .W0_data_5(mem_W0_data_5),
    .W0_data_6(mem_W0_data_6),
    .W0_data_7(mem_W0_data_7),
    .W0_mask_0(mem_W0_mask_0),
    .W0_mask_1(mem_W0_mask_1),
    .W0_mask_2(mem_W0_mask_2),
    .W0_mask_3(mem_W0_mask_3),
    .W0_mask_4(mem_W0_mask_4),
    .W0_mask_5(mem_W0_mask_5),
    .W0_mask_6(mem_W0_mask_6),
    .W0_mask_7(mem_W0_mask_7)
  );
  assign rdata_0 = mem_R0_data_0; // @[src/main/scala/Memory.scala 29:9]
  assign rdata_1 = mem_R0_data_1; // @[src/main/scala/Memory.scala 29:9]
  assign rdata_2 = mem_R0_data_2; // @[src/main/scala/Memory.scala 29:9]
  assign rdata_3 = mem_R0_data_3; // @[src/main/scala/Memory.scala 29:9]
  assign rdata_4 = mem_R0_data_4; // @[src/main/scala/Memory.scala 29:9]
  assign rdata_5 = mem_R0_data_5; // @[src/main/scala/Memory.scala 29:9]
  assign rdata_6 = mem_R0_data_6; // @[src/main/scala/Memory.scala 29:9]
  assign rdata_7 = mem_R0_data_7; // @[src/main/scala/Memory.scala 29:9]
  assign mem_R0_addr = raddr; // @[src/main/scala/Memory.scala 29:20]
  assign mem_R0_clk = clock; // @[src/main/scala/Memory.scala 29:{20,20}]
  assign mem_W0_addr = waddr;
  assign mem_W0_clk = clock;
  assign mem_W0_data_0 = wdata_0; // @[]
  assign mem_W0_data_1 = wdata_1; // @[]
  assign mem_W0_data_2 = wdata_2; // @[]
  assign mem_W0_data_3 = wdata_3; // @[]
  assign mem_W0_data_4 = wdata_4; // @[]
  assign mem_W0_data_5 = wdata_5; // @[]
  assign mem_W0_data_6 = wdata_6; // @[]
  assign mem_W0_data_7 = wdata_7; // @[]
  assign mem_W0_mask_0 = wmask[0]; // @[src/main/scala/Memory.scala 30:33]
  assign mem_W0_mask_1 = wmask[1]; // @[src/main/scala/Memory.scala 30:33]
  assign mem_W0_mask_2 = wmask[2]; // @[src/main/scala/Memory.scala 30:33]
  assign mem_W0_mask_3 = wmask[3]; // @[src/main/scala/Memory.scala 30:33]
  assign mem_W0_mask_4 = wmask[4]; // @[src/main/scala/Memory.scala 30:33]
  assign mem_W0_mask_5 = wmask[5]; // @[src/main/scala/Memory.scala 30:33]
  assign mem_W0_mask_6 = wmask[6]; // @[src/main/scala/Memory.scala 30:33]
  assign mem_W0_mask_7 = wmask[7]; // @[src/main/scala/Memory.scala 30:33]
endmodule
module mem(
  input  [4:0] R0_addr,
  input        R0_clk,
  output [7:0] R0_data_0,
  output [7:0] R0_data_1,
  output [7:0] R0_data_2,
  output [7:0] R0_data_3,
  output [7:0] R0_data_4,
  output [7:0] R0_data_5,
  output [7:0] R0_data_6,
  output [7:0] R0_data_7,
  input  [4:0] W0_addr,
  input        W0_clk,
  input  [7:0] W0_data_0,
  input  [7:0] W0_data_1,
  input  [7:0] W0_data_2,
  input  [7:0] W0_data_3,
  input  [7:0] W0_data_4,
  input  [7:0] W0_data_5,
  input  [7:0] W0_data_6,
  input  [7:0] W0_data_7,
  input        W0_mask_0,
  input        W0_mask_1,
  input        W0_mask_2,
  input        W0_mask_3,
  input        W0_mask_4,
  input        W0_mask_5,
  input        W0_mask_6,
  input        W0_mask_7
);
  wire [4:0] mem_ext_R0_addr;
  wire  mem_ext_R0_en;
  wire  mem_ext_R0_clk;
  wire [63:0] mem_ext_R0_data;
  wire [4:0] mem_ext_W0_addr;
  wire  mem_ext_W0_en;
  wire  mem_ext_W0_clk;
  wire [63:0] mem_ext_W0_data;
  wire [7:0] mem_ext_W0_mask;
  wire [31:0] _GEN_4 = {W0_data_7,W0_data_6,W0_data_5,W0_data_4};
  wire [31:0] _GEN_5 = {W0_data_3,W0_data_2,W0_data_1,W0_data_0};
  wire [3:0] _GEN_10 = {W0_mask_7,W0_mask_6,W0_mask_5,W0_mask_4};
  wire [3:0] _GEN_11 = {W0_mask_3,W0_mask_2,W0_mask_1,W0_mask_0};
  mem_ext mem_ext (
    .R0_addr(mem_ext_R0_addr),
    .R0_en(mem_ext_R0_en),
    .R0_clk(mem_ext_R0_clk),
    .R0_data(mem_ext_R0_data),
    .W0_addr(mem_ext_W0_addr),
    .W0_en(mem_ext_W0_en),
    .W0_clk(mem_ext_W0_clk),
    .W0_data(mem_ext_W0_data),
    .W0_mask(mem_ext_W0_mask)
  );
  assign mem_ext_R0_clk = R0_clk;
  assign mem_ext_R0_en = 1'h1;
  assign mem_ext_R0_addr = R0_addr;
  assign R0_data_0 = mem_ext_R0_data[7:0];
  assign R0_data_1 = mem_ext_R0_data[15:8];
  assign R0_data_2 = mem_ext_R0_data[23:16];
  assign R0_data_3 = mem_ext_R0_data[31:24];
  assign R0_data_4 = mem_ext_R0_data[39:32];
  assign R0_data_5 = mem_ext_R0_data[47:40];
  assign R0_data_6 = mem_ext_R0_data[55:48];
  assign R0_data_7 = mem_ext_R0_data[63:56];
  assign mem_ext_W0_clk = W0_clk;
  assign mem_ext_W0_en = 1'h1;
  assign mem_ext_W0_addr = W0_addr;
  assign mem_ext_W0_data = {_GEN_4,_GEN_5};
  assign mem_ext_W0_mask = {_GEN_10,_GEN_11};
endmodule
