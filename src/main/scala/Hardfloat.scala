import chisel3._
import hardfloat._

object HardfloatMulAddRecFN extends Emit {
  def gen() = new MulAddRecFN(8, 24)
  def name() = "MulAddRecFN"
}
