`timescale 1ps/1ps
module test_c ();

reg rst1 , rst2 , clk , ff1_D;
wire ff2_Q;


initial clk = 0;
always #5000 clk = ~clk;

initial begin
    #1000
    ff1_D = 1;
    rst1 = 0;
    rst2 = 0;
    #20000
    rst1=1;
    #4020
    rst1 = 0;
    #20000
    $stop;
end

my_module_c my_module_c_ins(
.rst1(rst1),
.rst2(rst2),
.clk(clk),
.ff1_D(ff1_D),
.ff2_Q(ff2_Q)
);


endmodule