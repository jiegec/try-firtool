import chisel3._

class Memory1R1W extends Module {
  val raddr = IO(Input(UInt(5.W)))
  val rdata = IO(Output(UInt(64.W)))

  val waddr = IO(Input(UInt(5.W)))
  val wdata = IO(Input(UInt(64.W)))

  val mem = SyncReadMem(32, UInt(64.W))
  rdata := mem.read(raddr)
  mem.write(waddr, wdata)
}

object Memory1R1W extends Emit {
  def gen() = new Memory1R1W
  def name() = "Memory1R1W"
}

class Memory1RW extends Module {
  val addr = IO(Input(UInt(5.W)))
  val rdata = IO(Output(UInt(64.W)))
  val wdata = IO(Input(UInt(64.W)))
  val we = IO(Input(Bool()))

  val mem = SyncReadMem(32, UInt(64.W))
  val port = mem(addr)
  rdata := DontCare
  when(we) {
    port := wdata
  }.otherwise {
    rdata := port
  }
}

object Memory1RW extends Emit {
  def gen() = new Memory1RW
  def name() = "Memory1RW"
}
