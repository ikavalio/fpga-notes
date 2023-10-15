module Ch01Blinky(
  input   clock,
  input   reset,
  output  io_led // @[\\src\\main\\scala\\Ch01Blinky.scala 4:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [26:0] cntReg; // @[\\src\\main\\scala\\Ch01Blinky.scala 11:23]
  reg  ledReg; // @[\\src\\main\\scala\\Ch01Blinky.scala 12:23]
  wire [26:0] _cntReg_T_2 = cntReg + 27'h1; // @[\\src\\main\\scala\\Ch01Blinky.scala 14:57]
  assign io_led = ledReg; // @[\\src\\main\\scala\\Ch01Blinky.scala 16:10]
  always @(posedge clock) begin
    if (reset) begin // @[\\src\\main\\scala\\Ch01Blinky.scala 11:23]
      cntReg <= 27'h0; // @[\\src\\main\\scala\\Ch01Blinky.scala 11:23]
    end else if (cntReg == 27'h5f5e0ff) begin // @[\\src\\main\\scala\\Ch01Blinky.scala 14:16]
      cntReg <= 27'h0;
    end else begin
      cntReg <= _cntReg_T_2;
    end
    if (reset) begin // @[\\src\\main\\scala\\Ch01Blinky.scala 12:23]
      ledReg <= 1'h0; // @[\\src\\main\\scala\\Ch01Blinky.scala 12:23]
    end else begin
      ledReg <= cntReg < 27'h1312d00; // @[\\src\\main\\scala\\Ch01Blinky.scala 15:10]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cntReg = _RAND_0[26:0];
  _RAND_1 = {1{`RANDOM}};
  ledReg = _RAND_1[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
