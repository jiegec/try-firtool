FIRRTL version 1.2.0
circuit Example :
  module Example :
    input clock : Clock
    input reset : UInt<1>
    input a : UInt<1> @[src/main/scala/Example.scala 4:19]
    input b : UInt<1> @[src/main/scala/Example.scala 4:19]
    input c : UInt<1> @[src/main/scala/Example.scala 4:19]
    input d : UInt<1> @[src/main/scala/Example.scala 5:19]
    input e : UInt<1> @[src/main/scala/Example.scala 5:19]
    input f : UInt<1> @[src/main/scala/Example.scala 5:19]
    input foo : UInt<8> @[src/main/scala/Example.scala 6:20]
    input bar : UInt<8> @[src/main/scala/Example.scala 6:20]
    output out : UInt<8> @[src/main/scala/Example.scala 7:15]

    reg myReg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[src/main/scala/Example.scala 9:22]
    out <= myReg @[src/main/scala/Example.scala 10:7]
    node _T = and(a, b) @[src/main/scala/Example.scala 12:10]
    node _T_1 = and(_T, c) @[src/main/scala/Example.scala 12:15]
    when _T_1 : @[src/main/scala/Example.scala 12:21]
      myReg <= foo @[src/main/scala/Example.scala 13:11]
    node _T_2 = and(d, e) @[src/main/scala/Example.scala 15:10]
    node _T_3 = and(_T_2, f) @[src/main/scala/Example.scala 15:15]
    when _T_3 : @[src/main/scala/Example.scala 15:21]
      myReg <= bar @[src/main/scala/Example.scala 16:11]


