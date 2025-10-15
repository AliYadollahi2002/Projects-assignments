`timescale 1ns / 1ps
module test_2();
reg clk = 1'b1;
   always @(clk)
      clk <= #10 ~clk;
reg a, b, c, d;
reg result;
reg reset;
reg [4:0] error = 0;
wire CLBb_O;
initial begin 
    reset = 0;
    a = 0;
    b = 0;
    c = 0;
    d = 0;
    result = (a & b) | (!c|d);
    #5
    $display("a = %0d , b = %0d , c = %0d , d = %0d\n" ,a , b , c , d);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result != CLBb_O)
    error = error + 1;
    #5
    a = 0;
    b = 0;
    c = 0;
    d = 1;
    result = (a & b) | (!c|d);
    #5
    $display("a = %0d , b = %0d , c = %0d , d = %0d\n" ,a , b , c , d);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result != CLBb_O)
    error = error + 1;
    #5
    a = 0;
    b = 0;
    c = 1;
    d = 0;
    result = (a & b) | (!c|d);
    #5
    $display("a = %0d , b = %0d , c = %0d , d = %0d\n" ,a , b , c , d);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result != CLBb_O)
    error = error + 1;
    #5
    a = 0;
    b = 0;
    c = 1;
    d = 1;
    result = (a & b) | (!c|d);
    #5
    $display("a = %0d , b = %0d , c = %0d , d = %0d\n" ,a , b , c , d);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result != CLBb_O)
    error = error + 1;
    #5
    a = 0;
    b = 1;
    c = 0;
    d = 0;
    result = (a & b) | (!c|d);
    #5
    $display("a = %0d , b = %0d , c = %0d , d = %0d\n" ,a , b , c , d);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result != CLBb_O)
    error = error + 1;
    #5
    a = 0;
    b = 1;
    c = 0;
    d = 1;
    result = (a & b) | (!c|d);
    #5
    $display("a = %0d , b = %0d , c = %0d , d = %0d\n" ,a , b , c , d);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result != CLBb_O)
    error = error + 1;
    #5
    a = 0;
    b = 1;
    c = 1;
    d = 0;
    result = (a & b) | (!c|d);
    #5
    $display("a = %0d , b = %0d , c = %0d , d = %0d\n" ,a , b , c , d);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result != CLBb_O)
    error = error + 1;
    #5
    a = 0;
    b = 1;
    c = 1;
    d = 1;
    result = (a & b) | (!c|d);
    #5
    $display("a = %0d , b = %0d , c = %0d , d = %0d\n" ,a , b , c , d);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result != CLBb_O)
    error = error + 1;
    #5
    a = 1;
    b = 0;
    c = 0;
    d = 0;
    result = (a & b) | (!c|d);
    #5
    $display("a = %0d , b = %0d , c = %0d , d = %0d\n" ,a , b , c , d);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result != CLBb_O)
    error = error + 1;
    #5
    a = 1;
    b = 0;
    c = 0;
    d = 1;
    result = (a & b) | (!c|d);
    #5
    $display("a = %0d , b = %0d , c = %0d , d = %0d\n" ,a , b , c , d);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result != CLBb_O)
    error = error + 1;
    #5
    a = 1;
    b = 0;
    c = 1;
    d = 0;
    result = (a & b) | (!c|d);
    #5
    $display("a = %0d , b = %0d , c = %0d , d = %0d\n" ,a , b , c , d);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result != CLBb_O)
    error = error + 1;
    #5
    a = 1;
    b = 0;
    c = 1;
    d = 1;
    result = (a & b) | (!c|d);
    #5
    $display("a = %0d , b = %0d , c = %0d , d = %0d\n" ,a , b , c , d);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result != CLBb_O)
    error = error + 1;
    #5
    a = 1;
    b = 1;
    c = 0;
    d = 0;
    result = (a & b) | (!c|d);
    #5
    $display("a = %0d , b = %0d , c = %0d , d = %0d\n" ,a , b , c , d);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result != CLBb_O)
    error = error + 1;
    #5
    a = 1;
    b = 1;
    c = 0;
    d = 1;
    result = (a & b) | (!c|d);
    #5
    $display("a = %0d , b = %0d , c = %0d , d = %0d\n" ,a , b , c , d);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result != CLBb_O)
    error = error + 1;
    #5
    a = 1;
    b = 1;
    c = 1;
    d = 0;
    result = (a & b) | (!c|d);
    #5
    $display("a = %0d , b = %0d , c = %0d , d = %0d\n" ,a , b , c , d);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result != CLBb_O)
    error = error + 1;
    #5
    a = 1;
    b = 1;
    c = 1;
    d = 1;
    result = (a & b) | (!c|d);
    #5
    $display("a = %0d , b = %0d , c = %0d , d = %0d\n" ,a , b , c , d);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result != CLBb_O)
    error = error + 1;
    #5
    a = 0;
    b = 0;
    c = 0;
    d = 0;
    result = (a&b)|(!c|d);
    $display("a = %0d , b = %0d , c = %0d , d = %0d\n" ,a , b , c , d);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result != CLBb_O)
    error = error + 1;
    
    if(error == 0)
    $display("No Error\n");
    

end

my_fpga #(
//CLBa
    .CLBA_SRAM0(1'b0) ,
    .CLBA_SRAM1(1'b0) ,
    .CLBA_SRAM2 (1'b0),
    .CLBA_SRAM3 (1'b0),
    .CLBA_SRAM4 (1'b0),
    .CLBA_SRAM5 (1'b0),
    .CLBA_SRAM6 (1'b0),
    .CLBA_SRAM7 (1'b0),
    .CLBA_SRAM8(1'b0),
    .CLBA_SRAM9 (1'b0),
    .CLBA_SRAM10 (1'b0),
    .CLBA_SRAM11 (1'b0),
    .CLBA_SRAM12 (1'b0),
    .CLBA_SRAM13 (1'b0),
    .CLBA_SRAM14 (1'b0),
    .CLBA_SRAM15 (1'b0),
    .CLBA_S  (1'b0),
    //CLBb
    .CLBB_SRAM0 (1'b1),
    .CLBB_SRAM1 (1'b1),
    .CLBB_SRAM2 (1'b1),
    .CLBB_SRAM3 (1'b1),
    .CLBB_SRAM4 (1'b0),
    .CLBB_SRAM5 (1'b0),
    .CLBB_SRAM6 (1'b0),
    .CLBB_SRAM7 (1'b1),
    .CLBB_SRAM8 (1'b1),
    .CLBB_SRAM9 (1'b1),
    .CLBB_SRAM10 (1'b1),
    .CLBB_SRAM11 (1'b1),
    .CLBB_SRAM12 (1'b1),
    .CLBB_SRAM13 (1'b1),
    .CLBB_SRAM14 (1'b1),
    .CLBB_SRAM15 (1'b1),
    .CLBB_S (1'b0),
    //CONN
    .CONN_SRAM0 (1'b0),
    .CONN_SRAM1 (1'b0),
    .CONN_SRAM2 (1'b0),
    .CONN_SRAM3 (1'b0)
) func_2(
.I_a0(1'b0),
.I_a1(1'b0),
.I_a2(1'b0),
.I_a3(1'b0),
.I_b0(a),
.I_b1(b),
.I_b2(c),
.I_b3(d),
.clk(clk),
.reset(reset),
.CLBb_O(CLBb_O)
);
endmodule
