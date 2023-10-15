`timescale 10ns / 1ns

module au_top(
    input clk,
    input rst_n,
    output[7:0] led,
    input usb_rx,
    output usb_tx,
    );
    
    /* 
    sub b(
        .clock(clk), 
        .reset(!rst_n), 
        .io_led(led[3])
    );
    */

    assign usb_tx = usb_rx;
endmodule
