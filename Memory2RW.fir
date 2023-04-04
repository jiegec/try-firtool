circuit Memory2RW :
  module Memory2RW :
    input clock : Clock
    input reset : UInt<1>
    input p1addr : UInt<5> @[src/main/scala/Memory.scala 83:18]
    output p1rdata : UInt<64> @[src/main/scala/Memory.scala 84:19]
    input p1wdata : UInt<64> @[src/main/scala/Memory.scala 85:19]
    input p1we : UInt<1> @[src/main/scala/Memory.scala 86:16]
    input p2addr : UInt<5> @[src/main/scala/Memory.scala 88:18]
    output p2rdata : UInt<64> @[src/main/scala/Memory.scala 89:19]
    input p2wdata : UInt<64> @[src/main/scala/Memory.scala 90:19]
    input p2we : UInt<1> @[src/main/scala/Memory.scala 91:16]

    smem mem : UInt<64> [32] @[src/main/scala/Memory.scala 93:24]
    infer mport port1 = mem[p1addr], clock @[src/main/scala/Memory.scala 95:18]
    p1rdata is invalid @[src/main/scala/Memory.scala 96:11]
    when p1we : @[src/main/scala/Memory.scala 97:14]
      port1 <= p1wdata @[src/main/scala/Memory.scala 98:11]
    else :
      p1rdata <= port1 @[src/main/scala/Memory.scala 100:13]
    infer mport port2 = mem[p2addr], clock @[src/main/scala/Memory.scala 103:18]
    p2rdata is invalid @[src/main/scala/Memory.scala 104:11]
    when p2we : @[src/main/scala/Memory.scala 105:14]
      port2 <= p2wdata @[src/main/scala/Memory.scala 106:11]
    else :
      p2rdata <= port2 @[src/main/scala/Memory.scala 108:13]


