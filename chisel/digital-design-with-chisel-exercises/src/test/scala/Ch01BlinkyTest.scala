import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

class Ch01BlinkyTest extends AnyFlatSpec with ChiselScalatestTester {
  behavior of "Ch01Blinky"
  it should "pass" in {
    test(new Ch01Blinky(20, (1, 4))) { c =>
      c.clock.setTimeout(0)
      println("Start the blinking LED")
      for (_ <- 0 until 20) {
        c.clock.step(10) // 100 ns
        val ledNow = c.io.led.peek().litValue
        val s = if (ledNow == 0) "o" else "*"
        System.out.println(s)
      }
      println("\nEnd the blinking LED")
    }
  }
}
