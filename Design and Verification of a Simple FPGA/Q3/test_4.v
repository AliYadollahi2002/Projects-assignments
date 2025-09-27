`timescale 1ns / 1ps
module test_4();
reg clk = 1'b1;
   always @(clk)
      clk <= #10 ~clk;
reg [2:0] a, b;
reg z;
reg reset;
wire CLBb_O;
initial begin
    reset = 0;
    for (integer i = 0;i < 100 ;i = i + 1 ) begin
        a = $random() % 3;
        b = $random() % 3;
        z = (b > a);
        #2
        if(z!= CLBb_O)
        $display("Error! , a = %0d , b = %0d/\n" , a, b);
    end
    $display("No Error\n");
    #5
    $stop();
end


my_fpga #(
//CLBa
    .CLBA_SRAM0(1'b0) ,
    .CLBA_SRAM1(1'b0) ,
    .CLBA_SRAM2 (1'b0),
    .CLBA_SRAM3 (1'b0),
    .CLBA_SRAM4 (1'b1),
    .CLBA_SRAM5 (1'b0),
    .CLBA_SRAM6 (1'b1),
    .CLBA_SRAM7 (1'b0),
    .CLBA_SRAM8(1'b1),
    .CLBA_SRAM9 (1'b0),
    .CLBA_SRAM10 (1'b0),
    .CLBA_SRAM11 (1'b0),
    .CLBA_SRAM12 (1'b1),
    .CLBA_SRAM13 (1'b1),
    .CLBA_SRAM14 (1'b1),
    .CLBA_SRAM15 (1'b0),
    .CLBA_S  (1'b0),
    //CLBb
    .CLBB_SRAM0 (1'b0),
    .CLBB_SRAM1 (1'b0),
    .CLBB_SRAM2 (1'b1),
    .CLBB_SRAM3 (1'b0),
    .CLBB_SRAM4 (1'b0),
    .CLBB_SRAM5 (1'b0),
    .CLBB_SRAM6 (1'b0),
    .CLBB_SRAM7 (1'b0),
    .CLBB_SRAM8 (1'b0),
    .CLBB_SRAM9 (1'b0),
    .CLBB_SRAM10 (1'b0),
    .CLBB_SRAM11 (1'b0),
    .CLBB_SRAM12 (1'b1),
    .CLBB_SRAM13 (1'b0),
    .CLBB_SRAM14 (1'b1),
    .CLBB_SRAM15 (1'b1),
    .CLBB_S (1'b0),
    //CONN
    .CONN_SRAM0 (1'b0),
    .CONN_SRAM1 (1'b0),
    .CONN_SRAM2 (1'b1),
    .CONN_SRAM3 (1'b1)
) func_4(
.I_a0(a[1]),
.I_a1(a[0]),
.I_a2(b[1]),
.I_a3(b[0]),
.I_b0(a[2]),
.I_b1(b[2]),
.I_b2(1'b0),
.I_b3(1'b0),
.clk(clk),
.reset(reset),
.CLBb_O(CLBb_O)
);
endmodule
