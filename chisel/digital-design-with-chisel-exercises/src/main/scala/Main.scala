object Main extends App {
  var stage = new chisel3.stage.ChiselStage

  for (gen <- Seq(
    ("Ch01Blinky", () => new Ch01Blinky(20_000_000, (1, 4))), // active for 200 ms and inactive for 800 ms (100 MHz clock)
    ("Ch02And", () => new Ch02And),
    ("Ch02Mux", () => new Ch02Mux),
  )) {
    stage.emitVerilog(gen._2(), Array("-td", "./generated/" + gen._1))
  }
}