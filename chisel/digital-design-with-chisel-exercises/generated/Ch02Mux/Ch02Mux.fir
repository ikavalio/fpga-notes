FIRRTL version 1.2.0
circuit Ch02Mux :
  module Ch02Mux :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip sw : UInt<3>, led : UInt<1>} @[\\src\\main\\scala\\Ch02Mux.scala 4:14]

    node _io_led_T = bits(io.sw, 0, 0) @[\\src\\main\\scala\\Ch02Mux.scala 9:22]
    node _io_led_T_1 = bits(io.sw, 1, 1) @[\\src\\main\\scala\\Ch02Mux.scala 9:32]
    node _io_led_T_2 = bits(io.sw, 2, 2) @[\\src\\main\\scala\\Ch02Mux.scala 9:42]
    node _io_led_T_3 = mux(_io_led_T, _io_led_T_1, _io_led_T_2) @[\\src\\main\\scala\\Ch02Mux.scala 9:16]
    io.led <= _io_led_T_3 @[\\src\\main\\scala\\Ch02Mux.scala 9:10]

