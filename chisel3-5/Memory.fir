circuit Memory :
  module Memory :
    input clock : Clock
    input reset : UInt<1>
    input raddr : UInt<5>
    output rdata : UInt<32>
    input waddr : UInt<5>
    input wdata : UInt<32>

    smem mem : UInt<32> [32] @[Memory.scala 10:24]
    wire _rdata_WIRE : UInt @[Memory.scala 11:20]
    _rdata_WIRE is invalid @[Memory.scala 11:20]
    when UInt<1>("h1") : @[Memory.scala 11:20]
      _rdata_WIRE <= raddr @[Memory.scala 11:20]
      node _rdata_T = or(_rdata_WIRE, UInt<5>("h0")) @[Memory.scala 11:20]
      node _rdata_T_1 = bits(_rdata_T, 4, 0) @[Memory.scala 11:20]
      read mport rdata_MPORT = mem[_rdata_T_1], clock @[Memory.scala 11:20]
    rdata <= rdata_MPORT @[Memory.scala 11:9]
    write mport MPORT = mem[waddr], clock
    MPORT <= wdata

