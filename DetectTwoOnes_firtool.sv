// Generated by CIRCT unknown git version
module DetectTwoOnes(	// <stdin>:3:10
  input  clock,	// <stdin>:4:11
         reset,	// <stdin>:5:11
         io_in,	// src/main/scala/DetectTwoOnes.scala:6:14
  output io_out	// src/main/scala/DetectTwoOnes.scala:6:14
);

  reg [1:0] state;	// src/main/scala/DetectTwoOnes.scala:15:22
  always @(posedge clock) begin	// <stdin>:4:11
    if (reset)	// <stdin>:4:11
      state <= 2'h0;	// src/main/scala/DetectTwoOnes.scala:15:22, :29:15
    else if (state == 2'h0) begin	// src/main/scala/DetectTwoOnes.scala:15:22, :19:17, :29:15
      if (io_in)	// src/main/scala/DetectTwoOnes.scala:6:14
        state <= 2'h1;	// src/main/scala/DetectTwoOnes.scala:15:22, :22:15
    end
    else if (state == 2'h1)	// src/main/scala/DetectTwoOnes.scala:15:22, :19:17, :22:15
      state <= {io_in, 1'h0};	// src/main/scala/DetectTwoOnes.scala:15:22, :26:19, :27:15, :29:15
    else if (state == 2'h2 & ~io_in)	// src/main/scala/DetectTwoOnes.scala:15:22, :17:20, :19:17, :33:{12,20}, :34:15
      state <= 2'h0;	// src/main/scala/DetectTwoOnes.scala:15:22, :29:15
  end // always @(posedge)
  assign io_out = state == 2'h2;	// <stdin>:3:10, src/main/scala/DetectTwoOnes.scala:15:22, :17:20
endmodule


// ----- 8< ----- FILE "metadata/tb_seq_mems.json" ----- 8< -----

[]

// ----- 8< ----- FILE "metadata/seq_mems.json" ----- 8< -----

[]

// ----- 8< ----- FILE "DetectTwoOnes_firtool.conf" ----- 8< -----


