// Code generated by Icestudio 0.5.1n210107

`default_nettype none

//---- Top entity
module main (
 input v27b0b8,
 input vfb9041,
 input vclk,
 output v4be84b,
 output v821857,
 output v9934e2,
 output vafb5c2,
 output [0:7] vinit
);
 wire w0;
 wire w1;
 wire w2;
 wire w3;
 wire [0:7] w4;
 wire w5;
 wire w6;
 wire w7;
 wire w8;
 wire w9;
 wire w10;
 wire [0:7] w11;
 wire [0:23] w12;
 wire w13;
 wire w14;
 assign w0 = v27b0b8;
 assign w1 = v27b0b8;
 assign v821857 = w6;
 assign v9934e2 = w7;
 assign vafb5c2 = w8;
 assign v4be84b = w9;
 assign w10 = vfb9041;
 assign w13 = vclk;
 assign w14 = vclk;
 assign w1 = w0;
 assign w14 = w13;
 v1e3e2f v67134d (
  .vf098d6(w0),
  .v1c91a6(w2),
  .vdf5643(w3),
  .v3ff34a(w4),
  .veac200(w5),
  .v258ff9(w9),
  .v336961(w11),
  .v80fc11(w12),
  .vc5a3e0(w13)
 );
 v2efe39 v424571 (
  .v0a7b4c(w1),
  .v93dd8f(w2),
  .ve3c814(w3),
  .v4654a8(w4),
  .vfc4a4e(w5),
  .v6a2826(w6),
  .v208ddd(w7),
  .vc4e2c6(w8),
  .v6ccc61(w10),
  .v7b73b8(w14)
 );
 main_v4b1247 v4b1247 (
  .kk(w11)
 );
 main_v24cbd2 v24cbd2 (
  .kk2(w12)
 );
 assign vinit = 8'b00000000;
endmodule

/*-------------------------------------------------*/
/*-- ov7670_rgb_yuv  */
/*-- - - - - - - - - - - - - - - - - - - - - - - --*/
/*-- Configures ov7670 in either RGB444 or YUV and shows it
/*-------------------------------------------------*/
//---- Top entity
module v1e3e2f (
 input vf098d6,
 input vc5a3e0,
 input veac200,
 input [7:0] v336961,
 input [7:0] v83ee6b,
 input [23:0] v318d7f,
 input [23:0] v80fc11,
 input [23:0] v25dd05,
 input [23:0] v3673c7,
 output v258ff9,
 output vdf5643,
 output v1c91a6,
 output [7:0] v3ff34a
);
 wire w0;
 wire w1;
 wire w2;
 wire w3;
 wire [0:7] w4;
 wire w5;
 wire w6;
 wire [0:7] w7;
 wire [0:7] w8;
 wire [0:23] w9;
 wire [0:23] w10;
 wire [0:23] w11;
 wire [0:23] w12;
 assign w0 = vc5a3e0;
 assign w1 = vf098d6;
 assign w2 = veac200;
 assign v1c91a6 = w3;
 assign v3ff34a = w4;
 assign vdf5643 = w5;
 assign v258ff9 = w6;
 assign w7 = v336961;
 assign w8 = v83ee6b;
 assign w9 = v318d7f;
 assign w10 = v80fc11;
 assign w11 = v25dd05;
 assign w12 = v3673c7;
 v1e3e2f_v65743f v65743f (
  .clk(w0),
  .rst(w1),
  .busy_spi(w2),
  .ena_2clk(w3),
  .data_spi(w4),
  .spi_send(w5),
  .spi_ss_n(w6),
  .motor_pwm_left_i(w7),
  .motor_pwm_rght_i(w8),
  .led_eye_left_rgb_i(w9),
  .led_eye_rght_rgb_i(w10),
  .led_blink_left_rgb_i(w11),
  .led_blink_rght_rgb_i(w12)
 );
endmodule

/*-------------------------------------------------*/
/*-- GPG Control   */
/*-- - - - - - - - - - - - - - - - - - - - - - - --*/
/*-- 
/*-------------------------------------------------*/

module v1e3e2f_v65743f (
 input rst,
 input clk,
 input busy_spi,
 input [7:0] motor_pwm_left_i,
 input [7:0] motor_pwm_rght_i,
 input [23:0] led_eye_left_rgb_i,
 input [23:0] led_eye_rght_rgb_i,
 input [23:0] led_blink_left_rgb_i,
 input [23:0] led_blink_rght_rgb_i,
 output spi_ss_n,
 output spi_send,
 output ena_2clk,
 output [7:0] data_spi
);
 // @include spi_ledctrl.v
 
   spi_ledctrl i_spi_ledctrl
   (
     .rst         (rst),
     .clk         (clk),
     .busy_spi    (busy_spi),
     .motor_pwm_left_i     (motor_pwm_left_i),
     .motor_pwm_rght_i     (motor_pwm_rght_i),
     .led_eye_left_rgb_i   (led_eye_left_rgb_i),
     .led_eye_rght_rgb_i   (led_eye_rght_rgb_i),
     .led_blink_left_rgb_i (led_blink_left_rgb_i),
     .led_blink_rght_rgb_i (led_blink_rght_rgb_i),
     .spi_ss_n    (spi_ss_n), // spi slave select
     .spi_send    (spi_send),
     .ena_2clk    (ena_2clk),
     .data_spi    (data_spi)
   );
 
endmodule
//---- Top entity
module v2efe39 (
 input v7b73b8,
 input v0a7b4c,
 input v93dd8f,
 input ve3c814,
 input [7:0] v4654a8,
 input v421bfc,
 input v6ccc61,
 output vfc4a4e,
 output v6a2826,
 output v208ddd,
 output vc4e2c6
);
 wire w0;
 wire w1;
 wire w2;
 wire w3;
 wire [0:7] w4;
 wire w5;
 wire w6;
 wire w7;
 wire w8;
 wire w9;
 wire w10;
 assign w0 = v7b73b8;
 assign w1 = v0a7b4c;
 assign w2 = v93dd8f;
 assign w3 = ve3c814;
 assign w4 = v4654a8;
 assign w5 = v421bfc;
 assign w6 = v6ccc61;
 assign vfc4a4e = w7;
 assign v6a2826 = w8;
 assign v208ddd = w9;
 assign vc4e2c6 = w10;
 v2efe39_vc66dce vc66dce (
  .clk(w0),
  .rst(w1),
  .ena_2clk(w2),
  .start(w3),
  .data_spi(w4),
  .ack(w5),
  .miso_i(w6),
  .busy_spi(w7),
  .sclk_o(w8),
  .mosi_o(w9),
  .rpi_running(w10)
 );
endmodule

/*-------------------------------------------------*/
/*--   */
/*-- - - - - - - - - - - - - - - - - - - - - - - --*/
/*-- 
/*-------------------------------------------------*/

module v2efe39_vc66dce (
 input clk,
 input rst,
 input ena_2clk,
 input start,
 input [7:0] data_spi,
 input ack,
 input miso_i,
 output busy_spi,
 output sclk_o,
 output mosi_o,
 output rpi_running
);
 // @include spi_master.v
  
   SPI_Master i_spi_master
    (
     // System
     .clk_i      (clk),
     .rst_i      (rst),
     .ena_i      (ena_2clk),  // 2*SCK
     // Interface
     .start_i    (start),
     .ack_i      (ack),  // IRQ Ack
     .tx_i       (data_spi),
     .busy_o     (busy_spi), 
 
     // SPI
     .sclk_o     (sclk_o), 
     .miso_i     (miso_i),
     //.mosi_en_o  (ssb), 
     .mosi_o     (mosi_o),
     .rpi_running (rpi_running)
    );
 
endmodule

module main_v4b1247 (
 output [7:0] kk
);
 assign kk = 8'd40;
endmodule

module main_v24cbd2 (
 output [23:0] kk2
);
 assign kk2 = 24'hff00ff;
endmodule
