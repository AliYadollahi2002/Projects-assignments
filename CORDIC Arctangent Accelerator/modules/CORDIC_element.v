`timescale 1ns / 1ps
module CORDIC_element
#(
    parameter ITR = 7,
    parameter L = 9,
    parameter W = 7,
    parameter SHIFT = 2
 )
(
    input signed [L-1 : 0] x_in,
    input signed [L-1 : 0] y_in,
    input signed [L-1 : 0] TAN,
    input signed[L-1 : 0] z_in,
    output signed[L-1 : 0] x_out,
    output signed[L-1 : 0] y_out,
    output signed[L-1 : 0] z_out
);
wire signed [L + SHIFT - 1 : 0] x_temp , y_temp;
assign x_temp = (x_in >> (SHIFT));
assign y_temp = (y_in >> (SHIFT));
assign x_out = (y_in < 0) ?  x_in - y_temp : x_in + y_temp;
assign y_out = (y_in < 0) ? y_in + x_temp : y_in - x_temp;
assign z_out = (y_in < 0) ? z_in - TAN : z_in + TAN;

endmodule
