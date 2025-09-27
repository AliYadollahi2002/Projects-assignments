`timescale 1ns / 1ps
module CORDIC_ip
#(
    parameter ITR = 7,
    parameter L = 9,
    parameter W = 7
 )
(
    input clk,
    input [L-1 : 0] x_in,
    input [L-1 : 0] y_in,
    input [L-1 : 0] z_in, 
    output reg [L-1 : 0] z_out
);
wire [8:0] tan_values [0:9];
reg [L-1 : 0] x_reg [0 : ITR];
reg [L-1 : 0]  y_reg [0:ITR];
reg [L-1 : 0] z_reg [0:ITR];

wire [L-1 : 0] x_w [0 : ITR - 1];
wire [L-1 : 0]  y_w [0:ITR - 1];
wire [L-1 : 0] z_w [0:ITR - 1];

assign tan_values[0] = 9'b001100100;
assign tan_values[1] = 9'b000111011;
assign tan_values[2] = 9'b000011111;
assign tan_values[3] = 9'b000001111;
assign tan_values[4] = 9'b000000111;
assign tan_values[5] = 9'b000000011;
assign tan_values[6] = 9'b000000001;
assign tan_values[7] = 9'b000000000;
assign tan_values[8] = 9'b000000000;
assign tan_values[9] = 9'b000000000;

always @(posedge clk) begin
    x_reg[0] <= x_in;
    y_reg[0] <= y_in;
    z_reg[0] <= z_in;
    z_out <= z_w[ITR - 1];

end

generate
    genvar i;
    for (i = 0;i < ITR ;i = i+1 ) begin: A
        always @(posedge clk) begin
            x_reg[i+1] <= x_w[i];
            y_reg[i+1] <= y_w[i];
            z_reg[i+1] <= z_w[i];
        end



    CORDIC_element #(
    .ITR(ITR),
    .L(L),
    .W(W),
    .SHIFT(i)
)
 CORDIC_element_inst1
(
    .x_in(x_reg[i]),
    .y_in(y_reg[i]),
    .z_in(z_reg[i]),
    .x_out(x_w[i]),
    .y_out(y_w[i]),
    .z_out(z_w[i]),
    .TAN(tan_values[i])
); 
    end
endgenerate
endmodule
