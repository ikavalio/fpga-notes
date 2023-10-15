module Ch02And(
  input        clock,
  input        reset,
  input  [1:0] io_sw, // @[\\src\\main\\scala\\Ch02And.scala 4:14]
  output       io_led // @[\\src\\main\\scala\\Ch02And.scala 4:14]
);
  assign io_led = io_sw[0] & io_sw[1]; // @[\\src\\main\\scala\\Ch02And.scala 9:22]
endmodule
