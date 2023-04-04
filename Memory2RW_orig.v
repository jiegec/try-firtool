module Memory2RW(
  input         clock,
  input         reset,
  input  [4:0]  p1addr, // @[src/main/scala/Memory.scala 83:18]
  output [63:0] p1rdata, // @[src/main/scala/Memory.scala 84:19]
  input  [63:0] p1wdata, // @[src/main/scala/Memory.scala 85:19]
  input         p1we, // @[src/main/scala/Memory.scala 86:16]
  input  [4:0]  p2addr, // @[src/main/scala/Memory.scala 88:18]
  output [63:0] p2rdata, // @[src/main/scala/Memory.scala 89:19]
  input  [63:0] p2wdata, // @[src/main/scala/Memory.scala 90:19]
  input         p2we // @[src/main/scala/Memory.scala 91:16]
);
  reg [63:0] mem [0:31]; // @[src/main/scala/Memory.scala 93:24]
  wire  mem_port1_r_en; // @[src/main/scala/Memory.scala 93:24]
  wire [4:0] mem_port1_r_addr; // @[src/main/scala/Memory.scala 93:24]
  wire [63:0] mem_port1_r_data; // @[src/main/scala/Memory.scala 93:24]
  wire  mem_port2_r_en; // @[src/main/scala/Memory.scala 93:24]
  wire [4:0] mem_port2_r_addr; // @[src/main/scala/Memory.scala 93:24]
  wire [63:0] mem_port2_r_data; // @[src/main/scala/Memory.scala 93:24]
  wire [63:0] mem_port1_w_data; // @[src/main/scala/Memory.scala 93:24]
  wire [4:0] mem_port1_w_addr; // @[src/main/scala/Memory.scala 93:24]
  wire  mem_port1_w_mask; // @[src/main/scala/Memory.scala 93:24]
  wire  mem_port1_w_en; // @[src/main/scala/Memory.scala 93:24]
  wire [63:0] mem_port2_w_data; // @[src/main/scala/Memory.scala 93:24]
  wire [4:0] mem_port2_w_addr; // @[src/main/scala/Memory.scala 93:24]
  wire  mem_port2_w_mask; // @[src/main/scala/Memory.scala 93:24]
  wire  mem_port2_w_en; // @[src/main/scala/Memory.scala 93:24]
  reg  mem_port1_r_en_pipe_0;
  reg [4:0] mem_port1_r_addr_pipe_0;
  reg  mem_port2_r_en_pipe_0;
  reg [4:0] mem_port2_r_addr_pipe_0;
  assign mem_port1_r_en = mem_port1_r_en_pipe_0;
  assign mem_port1_r_addr = mem_port1_r_addr_pipe_0;
  assign mem_port1_r_data = mem[mem_port1_r_addr]; // @[src/main/scala/Memory.scala 93:24]
  assign mem_port2_r_en = mem_port2_r_en_pipe_0;
  assign mem_port2_r_addr = mem_port2_r_addr_pipe_0;
  assign mem_port2_r_data = mem[mem_port2_r_addr]; // @[src/main/scala/Memory.scala 93:24]
  assign mem_port1_w_data = p1wdata;
  assign mem_port1_w_addr = p1addr;
  assign mem_port1_w_mask = p1we;
  assign mem_port1_w_en = 1'h1 & p1we;
  assign mem_port2_w_data = p2wdata;
  assign mem_port2_w_addr = p2addr;
  assign mem_port2_w_mask = p2we;
  assign mem_port2_w_en = 1'h1 & p2we;
  assign p1rdata = mem_port1_r_data; // @[src/main/scala/Memory.scala 100:13 97:14]
  assign p2rdata = mem_port2_r_data; // @[src/main/scala/Memory.scala 105:14 108:13]
  always @(posedge clock) begin
    if (mem_port1_w_en & mem_port1_w_mask) begin
      mem[mem_port1_w_addr] <= mem_port1_w_data; // @[src/main/scala/Memory.scala 93:24]
    end
    if (mem_port2_w_en & mem_port2_w_mask) begin
      mem[mem_port2_w_addr] <= mem_port2_w_data; // @[src/main/scala/Memory.scala 93:24]
    end
    mem_port1_r_en_pipe_0 <= 1'h1 & ~p1we;
    if (1'h1 & ~p1we) begin
      mem_port1_r_addr_pipe_0 <= p1addr;
    end
    mem_port2_r_en_pipe_0 <= 1'h1 & ~p2we;
    if (1'h1 & ~p2we) begin
      mem_port2_r_addr_pipe_0 <= p2addr;
    end
  end
endmodule