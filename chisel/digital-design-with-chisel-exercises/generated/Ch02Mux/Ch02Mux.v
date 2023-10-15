module Ch02Mux(
  input        clock,
  input        reset,
  input  [2:0] io_sw, // @[\\src\\main\\scala\\Ch02Mux.scala 4:14]
  output       io_led // @[\\src\\main\\scala\\Ch02Mux.scala 4:14]
);
  assign io_led = io_sw[0] ? io_sw[1] : io_sw[2]; // @[\\src\\main\\scala\\Ch02Mux.scala 9:16]
endmodule
