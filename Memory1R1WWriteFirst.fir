FIRRTL version 1.2.0
circuit Memory1R1WWriteFirst :
  module Memory1R1WWriteFirst :
    input clock : Clock
    input reset : UInt<1>
    input raddr : UInt<5> @[src/main/scala/Memory.scala 38:17]
    output rdata : UInt<64> @[src/main/scala/Memory.scala 39:17]
    input waddr : UInt<5> @[src/main/scala/Memory.scala 41:17]
    input wdata : UInt<64> @[src/main/scala/Memory.scala 42:17]

    smem mem : UInt<64> [32] new @[src/main/scala/Memory.scala 44:24]
    wire _rdata_WIRE : UInt @[src/main/scala/Memory.scala 45:20]
    _rdata_WIRE is invalid @[src/main/scala/Memory.scala 45:20]
    when UInt<1>("h1") : @[src/main/scala/Memory.scala 45:20]
      _rdata_WIRE <= raddr @[src/main/scala/Memory.scala 45:20]
      node _rdata_T = or(_rdata_WIRE, UInt<5>("h0")) @[src/main/scala/Memory.scala 45:20]
      node _rdata_T_1 = bits(_rdata_T, 4, 0) @[src/main/scala/Memory.scala 45:20]
      read mport rdata_MPORT = mem[_rdata_T_1], clock @[src/main/scala/Memory.scala 45:20]
    rdata <= rdata_MPORT @[src/main/scala/Memory.scala 45:9]
    write mport MPORT = mem[waddr], clock
    MPORT <= wdata

