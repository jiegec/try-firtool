FIRRTL version 1.2.0
circuit Memory1RW :
  module Memory1RW :
    input clock : Clock
    input reset : UInt<1>
    input addr : UInt<5> @[src/main/scala/Memory.scala 73:16]
    output rdata : UInt<64> @[src/main/scala/Memory.scala 74:17]
    input wdata : UInt<64> @[src/main/scala/Memory.scala 75:17]
    input we : UInt<1> @[src/main/scala/Memory.scala 76:14]

    smem mem : UInt<64> [32] @[src/main/scala/Memory.scala 78:24]
    infer mport port = mem[addr], clock @[src/main/scala/Memory.scala 79:17]
    rdata is invalid @[src/main/scala/Memory.scala 80:9]
    when we : @[src/main/scala/Memory.scala 81:12]
      port <= wdata @[src/main/scala/Memory.scala 82:10]
    else :
      rdata <= port @[src/main/scala/Memory.scala 84:11]


