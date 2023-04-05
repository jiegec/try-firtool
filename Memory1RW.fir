FIRRTL version 1.2.0
circuit Memory1RW :
  module Memory1RW :
    input clock : Clock
    input reset : UInt<1>
    input addr : UInt<5> @[src/main/scala/Memory.scala 39:16]
    output rdata : UInt<64> @[src/main/scala/Memory.scala 40:17]
    input wdata : UInt<64> @[src/main/scala/Memory.scala 41:17]
    input we : UInt<1> @[src/main/scala/Memory.scala 42:14]

    smem mem : UInt<64> [32] @[src/main/scala/Memory.scala 44:24]
    infer mport port = mem[addr], clock @[src/main/scala/Memory.scala 45:17]
    rdata is invalid @[src/main/scala/Memory.scala 46:9]
    when we : @[src/main/scala/Memory.scala 47:12]
      port <= wdata @[src/main/scala/Memory.scala 48:10]
    else :
      rdata <= port @[src/main/scala/Memory.scala 50:11]


