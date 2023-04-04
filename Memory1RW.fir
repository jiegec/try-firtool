circuit Memory1RW :
  module Memory1RW :
    input clock : Clock
    input reset : UInt<1>
    input addr : UInt<5> @[src/main/scala/Memory.scala 21:16]
    output rdata : UInt<64> @[src/main/scala/Memory.scala 22:17]
    input wdata : UInt<64> @[src/main/scala/Memory.scala 23:17]
    input we : UInt<1> @[src/main/scala/Memory.scala 24:14]

    smem mem : UInt<64> [32] @[src/main/scala/Memory.scala 26:24]
    infer mport port = mem[addr], clock @[src/main/scala/Memory.scala 27:17]
    rdata is invalid @[src/main/scala/Memory.scala 28:9]
    when we : @[src/main/scala/Memory.scala 29:12]
      port <= wdata @[src/main/scala/Memory.scala 30:10]
    else :
      rdata <= port @[src/main/scala/Memory.scala 32:11]


