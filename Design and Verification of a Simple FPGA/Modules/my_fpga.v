`timescale 1ns / 1ps
module my_fpga
#(
    //CLBa
    parameter CLBA_SRAM0 = 0 ,
    parameter CLBA_SRAM1 = 0 ,
    parameter CLBA_SRAM2 = 0 ,
    parameter CLBA_SRAM3 = 0 ,
    parameter CLBA_SRAM4 = 0 ,
    parameter CLBA_SRAM5 = 0 ,
    parameter CLBA_SRAM6 = 0 ,
    parameter CLBA_SRAM7 = 0 ,
    parameter CLBA_SRAM8 = 0 ,
    parameter CLBA_SRAM9 = 0 ,
    parameter CLBA_SRAM10 = 0 ,
    parameter CLBA_SRAM11 = 0 ,
    parameter CLBA_SRAM12 = 0 ,
    parameter CLBA_SRAM13 = 0 ,
    parameter CLBA_SRAM14 = 0 ,
    parameter CLBA_SRAM15 = 0 ,
    parameter CLBA_S = 0,
    //CLBb
    parameter CLBB_SRAM0 = 0 ,
    parameter CLBB_SRAM1 = 0 ,
    parameter CLBB_SRAM2 = 0 ,
    parameter CLBB_SRAM3 = 0 ,
    parameter CLBB_SRAM4 = 0 ,
    parameter CLBB_SRAM5 = 0 ,
    parameter CLBB_SRAM6 = 0 ,
    parameter CLBB_SRAM7 = 0 ,
    parameter CLBB_SRAM8 = 0 ,
    parameter CLBB_SRAM9 = 0 ,
    parameter CLBB_SRAM10 = 0 ,
    parameter CLBB_SRAM11 = 0 ,
    parameter CLBB_SRAM12 = 0 ,
    parameter CLBB_SRAM13 = 0 ,
    parameter CLBB_SRAM14 = 0 ,
    parameter CLBB_SRAM15 = 0 ,
    parameter CLBB_S = 0,
    //CONN
    parameter CONN_SRAM0 = 0,
    parameter CONN_SRAM1 = 0,
    parameter CONN_SRAM2 = 0,
    parameter CONN_SRAM3 = 0   
)
(
    input  I_a0 , I_a1 , I_a2 , I_a3,
    input  I_b0 , I_b1 , I_b2 , I_b3,
    input  clk,
    input  reset,
    output wire CLBb_O
);

wire [37:0] memory_out;
wire CLBa_O;
wire conn_out0 , conn_out1 , conn_out2 , conn_out3;
wire conn_sel0 , conn_sel1 , conn_sel2 , conn_sel3;
assign conn_sel0 = memory_out[34];
assign conn_sel1 = memory_out[35];
assign conn_sel2 = memory_out[36];
assign conn_sel3 = memory_out[37];

assign conn_out0 = (conn_sel0 == 0) ? I_b0 : CLBa_O;
assign conn_out1 = (conn_sel1 == 0) ? I_b1 : CLBa_O;
assign conn_out2 = (conn_sel2 == 0) ? I_b2 : CLBa_O;
assign conn_out3 = (conn_sel3 == 0) ? I_b3 : CLBa_O;

my_ROM  #(.CLBA_SRAM0(CLBA_SRAM0),
.CLBA_SRAM1(CLBA_SRAM1),
.CLBA_SRAM2(CLBA_SRAM2),
.CLBA_SRAM3(CLBA_SRAM3),
.CLBA_SRAM4(CLBA_SRAM4),
.CLBA_SRAM5(CLBA_SRAM5),
.CLBA_SRAM6(CLBA_SRAM6),
.CLBA_SRAM7(CLBA_SRAM7),
.CLBA_SRAM8(CLBA_SRAM8),
.CLBA_SRAM9(CLBA_SRAM9),
.CLBA_SRAM10(CLBA_SRAM10),
.CLBA_SRAM11(CLBA_SRAM11),
.CLBA_SRAM12(CLBA_SRAM12),
.CLBA_SRAM13(CLBA_SRAM13),
.CLBA_SRAM14(CLBA_SRAM14),
.CLBA_SRAM15(CLBA_SRAM15),
.CLBA_S(CLBA_S),
.CLBB_SRAM0(CLBB_SRAM0),
.CLBB_SRAM1(CLBB_SRAM1),
.CLBB_SRAM2(CLBB_SRAM2),
.CLBB_SRAM3(CLBB_SRAM3),
.CLBB_SRAM4(CLBB_SRAM4),
.CLBB_SRAM5(CLBB_SRAM5),
.CLBB_SRAM6(CLBB_SRAM6),
.CLBB_SRAM7(CLBB_SRAM7),
.CLBB_SRAM8(CLBB_SRAM8),
.CLBB_SRAM9(CLBB_SRAM9),
.CLBB_SRAM10(CLBB_SRAM10),
.CLBB_SRAM11(CLBB_SRAM11),
.CLBB_SRAM12(CLBB_SRAM12),
.CLBB_SRAM13(CLBB_SRAM13),
.CLBB_SRAM14(CLBB_SRAM14),
.CLBB_SRAM15(CLBB_SRAM15),
.CLBB_S(CLBB_S),
.CONN_SRAM0(CONN_SRAM0),
.CONN_SRAM1(CONN_SRAM1),
.CONN_SRAM2(CONN_SRAM2),
.CONN_SRAM3(CONN_SRAM3)
) my_rom_inst 
(
.mem_out(memory_out)
);
my_CLB CLBa(
    .sram0(memory_out[0]) , 
    .sram1(memory_out[1]) , 
    .sram2(memory_out[2]) , 
    .sram3(memory_out[3]) ,
    .sram4(memory_out[4]) ,
    .sram5(memory_out[5]) ,
    .sram6(memory_out[6]) , 
    .sram7(memory_out[7]) , 
    .sram8(memory_out[8]) , 
    .sram9(memory_out[9]) , 
    .sram10(memory_out[10]) , 
    .sram11(memory_out[11]) , 
    .sram12(memory_out[12]) , 
    .sram13(memory_out[13]) , 
    .sram14(memory_out[14]) , 
    .sram15(memory_out[15]),
    .s(memory_out[16]),
    .I0(I_a0),
    .I1(I_a1),
    .I2(I_a2),
    .I3(I_a3),
    .clk(clk),
    .rst(reset),
    .CLB_o(CLBa_O)
);
my_CLB CLBb(
    .sram0(memory_out[17]) , 
    .sram1(memory_out[18]) , 
    .sram2(memory_out[19]) , 
    .sram3(memory_out[20]) ,
    .sram4(memory_out[21]) ,
    .sram5(memory_out[22]) ,
    .sram6(memory_out[23]) , 
    .sram7(memory_out[24]) , 
    .sram8(memory_out[25]) , 
    .sram9(memory_out[26]) , 
    .sram10(memory_out[27]) , 
    .sram11(memory_out[28]) , 
    .sram12(memory_out[29]) , 
    .sram13(memory_out[30]) , 
    .sram14(memory_out[31]) , 
    .sram15(memory_out[32]),
    .s(memory_out[33]),
    .I0(conn_out0),
    .I1(conn_out1),
    .I2(conn_out2),
    .I3(conn_out3),
    .clk(clk),
    .rst(reset),
    .CLB_o(CLBb_O)
);


endmodule
