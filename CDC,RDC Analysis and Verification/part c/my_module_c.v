module my_module_c (
    input rst1 ,
    input rst2, 
    input clk,
    input ff1_D,
    output reg ff2_Q
);
wire ff1_rst , ff2_rst , ff1_clk , ff2_clk;
reg ff1_Q;
wire ff2_D;
assign ff2_D = ff1_Q;
assign ff1_rst = rst1;
assign ff2_rst = rst2;
assign ff1_clk = clk;
assign ff2_clk = clk;
always @(posedge ff1_clk , posedge ff1_rst) begin
    if (ff1_rst) begin
        ff1_Q <= 0;
    end
    else begin
        ff1_Q <= ff1_D;
    end
end
always @(posedge ff2_clk , posedge ff2_rst) begin
    if (ff2_rst) begin
        ff2_Q <= 0;
    end
    else begin
        ff2_Q <= ff2_D;
    end
end
endmodule