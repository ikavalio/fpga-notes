FIRRTL version 1.2.0
circuit Ch01Blinky :
  module Ch01Blinky :
    input clock : Clock
    input reset : UInt<1>
    output io : { led : UInt<1>} @[\\src\\main\\scala\\Ch01Blinky.scala 4:14]

    reg cntReg : UInt<27>, clock with :
      reset => (reset, UInt<27>("h0")) @[\\src\\main\\scala\\Ch01Blinky.scala 11:23]
    reg ledReg : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[\\src\\main\\scala\\Ch01Blinky.scala 12:23]
    node _cntReg_T = eq(cntReg, UInt<27>("h5f5e0ff")) @[\\src\\main\\scala\\Ch01Blinky.scala 14:25]
    node _cntReg_T_1 = add(cntReg, UInt<1>("h1")) @[\\src\\main\\scala\\Ch01Blinky.scala 14:57]
    node _cntReg_T_2 = tail(_cntReg_T_1, 1) @[\\src\\main\\scala\\Ch01Blinky.scala 14:57]
    node _cntReg_T_3 = mux(_cntReg_T, UInt<1>("h0"), _cntReg_T_2) @[\\src\\main\\scala\\Ch01Blinky.scala 14:16]
    cntReg <= _cntReg_T_3 @[\\src\\main\\scala\\Ch01Blinky.scala 14:10]
    node _ledReg_T = lt(cntReg, UInt<25>("h1312d00")) @[\\src\\main\\scala\\Ch01Blinky.scala 15:20]
    ledReg <= _ledReg_T @[\\src\\main\\scala\\Ch01Blinky.scala 15:10]
    io.led <= ledReg @[\\src\\main\\scala\\Ch01Blinky.scala 16:10]

