circuit DetectTwoOnes :
  module DetectTwoOnes :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in : UInt<1>, out : UInt<1>}

    reg state : UInt<2>, clock with :
      reset => (reset, UInt<1>("h0")) @[DetectTwoOnes.scala 15:22]
    node _io_out_T = eq(state, UInt<2>("h2")) @[DetectTwoOnes.scala 17:20]
    io.out <= _io_out_T @[DetectTwoOnes.scala 17:10]
    node _T = asUInt(UInt<1>("h0")) @[DetectTwoOnes.scala 19:17]
    node _T_1 = asUInt(state) @[DetectTwoOnes.scala 19:17]
    node _T_2 = eq(_T, _T_1) @[DetectTwoOnes.scala 19:17]
    when _T_2 : @[DetectTwoOnes.scala 19:17]
      when io.in : @[DetectTwoOnes.scala 21:19]
        state <= UInt<1>("h1") @[DetectTwoOnes.scala 22:15]
    else :
      node _T_3 = asUInt(UInt<1>("h1")) @[DetectTwoOnes.scala 19:17]
      node _T_4 = asUInt(state) @[DetectTwoOnes.scala 19:17]
      node _T_5 = eq(_T_3, _T_4) @[DetectTwoOnes.scala 19:17]
      when _T_5 : @[DetectTwoOnes.scala 19:17]
        when io.in : @[DetectTwoOnes.scala 26:19]
          state <= UInt<2>("h2") @[DetectTwoOnes.scala 27:15]
        else :
          state <= UInt<1>("h0") @[DetectTwoOnes.scala 29:15]
      else :
        node _T_6 = asUInt(UInt<2>("h2")) @[DetectTwoOnes.scala 19:17]
        node _T_7 = asUInt(state) @[DetectTwoOnes.scala 19:17]
        node _T_8 = eq(_T_6, _T_7) @[DetectTwoOnes.scala 19:17]
        when _T_8 : @[DetectTwoOnes.scala 19:17]
          node _T_9 = eq(io.in, UInt<1>("h0")) @[DetectTwoOnes.scala 33:12]
          when _T_9 : @[DetectTwoOnes.scala 33:20]
            state <= UInt<1>("h0") @[DetectTwoOnes.scala 34:15]


