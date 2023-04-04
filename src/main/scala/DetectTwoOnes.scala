import chisel3._
import chisel3.util._

// DetectTwoOnes from chisel3 sources
class DetectTwoOnes extends Module {
  val io = IO(new Bundle {
    val in = Input(Bool())
    val out = Output(Bool())
  })

  object State extends ChiselEnum {
    val sNone, sOne1, sTwo1s = Value
  }

  val state = RegInit(State.sNone)

  io.out := (state === State.sTwo1s)

  switch(state) {
    is(State.sNone) {
      when(io.in) {
        state := State.sOne1
      }
    }
    is(State.sOne1) {
      when(io.in) {
        state := State.sTwo1s
      }.otherwise {
        state := State.sNone
      }
    }
    is(State.sTwo1s) {
      when(!io.in) {
        state := State.sNone
      }
    }
  }
}

object DetectTwoOnes extends Emit {
  def gen() = new DetectTwoOnes
  def name() = "DetectTwoOnes"
}
