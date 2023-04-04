import chisel3._

trait Emit {
  def gen(): RawModule
  def name(): String
  def main(args: Array[String]): Unit = {
    val pretty = Array(
      "--emission-options",
      "disableMemRandomization,disableRegisterRandomization",
      "-o",
      s"${name()}_orig.v",
      "--repl-seq-mem",
      s"-c:${name()}:-o:${name()}_orig.conf"
    )
    println(getVerilogString(gen(), pretty))

    val firtoolArgs = Array(
      "--disable-all-randomization",
      "-o",
      s"${name()}_firtool.sv",
      "-repl-seq-mem",
      s"-repl-seq-mem-file=${name()}_firtool.conf"
    )
    circt.stage.ChiselStage
      .emitSystemVerilogFile(gen(), Array.empty, firtoolArgs)
  }
}
