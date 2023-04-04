module Memory(
  input         clock,
  input         reset,
  input  [4:0]  raddr, // @[src/main/scala/Memory.scala 4:17]
  output [31:0] rdata, // @[src/main/scala/Memory.scala 5:17]
  input  [4:0]  waddr, // @[src/main/scala/Memory.scala 7:17]
  input  [31:0] wdata // @[src/main/scala/Memory.scala 8:17]
);
  reg [31:0] mem [0:31]; // @[src/main/scala/Memory.scala 10:24]
  wire  mem_rdata_MPORT_en; // @[src/main/scala/Memory.scala 10:24]
  wire [4:0] mem_rdata_MPORT_addr; // @[src/main/scala/Memory.scala 10:24]
  wire [31:0] mem_rdata_MPORT_data; // @[src/main/scala/Memory.scala 10:24]
  wire [31:0] mem_MPORT_data; // @[src/main/scala/Memory.scala 10:24]
  wire [4:0] mem_MPORT_addr; // @[src/main/scala/Memory.scala 10:24]
  wire  mem_MPORT_mask; // @[src/main/scala/Memory.scala 10:24]
  wire  mem_MPORT_en; // @[src/main/scala/Memory.scala 10:24]
  reg  mem_rdata_MPORT_en_pipe_0;
  reg [4:0] mem_rdata_MPORT_addr_pipe_0;
  assign mem_rdata_MPORT_en = mem_rdata_MPORT_en_pipe_0;
  assign mem_rdata_MPORT_addr = mem_rdata_MPORT_addr_pipe_0;
  assign mem_rdata_MPORT_data = mem[mem_rdata_MPORT_addr]; // @[src/main/scala/Memory.scala 10:24]
  assign mem_MPORT_data = wdata;
  assign mem_MPORT_addr = waddr;
  assign mem_MPORT_mask = 1'h1;
  assign mem_MPORT_en = 1'h1;
  assign rdata = mem_rdata_MPORT_data; // @[src/main/scala/Memory.scala 11:9]
  always @(posedge clock) begin
    if (mem_MPORT_en & mem_MPORT_mask) begin
      mem[mem_MPORT_addr] <= mem_MPORT_data; // @[src/main/scala/Memory.scala 10:24]
    end
    mem_rdata_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_rdata_MPORT_addr_pipe_0 <= raddr;
    end
  end
endmodule
