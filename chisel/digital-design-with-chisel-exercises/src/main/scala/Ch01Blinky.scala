import chisel3.{util, _}

class Ch01Blinky(timeUnit: Int, scale: (Int, Int)) extends Module {
  val io = IO(new Bundle {
    val led = Output(UInt(1.W))
  })

  val period = (scale._1 + scale._2) * timeUnit
  val enabled = scale._1 * timeUnit

  val cntReg = RegInit(0.U(util.log2Up(period).W))
  val ledReg = RegInit(0.U(1.W))

  cntReg := Mux(cntReg  === (period - 1).U, 0.U, cntReg + 1.U)
  ledReg := cntReg < enabled.U
  io.led := ledReg
}
