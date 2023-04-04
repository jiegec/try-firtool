import chisel3._

trait Emit {
  def gen(): Module
  def main(args: Array[String]): Unit = {
    val pretty = Array(
      "--emission-options",
      "disableMemRandomization,disableRegisterRandomization"
    )
    println(getVerilogString(gen(), pretty))
  }
}
