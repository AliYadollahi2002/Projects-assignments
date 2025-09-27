`timescale 1ns / 1ps
module my_ROM
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
    output [37:0] mem_out
);
wire [37:0] mem;
assign mem_out = mem;

    assign mem[0] = CLBA_SRAM0;
    assign mem[1] = CLBA_SRAM1;
    assign mem[2] = CLBA_SRAM2;
    assign mem[3] = CLBA_SRAM3;
    assign mem[4] = CLBA_SRAM4;
    assign mem[5] = CLBA_SRAM5;
    assign mem[6] = CLBA_SRAM6;
    assign mem[7] = CLBA_SRAM7;
    assign mem[8] = CLBA_SRAM8;
    assign mem[9] = CLBA_SRAM9;
    assign mem[10] = CLBA_SRAM10;
    assign mem[11] = CLBA_SRAM11;
    assign mem[12] = CLBA_SRAM12;
    assign mem[13] = CLBA_SRAM13;
    assign mem[14] = CLBA_SRAM14;
    assign mem[15] = CLBA_SRAM15;
    assign mem[16] = CLBA_S;
    //************
    assign mem[17] = CLBB_SRAM0;
    assign mem[18] = CLBB_SRAM1;
    assign mem[19] = CLBB_SRAM2;
    assign mem[20] = CLBB_SRAM3;
    assign mem[21] = CLBB_SRAM4;
    assign mem[22] = CLBB_SRAM5;
    assign mem[23] = CLBB_SRAM6;
    assign mem[24] = CLBB_SRAM7;
    assign mem[25] = CLBB_SRAM8;
    assign mem[26] = CLBB_SRAM9;
    assign mem[27] = CLBB_SRAM10;
    assign mem[28] = CLBB_SRAM11;
    assign mem[29] = CLBB_SRAM12;
    assign mem[30] = CLBB_SRAM13;
    assign mem[31] = CLBB_SRAM14;
    assign mem[32] = CLBB_SRAM15;
    assign mem[33] = CLBB_S;
    assign mem[34] = CONN_SRAM0;
    assign mem[35] = CONN_SRAM1;
    assign mem[36] = CONN_SRAM2;
    assign mem[37] = CONN_SRAM3;




endmodule
