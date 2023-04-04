circuit Example :
  module Example :
    input clock : Clock
    input reset : UInt<1>
    input a : UInt<1>
    input b : UInt<1>
    input c : UInt<1>
    input d : UInt<1>
    input e : UInt<1>
    input f : UInt<1>
    input foo : UInt<8>
    input bar : UInt<8>
    output out : UInt<8>

    reg myReg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[Example.scala 9:22]
    out <= myReg @[Example.scala 10:7]
    node _T = and(a, b) @[Example.scala 12:10]
    node _T_1 = and(_T, c) @[Example.scala 12:15]
    when _T_1 : @[Example.scala 12:21]
      myReg <= foo @[Example.scala 13:11]
    node _T_2 = and(d, e) @[Example.scala 15:10]
    node _T_3 = and(_T_2, f) @[Example.scala 15:15]
    when _T_3 : @[Example.scala 15:21]
      myReg <= bar @[Example.scala 16:11]


