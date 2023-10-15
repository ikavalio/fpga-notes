import chisel3._

class Ch02And extends Module {
  val io = IO(new Bundle {
    val sw = Input(UInt(2.W))
    val led = Output(UInt(1.W))
  })

  io.led := io.sw(0) & io.sw(1)
}
