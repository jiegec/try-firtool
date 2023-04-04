import chisel3._

trait Emit {
  def gen(): Module
  def main(args: Array[String]): Unit = {
    val pretty = Array(
      "--disable-all-randomization"
    )
    circt.stage.ChiselStage
      .emitSystemVerilogFile(gen(), Array.empty, pretty)
  }
}
