`timescale 1ps/1ps
module test_b ();

reg rst , clk , ff1_D;
wire ff2_Q;


initial clk = 0;
always #5000 clk = ~clk;

initial begin
    #1000
    ff1_D = 1;
    rst = 0;
    #20000
    rst=1;
    #4020
    rst = 0;
    #20000
    $stop;
end

my_module_b my_module_b_ins(
.rst(rst),
.clk(clk),
.ff1_D(ff1_D),
.ff2_Q(ff2_Q)
);


endmodule