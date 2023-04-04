module Example(
  input        clock,
  input        reset,
  input        a, // @[src/main/scala/Example.scala 4:19]
  input        b, // @[src/main/scala/Example.scala 4:19]
  input        c, // @[src/main/scala/Example.scala 4:19]
  input        d, // @[src/main/scala/Example.scala 5:19]
  input        e, // @[src/main/scala/Example.scala 5:19]
  input        f, // @[src/main/scala/Example.scala 5:19]
  input  [7:0] foo, // @[src/main/scala/Example.scala 6:20]
  input  [7:0] bar, // @[src/main/scala/Example.scala 6:20]
  output [7:0] out // @[src/main/scala/Example.scala 7:15]
);
  reg [7:0] myReg; // @[src/main/scala/Example.scala 9:22]
  assign out = myReg; // @[src/main/scala/Example.scala 10:7]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/Example.scala 9:22]
      myReg <= 8'h0; // @[src/main/scala/Example.scala 9:22]
    end else if (d & e & f) begin // @[src/main/scala/Example.scala 15:21]
      myReg <= bar; // @[src/main/scala/Example.scala 16:11]
    end else if (a & b & c) begin // @[src/main/scala/Example.scala 12:21]
      myReg <= foo; // @[src/main/scala/Example.scala 13:11]
    end
  end
endmodule
