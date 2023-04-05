FIRRTL version 1.2.0
circuit Memory2RW :
  module Memory2RW :
    input clock : Clock
    input reset : UInt<1>
    input p1addr : UInt<5> @[src/main/scala/Memory.scala 117:18]
    output p1rdata : UInt<64> @[src/main/scala/Memory.scala 118:19]
    input p1wdata : UInt<64> @[src/main/scala/Memory.scala 119:19]
    input p1we : UInt<1> @[src/main/scala/Memory.scala 120:16]
    input p2addr : UInt<5> @[src/main/scala/Memory.scala 122:18]
    output p2rdata : UInt<64> @[src/main/scala/Memory.scala 123:19]
    input p2wdata : UInt<64> @[src/main/scala/Memory.scala 124:19]
    input p2we : UInt<1> @[src/main/scala/Memory.scala 125:16]

    smem mem : UInt<64> [32] @[src/main/scala/Memory.scala 127:24]
    infer mport port1 = mem[p1addr], clock @[src/main/scala/Memory.scala 129:18]
    p1rdata is invalid @[src/main/scala/Memory.scala 130:11]
    when p1we : @[src/main/scala/Memory.scala 131:14]
      port1 <= p1wdata @[src/main/scala/Memory.scala 132:11]
    else :
      p1rdata <= port1 @[src/main/scala/Memory.scala 134:13]
    infer mport port2 = mem[p2addr], clock @[src/main/scala/Memory.scala 137:18]
    p2rdata is invalid @[src/main/scala/Memory.scala 138:11]
    when p2we : @[src/main/scala/Memory.scala 139:14]
      port2 <= p2wdata @[src/main/scala/Memory.scala 140:11]
    else :
      p2rdata <= port2 @[src/main/scala/Memory.scala 142:13]


