module my_CLB (
    input sram0 , sram1 , sram2 , sram3 , sram4 , sram5 , sram6 , sram7 , sram8 , sram9 , sram10 , sram11 , sram12 , sram13 , sram14 , sram15,
    input s,
    input I0 , I1 , I2 , I3,
    output CLB_o,
    input clk , rst
);
wire sram_in0 , sram_in1 , sram_in2 , sram_in3;
wire sram_in4 , sram_in5 , sram_in6 , sram_in7;
wire sram_in8 , sram_in9 , sram_in10 , sram_in11;
wire sram_in12 , sram_in13 , sram_in14 , sram_in15;
wire stage1_0 , stage1_1 , stage1_2 , stage1_3 , stage1_4 , stage1_5 , stage1_6 , stage1_7;
wire stage2_0 , stage2_1 , stage2_2 , stage2_3;
wire stage3_0 , stage3_1;
wire lut_o;
reg clb_reg;
assign sram_in0 = sram0;
assign sram_in1 = sram1;
assign sram_in2 = sram2;
assign sram_in3 = sram3;
assign sram_in4 = sram4;
assign sram_in5 = sram5;
assign sram_in6 = sram6;
assign sram_in7 = sram7;
assign sram_in8 = sram8;
assign sram_in9 = sram9;
assign sram_in10 = sram10;
assign sram_in11 = sram11;
assign sram_in12 = sram12;
assign sram_in13 = sram13;
assign sram_in14 = sram14;
assign sram_in15 = sram15;
// Stage 1
assign stage1_0 = (I0 == 0) ? sram_in0 : sram_in1;
assign stage1_1 = (I0 == 0) ? sram_in2 : sram_in3;
assign stage1_2 = (I0 == 0) ? sram_in4 : sram_in5;
assign stage1_3 = (I0 == 0) ? sram_in6 : sram_in7;
assign stage1_4 = (I0 == 0) ? sram_in8 : sram_in9;
assign stage1_5 = (I0 == 0) ? sram_in10 : sram_in11;
assign stage1_6 = (I0 == 0) ? sram_in12 : sram_in13;
assign stage1_7 = (I0 == 0) ? sram_in14 : sram_in15;
//Stage 2
assign stage2_0 = (I1 == 0) ? stage1_0 : stage1_1;
assign stage2_1 = (I1 == 0) ? stage1_2 : stage1_3;
assign stage2_2 = (I1 == 0) ? stage1_4 : stage1_5;
assign stage2_3 = (I1 == 0) ? stage1_6 : stage1_7;
//Stage 3
assign stage3_0 = (I2 == 0) ? stage2_0 : stage2_1;
assign stage3_1 = (I2 == 0) ? stage2_2 : stage2_3;
//Stage lut out
assign lut_o = (I3 == 0) ? stage3_0 : stage3_1;
// Last MUX
assign CLB_o = (s == 0) ? lut_o : clb_reg;

always @(posedge clk) begin
    if (rst)  clb_reg <= 1'b0;
    else clb_reg <= lut_o;
end





    
endmodule