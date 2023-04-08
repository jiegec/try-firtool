FIRRTL version 1.2.0
circuit Memory1RW :
  module Memory1RW :
    input clock : Clock
    input reset : UInt<1>
    input addr : UInt<5> @[src/main/scala/Memory.scala 90:16]
    output rdata : UInt<64> @[src/main/scala/Memory.scala 91:17]
    input wdata : UInt<64> @[src/main/scala/Memory.scala 92:17]
    input we : UInt<1> @[src/main/scala/Memory.scala 93:14]

    smem mem : UInt<64> [32] @[src/main/scala/Memory.scala 95:24]
    infer mport port = mem[addr], clock @[src/main/scala/Memory.scala 96:17]
    rdata is invalid @[src/main/scala/Memory.scala 97:9]
    when we : @[src/main/scala/Memory.scala 98:12]
      port <= wdata @[src/main/scala/Memory.scala 99:10]
    else :
      rdata <= port @[src/main/scala/Memory.scala 101:11]


