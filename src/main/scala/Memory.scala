import chisel3._

class Memory extends Module {
  val raddr = IO(Input(UInt(5.W)))
  val rdata = IO(Output(UInt(32.W)))

  val waddr = IO(Input(UInt(5.W)))
  val wdata = IO(Input(UInt(32.W)))

  val mem = SyncReadMem(32, UInt(32.W))
  rdata := mem.read(raddr)
  mem.write(waddr, wdata)
}

object Memory extends Emit {
  def gen() = new Memory
  def name() = "Memory"
}
