module Memory1R1WWriteFirst(
  input         clock,
  input         reset,
  input  [4:0]  raddr, // @[src/main/scala/Memory.scala 38:17]
  output [63:0] rdata, // @[src/main/scala/Memory.scala 39:17]
  input  [4:0]  waddr, // @[src/main/scala/Memory.scala 41:17]
  input  [63:0] wdata // @[src/main/scala/Memory.scala 42:17]
);
  reg [63:0] mem [0:31]; // @[src/main/scala/Memory.scala 44:24]
  wire  mem_rdata_MPORT_en; // @[src/main/scala/Memory.scala 44:24]
  wire [4:0] mem_rdata_MPORT_addr; // @[src/main/scala/Memory.scala 44:24]
  wire [63:0] mem_rdata_MPORT_data; // @[src/main/scala/Memory.scala 44:24]
  wire [63:0] mem_MPORT_data; // @[src/main/scala/Memory.scala 44:24]
  wire [4:0] mem_MPORT_addr; // @[src/main/scala/Memory.scala 44:24]
  wire  mem_MPORT_mask; // @[src/main/scala/Memory.scala 44:24]
  wire  mem_MPORT_en; // @[src/main/scala/Memory.scala 44:24]
  reg  mem_rdata_MPORT_en_pipe_0;
  reg [4:0] mem_rdata_MPORT_addr_pipe_0;
  assign mem_rdata_MPORT_en = mem_rdata_MPORT_en_pipe_0;
  assign mem_rdata_MPORT_addr = mem_rdata_MPORT_addr_pipe_0;
  assign mem_rdata_MPORT_data = mem[mem_rdata_MPORT_addr]; // @[src/main/scala/Memory.scala 44:24]
  assign mem_MPORT_data = wdata;
  assign mem_MPORT_addr = waddr;
  assign mem_MPORT_mask = 1'h1;
  assign mem_MPORT_en = 1'h1;
  assign rdata = mem_rdata_MPORT_data; // @[src/main/scala/Memory.scala 45:9]
  always @(posedge clock) begin
    if (mem_MPORT_en & mem_MPORT_mask) begin
      mem[mem_MPORT_addr] <= mem_MPORT_data; // @[src/main/scala/Memory.scala 44:24]
    end
    mem_rdata_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_rdata_MPORT_addr_pipe_0 <= raddr;
    end
  end
endmodule
