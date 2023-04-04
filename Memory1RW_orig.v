module Memory1RW(
  input         clock,
  input         reset,
  input  [4:0]  addr, // @[src/main/scala/Memory.scala 21:16]
  output [63:0] rdata, // @[src/main/scala/Memory.scala 22:17]
  input  [63:0] wdata, // @[src/main/scala/Memory.scala 23:17]
  input         we // @[src/main/scala/Memory.scala 24:14]
);
  reg [63:0] mem [0:31]; // @[src/main/scala/Memory.scala 26:24]
  wire  mem_port_r_en; // @[src/main/scala/Memory.scala 26:24]
  wire [4:0] mem_port_r_addr; // @[src/main/scala/Memory.scala 26:24]
  wire [63:0] mem_port_r_data; // @[src/main/scala/Memory.scala 26:24]
  wire [63:0] mem_port_w_data; // @[src/main/scala/Memory.scala 26:24]
  wire [4:0] mem_port_w_addr; // @[src/main/scala/Memory.scala 26:24]
  wire  mem_port_w_mask; // @[src/main/scala/Memory.scala 26:24]
  wire  mem_port_w_en; // @[src/main/scala/Memory.scala 26:24]
  reg  mem_port_r_en_pipe_0;
  reg [4:0] mem_port_r_addr_pipe_0;
  assign mem_port_r_en = mem_port_r_en_pipe_0;
  assign mem_port_r_addr = mem_port_r_addr_pipe_0;
  assign mem_port_r_data = mem[mem_port_r_addr]; // @[src/main/scala/Memory.scala 26:24]
  assign mem_port_w_data = wdata;
  assign mem_port_w_addr = addr;
  assign mem_port_w_mask = we;
  assign mem_port_w_en = 1'h1 & we;
  assign rdata = mem_port_r_data; // @[src/main/scala/Memory.scala 29:12 32:11]
  always @(posedge clock) begin
    if (mem_port_w_en & mem_port_w_mask) begin
      mem[mem_port_w_addr] <= mem_port_w_data; // @[src/main/scala/Memory.scala 26:24]
    end
    mem_port_r_en_pipe_0 <= 1'h1 & ~we;
    if (1'h1 & ~we) begin
      mem_port_r_addr_pipe_0 <= addr;
    end
  end
endmodule
