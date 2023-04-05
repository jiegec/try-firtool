module Memory2R2W(
  input         clock,
  input         reset,
  input  [4:0]  r1addr, // @[src/main/scala/Memory.scala 94:18]
  output [63:0] r1data, // @[src/main/scala/Memory.scala 95:18]
  input  [4:0]  r2addr, // @[src/main/scala/Memory.scala 96:18]
  output [63:0] r2data, // @[src/main/scala/Memory.scala 97:18]
  input  [4:0]  w1addr, // @[src/main/scala/Memory.scala 99:18]
  input  [63:0] w1data, // @[src/main/scala/Memory.scala 100:18]
  input  [4:0]  w2addr, // @[src/main/scala/Memory.scala 101:18]
  input  [63:0] w2data // @[src/main/scala/Memory.scala 102:18]
);
  reg [63:0] mem [0:31]; // @[src/main/scala/Memory.scala 104:24]
  wire  mem_r1data_MPORT_en; // @[src/main/scala/Memory.scala 104:24]
  wire [4:0] mem_r1data_MPORT_addr; // @[src/main/scala/Memory.scala 104:24]
  wire [63:0] mem_r1data_MPORT_data; // @[src/main/scala/Memory.scala 104:24]
  wire  mem_r2data_MPORT_en; // @[src/main/scala/Memory.scala 104:24]
  wire [4:0] mem_r2data_MPORT_addr; // @[src/main/scala/Memory.scala 104:24]
  wire [63:0] mem_r2data_MPORT_data; // @[src/main/scala/Memory.scala 104:24]
  wire [63:0] mem_MPORT_data; // @[src/main/scala/Memory.scala 104:24]
  wire [4:0] mem_MPORT_addr; // @[src/main/scala/Memory.scala 104:24]
  wire  mem_MPORT_mask; // @[src/main/scala/Memory.scala 104:24]
  wire  mem_MPORT_en; // @[src/main/scala/Memory.scala 104:24]
  wire [63:0] mem_MPORT_1_data; // @[src/main/scala/Memory.scala 104:24]
  wire [4:0] mem_MPORT_1_addr; // @[src/main/scala/Memory.scala 104:24]
  wire  mem_MPORT_1_mask; // @[src/main/scala/Memory.scala 104:24]
  wire  mem_MPORT_1_en; // @[src/main/scala/Memory.scala 104:24]
  reg  mem_r1data_MPORT_en_pipe_0;
  reg [4:0] mem_r1data_MPORT_addr_pipe_0;
  reg  mem_r2data_MPORT_en_pipe_0;
  reg [4:0] mem_r2data_MPORT_addr_pipe_0;
  assign mem_r1data_MPORT_en = mem_r1data_MPORT_en_pipe_0;
  assign mem_r1data_MPORT_addr = mem_r1data_MPORT_addr_pipe_0;
  assign mem_r1data_MPORT_data = mem[mem_r1data_MPORT_addr]; // @[src/main/scala/Memory.scala 104:24]
  assign mem_r2data_MPORT_en = mem_r2data_MPORT_en_pipe_0;
  assign mem_r2data_MPORT_addr = mem_r2data_MPORT_addr_pipe_0;
  assign mem_r2data_MPORT_data = mem[mem_r2data_MPORT_addr]; // @[src/main/scala/Memory.scala 104:24]
  assign mem_MPORT_data = w1data;
  assign mem_MPORT_addr = w1addr;
  assign mem_MPORT_mask = 1'h1;
  assign mem_MPORT_en = 1'h1;
  assign mem_MPORT_1_data = w2data;
  assign mem_MPORT_1_addr = w2addr;
  assign mem_MPORT_1_mask = 1'h1;
  assign mem_MPORT_1_en = 1'h1;
  assign r1data = mem_r1data_MPORT_data; // @[src/main/scala/Memory.scala 105:10]
  assign r2data = mem_r2data_MPORT_data; // @[src/main/scala/Memory.scala 106:10]
  always @(posedge clock) begin
    if (mem_MPORT_en & mem_MPORT_mask) begin
      mem[mem_MPORT_addr] <= mem_MPORT_data; // @[src/main/scala/Memory.scala 104:24]
    end
    if (mem_MPORT_1_en & mem_MPORT_1_mask) begin
      mem[mem_MPORT_1_addr] <= mem_MPORT_1_data; // @[src/main/scala/Memory.scala 104:24]
    end
    mem_r1data_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_r1data_MPORT_addr_pipe_0 <= r1addr;
    end
    mem_r2data_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_r2data_MPORT_addr_pipe_0 <= r2addr;
    end
  end
endmodule
