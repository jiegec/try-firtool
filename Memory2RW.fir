FIRRTL version 1.2.0
circuit Memory2RW :
  module Memory2RW :
    input clock : Clock
    input reset : UInt<1>
    input p1addr : UInt<5> @[src/main/scala/Memory.scala 134:18]
    output p1rdata : UInt<64> @[src/main/scala/Memory.scala 135:19]
    input p1wdata : UInt<64> @[src/main/scala/Memory.scala 136:19]
    input p1we : UInt<1> @[src/main/scala/Memory.scala 137:16]
    input p2addr : UInt<5> @[src/main/scala/Memory.scala 139:18]
    output p2rdata : UInt<64> @[src/main/scala/Memory.scala 140:19]
    input p2wdata : UInt<64> @[src/main/scala/Memory.scala 141:19]
    input p2we : UInt<1> @[src/main/scala/Memory.scala 142:16]

    smem mem : UInt<64> [32] @[src/main/scala/Memory.scala 144:24]
    infer mport port1 = mem[p1addr], clock @[src/main/scala/Memory.scala 146:18]
    p1rdata is invalid @[src/main/scala/Memory.scala 147:11]
    when p1we : @[src/main/scala/Memory.scala 148:14]
      port1 <= p1wdata @[src/main/scala/Memory.scala 149:11]
    else :
      p1rdata <= port1 @[src/main/scala/Memory.scala 151:13]
    infer mport port2 = mem[p2addr], clock @[src/main/scala/Memory.scala 154:18]
    p2rdata is invalid @[src/main/scala/Memory.scala 155:11]
    when p2we : @[src/main/scala/Memory.scala 156:14]
      port2 <= p2wdata @[src/main/scala/Memory.scala 157:11]
    else :
      p2rdata <= port2 @[src/main/scala/Memory.scala 159:13]


