module Example(
  input        clock,
  input        reset,
  input        a,
  input        b,
  input        c,
  input        d,
  input        e,
  input        f,
  input  [7:0] foo,
  input  [7:0] bar,
  output [7:0] out
);
  reg [7:0] myReg; // @[Example.scala 9:22]
  assign out = myReg; // @[Example.scala 10:7]
  always @(posedge clock) begin
    if (reset) begin // @[Example.scala 9:22]
      myReg <= 8'h0; // @[Example.scala 9:22]
    end else if (d & e & f) begin // @[Example.scala 15:22]
      myReg <= bar; // @[Example.scala 16:11]
    end else if (a & b & c) begin // @[Example.scala 12:22]
      myReg <= foo; // @[Example.scala 13:11]
    end
  end
endmodule
