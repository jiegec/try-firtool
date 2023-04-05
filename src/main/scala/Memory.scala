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

class Memory1R1WReadFirst extends Module {
  val raddr = IO(Input(UInt(5.W)))
  val rdata = IO(Output(UInt(64.W)))

  val waddr = IO(Input(UInt(5.W)))
  val wdata = IO(Input(UInt(64.W)))

  val mem = SyncReadMem(32, UInt(64.W), SyncReadMem.ReadFirst)
  rdata := mem.read(raddr)
  mem.write(waddr, wdata)
}

object Memory1R1WReadFirst extends Emit {
  def gen() = new Memory1R1WReadFirst
  def name() = "Memory1R1WReadFirst"
}

class Memory1R1WWriteFirst extends Module {
  val raddr = IO(Input(UInt(5.W)))
  val rdata = IO(Output(UInt(64.W)))

  val waddr = IO(Input(UInt(5.W)))
  val wdata = IO(Input(UInt(64.W)))

  val mem = SyncReadMem(32, UInt(64.W), SyncReadMem.WriteFirst)
  rdata := mem.read(raddr)
  mem.write(waddr, wdata)
}

object Memory1R1WWriteFirst extends Emit {
  def gen() = new Memory1R1WWriteFirst
  def name() = "Memory1R1WWriteFirst"
}

class Memory1R1WMasked extends Module {
  val raddr = IO(Input(UInt(5.W)))
  val rdata = IO(Output(Vec(8, UInt(8.W))))

  val waddr = IO(Input(UInt(5.W)))
  val wdata = IO(Input(Vec(8, UInt(8.W))))
  val wmask = IO(Input(UInt(8.W)))

  val mem = SyncReadMem(32, Vec(8, UInt(8.W)))
  rdata := mem.read(raddr)
  mem.write(waddr, wdata, wmask.asBools)
}

object Memory1R1WMasked extends Emit {
  def gen() = new Memory1R1WMasked
  def name() = "Memory1R1WMasked"
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

class Memory2R2W extends Module {
  val r1addr = IO(Input(UInt(5.W)))
  val r1data = IO(Output(UInt(64.W)))
  val r2addr = IO(Input(UInt(5.W)))
  val r2data = IO(Output(UInt(64.W)))

  val w1addr = IO(Input(UInt(5.W)))
  val w1data = IO(Input(UInt(64.W)))
  val w2addr = IO(Input(UInt(5.W)))
  val w2data = IO(Input(UInt(64.W)))

  val mem = SyncReadMem(32, UInt(64.W))
  r1data := mem.read(r1addr)
  r2data := mem.read(r2addr)
  mem.write(w1addr, w1data)
  mem.write(w2addr, w2data)
}

object Memory2R2W extends Emit {
  def gen() = new Memory2R2W
  def name() = "Memory2R2W"
}

class Memory2RW extends Module {
  val p1addr = IO(Input(UInt(5.W)))
  val p1rdata = IO(Output(UInt(64.W)))
  val p1wdata = IO(Input(UInt(64.W)))
  val p1we = IO(Input(Bool()))

  val p2addr = IO(Input(UInt(5.W)))
  val p2rdata = IO(Output(UInt(64.W)))
  val p2wdata = IO(Input(UInt(64.W)))
  val p2we = IO(Input(Bool()))

  val mem = SyncReadMem(32, UInt(64.W))

  val port1 = mem(p1addr)
  p1rdata := DontCare
  when(p1we) {
    port1 := p1wdata
  }.otherwise {
    p1rdata := port1
  }

  val port2 = mem(p2addr)
  p2rdata := DontCare
  when(p2we) {
    port2 := p2wdata
  }.otherwise {
    p2rdata := port2
  }
}

object Memory2RW extends Emit {
  def gen() = new Memory2RW
  def name() = "Memory2RW"
}
