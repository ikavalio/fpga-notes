`timescale 10ns / 1ns

module au_top_with_io(
    input clk,
    input rst_n,
    output[7:0] led,
    input usb_rx,
    output usb_tx,
    output[23:0] io_led,    // [3][8] LEDs
    output[7:0]  io_seg,    // [8] 7-segment LEDs
    output[3:0]  io_sel,    // Digit select
    input[4:0]   io_button, // 5 buttons
    input[23:0]  io_dip     // DIP switches
    );
    
    /*
    sub b(
        .clock(clk), 
        .reset(!rst_n), 
        .io_sw(io_button[2:0]), 
        .io_led(led[3])
    );
    */
    
    assign usb_tx = usb_rx;
endmodule
