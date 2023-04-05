FIRRTL version 1.2.0
circuit Memory2R2W :
  module Memory2R2W :
    input clock : Clock
    input reset : UInt<1>
    input r1addr : UInt<5> @[src/main/scala/Memory.scala 60:18]
    output r1data : UInt<64> @[src/main/scala/Memory.scala 61:18]
    input r2addr : UInt<5> @[src/main/scala/Memory.scala 62:18]
    output r2data : UInt<64> @[src/main/scala/Memory.scala 63:18]
    input w1addr : UInt<5> @[src/main/scala/Memory.scala 65:18]
    input w1data : UInt<64> @[src/main/scala/Memory.scala 66:18]
    input w2addr : UInt<5> @[src/main/scala/Memory.scala 67:18]
    input w2data : UInt<64> @[src/main/scala/Memory.scala 68:18]

    smem mem : UInt<64> [32] @[src/main/scala/Memory.scala 70:24]
    wire _r1data_WIRE : UInt @[src/main/scala/Memory.scala 71:21]
    _r1data_WIRE is invalid @[src/main/scala/Memory.scala 71:21]
    when UInt<1>("h1") : @[src/main/scala/Memory.scala 71:21]
      _r1data_WIRE <= r1addr @[src/main/scala/Memory.scala 71:21]
      node _r1data_T = or(_r1data_WIRE, UInt<5>("h0")) @[src/main/scala/Memory.scala 71:21]
      node _r1data_T_1 = bits(_r1data_T, 4, 0) @[src/main/scala/Memory.scala 71:21]
      read mport r1data_MPORT = mem[_r1data_T_1], clock @[src/main/scala/Memory.scala 71:21]
    r1data <= r1data_MPORT @[src/main/scala/Memory.scala 71:10]
    wire _r2data_WIRE : UInt @[src/main/scala/Memory.scala 72:21]
    _r2data_WIRE is invalid @[src/main/scala/Memory.scala 72:21]
    when UInt<1>("h1") : @[src/main/scala/Memory.scala 72:21]
      _r2data_WIRE <= r2addr @[src/main/scala/Memory.scala 72:21]
      node _r2data_T = or(_r2data_WIRE, UInt<5>("h0")) @[src/main/scala/Memory.scala 72:21]
      node _r2data_T_1 = bits(_r2data_T, 4, 0) @[src/main/scala/Memory.scala 72:21]
      read mport r2data_MPORT = mem[_r2data_T_1], clock @[src/main/scala/Memory.scala 72:21]
    r2data <= r2data_MPORT @[src/main/scala/Memory.scala 72:10]
    write mport MPORT = mem[w1addr], clock
    MPORT <= w1data
    write mport MPORT_1 = mem[w2addr], clock
    MPORT_1 <= w2data

