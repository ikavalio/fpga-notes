import chisel3._

class Ch02Mux extends Module {
  val io = IO(new Bundle {
    val sw = Input(UInt(3.W))
    val led = Output(UInt(1.W))
  })

  io.led := Mux(io.sw(0), io.sw(1), io.sw(2))
}
