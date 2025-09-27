`timescale 1ns / 1ps
module test_3();
reg clk = 1'b1;
   always @(clk)
      clk <= #10 ~clk;
reg a, b, c, d , e;
reg [4:0] error = 0;
reg reset;
reg result;
wire CLBb_O;

initial begin 
    reset = 0;
    a = 0;
    b = 0;
    c = 0;
    d = 0;
    e = 0;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    @(posedge clk);
    a = 0;
    b = 0;
    c = 0;
    d = 1;
    e = 0;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    @(posedge clk);
    a = 0;
    b = 0;
    c = 1;
    d = 0;
    e = 0;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    @(posedge clk);
    a = 0;
    b = 0;
    c = 1;
    d = 1;
    e = 0;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    @(posedge clk);
    a = 0;
    b = 1;
    c = 0;
    d = 0;
    e = 0;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    @(posedge clk);
    a = 0;
    b = 1;
    c = 0;
    d = 1;
    e = 0;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    @(posedge clk);
    a = 0;
    b = 1;
    c = 1;
    d = 0;
    e = 0;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    @(posedge clk);
    a = 0;
    b = 1;
    c = 1;
    d = 1;
    e = 0;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    
    @(posedge clk);
    a = 1;
    b = 0;
    c = 0;
    d = 0;
    e = 0;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    @(posedge clk);
    a = 1;
    b = 0;
    c = 0;
    d = 1;
    e = 0;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    @(posedge clk);
    a = 1;
    b = 0;
    c = 1;
    d = 0;
    e = 0;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    @(posedge clk);
    a = 1;
    b = 0;
    c = 1;
    d = 1;
    e = 0;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    @(posedge clk);
    a = 1;
    b = 1;
    c = 0;
    d = 0;
    e = 0;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    @(posedge clk);
    a = 1;
    b = 1;
    c = 0;
    d = 1;
    e = 0;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    
    @(posedge clk);
    a = 1;
    b = 1;
    c = 1;
    d = 0;
    e = 0;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    @(posedge clk);
    a = 1;
    b = 1;
    c = 1;
    d = 1;
    e = 0;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    @(posedge clk);
    //*******************************************************************
    //*******************************************************************
    a = 0;
    b = 0;
    c = 0;
    d = 0;
    e = 1;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    @(posedge clk);
    a = 0;
    b = 0;
    c = 0;
    d = 1;
    e = 1;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    @(posedge clk);
    a = 0;
    b = 0;
    c = 1;
    d = 0;
    e = 1;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    @(posedge clk);
    a = 0;
    b = 0;
    c = 1;
    d = 1;
    e = 1;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    @(posedge clk);
    a = 0;
    b = 1;
    c = 0;
    d = 0;
    e = 1;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    @(posedge clk);
    a = 0;
    b = 1;
    c = 0;
    d = 1;
    e = 1;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    @(posedge clk);
    a = 0;
    b = 1;
    c = 1;
    d = 0;
    e = 1;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    @(posedge clk);
    a = 0;
    b = 1;
    c = 1;
    d = 1;
    e = 1;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    @(posedge clk);
    a = 1;
    b = 0;
    c = 0;
    d = 0;
    e = 1;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    @(posedge clk);
    a = 1;
    b = 0;
    c = 0;
    d = 1;
    e = 1;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    @(posedge clk);
    a = 1;
    b = 0;
    c = 1;
    d = 0;
    e = 1;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    @(posedge clk);
    a = 1;
    b = 0;
    c = 1;
    d = 1;
    e = 1;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    @(posedge clk);
    a = 1;
    b = 1;
    c = 0;
    d = 0;
    e = 1;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    @(posedge clk);
    a = 1;
    b = 1;
    c = 0;
    d = 1;
    e = 1;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    @(posedge clk);
    a = 1;
    b = 1;
    c = 1;
    d = 0;
    e = 1;
    result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    @(posedge clk);
    a = 1;
    b = 1;
    c = 1;
    d = 1;
    e = 1;
   result = ((a & b) | (!c|d))^e;
    @(posedge clk);
    #1
    $display("a = %0d , b = %0d , c = %0d , d = %0d , e = %0d\n" ,a , b , c , d , e);
    $display("result = %0d , fpga output = %0d\n" , result , CLBb_O);
    if(result == CLBb_O)
    $display("Correct\n");
    else
    error = error + 1;
    $display("error = %0d\n" , error);
    $stop();


end

my_fpga #(
//CLBa
    .CLBA_SRAM0(1'b1) ,
    .CLBA_SRAM1(1'b1) ,
    .CLBA_SRAM2 (1'b1),
    .CLBA_SRAM3 (1'b1),
    .CLBA_SRAM4 (1'b0),
    .CLBA_SRAM5 (1'b0),
    .CLBA_SRAM6 (1'b0),
    .CLBA_SRAM7 (1'b1),
    .CLBA_SRAM8(1'b1),
    .CLBA_SRAM9 (1'b1),
    .CLBA_SRAM10 (1'b1),
    .CLBA_SRAM11 (1'b1),
    .CLBA_SRAM12 (1'b1),
    .CLBA_SRAM13 (1'b1),
    .CLBA_SRAM14 (1'b1),
    .CLBA_SRAM15 (1'b1),
    .CLBA_S  (1'b0),
    //CLBb
    .CLBB_SRAM0 (1'b0),
    .CLBB_SRAM1 (1'b1),
    .CLBB_SRAM2 (1'b0),
    .CLBB_SRAM3 (1'b0),
    .CLBB_SRAM4 (1'b0),
    .CLBB_SRAM5 (1'b0),
    .CLBB_SRAM6 (1'b0),
    .CLBB_SRAM7 (1'b0),
    .CLBB_SRAM8 (1'b0),
    .CLBB_SRAM9 (1'b0),
    .CLBB_SRAM10 (1'b0),
    .CLBB_SRAM11 (1'b0),
    .CLBB_SRAM12 (1'b0),
    .CLBB_SRAM13 (1'b0),
    .CLBB_SRAM14 (1'b1),
    .CLBB_SRAM15 (1'b0),
    .CLBB_S (1'b1),
    //CONN
    .CONN_SRAM0 (1'b0),
    .CONN_SRAM1 (1'b1),
    .CONN_SRAM2 (1'b1),
    .CONN_SRAM3 (1'b1)
) func_3(
.I_a0(a),
.I_a1(b),
.I_a2(c),
.I_a3(d),
.I_b0(e),
.I_b1(1'b0),
.I_b2(1'b0),
.I_b3(1'b0),
.clk(clk),
.reset(reset),
.CLBb_O(CLBb_O)
);
endmodule
