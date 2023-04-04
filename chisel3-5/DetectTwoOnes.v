module DetectTwoOnes(
  input   clock,
  input   reset,
  input   io_in,
  output  io_out
);
  reg [1:0] state; // @[DetectTwoOnes.scala 15:22]
  wire [1:0] _GEN_2 = ~io_in ? 2'h0 : state; // @[DetectTwoOnes.scala 33:20 34:15 15:22]
  assign io_out = state == 2'h2; // @[DetectTwoOnes.scala 17:20]
  always @(posedge clock) begin
    if (reset) begin // @[DetectTwoOnes.scala 15:22]
      state <= 2'h0; // @[DetectTwoOnes.scala 15:22]
    end else if (2'h0 == state) begin // @[DetectTwoOnes.scala 19:17]
      if (io_in) begin // @[DetectTwoOnes.scala 21:19]
        state <= 2'h1; // @[DetectTwoOnes.scala 22:15]
      end
    end else if (2'h1 == state) begin // @[DetectTwoOnes.scala 19:17]
      if (io_in) begin // @[DetectTwoOnes.scala 26:19]
        state <= 2'h2; // @[DetectTwoOnes.scala 27:15]
      end else begin
        state <= 2'h0; // @[DetectTwoOnes.scala 29:15]
      end
    end else if (2'h2 == state) begin // @[DetectTwoOnes.scala 19:17]
      state <= _GEN_2;
    end
  end
endmodule
