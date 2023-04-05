FIRRTL version 1.2.0
circuit Memory1R1WMasked :
  module Memory1R1WMasked :
    input clock : Clock
    input reset : UInt<1>
    input raddr : UInt<5> @[src/main/scala/Memory.scala 55:17]
    output rdata : UInt<8>[8] @[src/main/scala/Memory.scala 56:17]
    input waddr : UInt<5> @[src/main/scala/Memory.scala 58:17]
    input wdata : UInt<8>[8] @[src/main/scala/Memory.scala 59:17]
    input wmask : UInt<8> @[src/main/scala/Memory.scala 60:17]

    smem mem : UInt<8>[8] [32] @[src/main/scala/Memory.scala 62:24]
    wire _WIRE : UInt @[src/main/scala/Memory.scala 63:20]
    _WIRE is invalid @[src/main/scala/Memory.scala 63:20]
    when UInt<1>("h1") : @[src/main/scala/Memory.scala 63:20]
      _WIRE <= raddr @[src/main/scala/Memory.scala 63:20]
      node _T = or(_WIRE, UInt<5>("h0")) @[src/main/scala/Memory.scala 63:20]
      node _T_1 = bits(_T, 4, 0) @[src/main/scala/Memory.scala 63:20]
      read mport MPORT = mem[_T_1], clock @[src/main/scala/Memory.scala 63:20]
    rdata <= MPORT @[src/main/scala/Memory.scala 63:9]
    node _T_2 = bits(wmask, 0, 0) @[src/main/scala/Memory.scala 64:33]
    node _T_3 = bits(wmask, 1, 1) @[src/main/scala/Memory.scala 64:33]
    node _T_4 = bits(wmask, 2, 2) @[src/main/scala/Memory.scala 64:33]
    node _T_5 = bits(wmask, 3, 3) @[src/main/scala/Memory.scala 64:33]
    node _T_6 = bits(wmask, 4, 4) @[src/main/scala/Memory.scala 64:33]
    node _T_7 = bits(wmask, 5, 5) @[src/main/scala/Memory.scala 64:33]
    node _T_8 = bits(wmask, 6, 6) @[src/main/scala/Memory.scala 64:33]
    node _T_9 = bits(wmask, 7, 7) @[src/main/scala/Memory.scala 64:33]
    write mport MPORT_1 = mem[waddr], clock
    when _T_2 :
      MPORT_1[0] <= wdata[0]
    when _T_3 :
      MPORT_1[1] <= wdata[1]
    when _T_4 :
      MPORT_1[2] <= wdata[2]
    when _T_5 :
      MPORT_1[3] <= wdata[3]
    when _T_6 :
      MPORT_1[4] <= wdata[4]
    when _T_7 :
      MPORT_1[5] <= wdata[5]
    when _T_8 :
      MPORT_1[6] <= wdata[6]
    when _T_9 :
      MPORT_1[7] <= wdata[7]


