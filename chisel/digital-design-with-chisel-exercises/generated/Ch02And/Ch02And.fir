FIRRTL version 1.2.0
circuit Ch02And :
  module Ch02And :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip sw : UInt<2>, led : UInt<1>} @[\\src\\main\\scala\\Ch02And.scala 4:14]

    node _io_led_T = bits(io.sw, 0, 0) @[\\src\\main\\scala\\Ch02And.scala 9:18]
    node _io_led_T_1 = bits(io.sw, 1, 1) @[\\src\\main\\scala\\Ch02And.scala 9:29]
    node _io_led_T_2 = and(_io_led_T, _io_led_T_1) @[\\src\\main\\scala\\Ch02And.scala 9:22]
    io.led <= _io_led_T_2 @[\\src\\main\\scala\\Ch02And.scala 9:10]

