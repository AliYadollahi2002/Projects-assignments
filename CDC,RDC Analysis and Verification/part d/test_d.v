`timescale 1ps/1ps
module test_d ();

reg rst1 , rst2 , clk1 , clk2 , ff1_D;
wire ff2_Q;


initial clk1 = 0;
always #2017 clk1 = ~clk1;

initial clk2 = 0;
always #6080 clk2 = ~clk2;

initial begin
    ff1_D = 1;
    rst1 = 0;
    rst2 = 0;
    #18095
    ff1_D = 0;
    #24405
    ff1_D = 1;
    #49840
    rst1=1;
    #2465
    rst1 = 0;
    #20000
    $stop;
end

my_module_d my_module_d_ins(
.rst1(rst1),
.rst2(rst2),
.clk1(clk1),
.clk2(clk2),
.ff1_D(ff1_D),
.ff2_Q(ff2_Q)
);


endmodule