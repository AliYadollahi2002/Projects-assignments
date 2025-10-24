module my_module_f (
    input rst1 , 
    input clk1,
    input clk2,
    input ff1_D,
    output reg ff2_Q
);
reg rst_ff1 , rst_ff2 , rst_ff3;
wire ff1_rst , ff2_rst , ff1_clk , ff2_clk;
reg ff1_Q;
wire ff2_D;
assign ff2_D = ff1_Q;
assign ff1_rst = rst1;
assign ff2_rst = rst1;
assign ff1_clk = clk1;
assign ff2_clk = clk2;
always @(posedge ff1_clk , posedge ff1_rst) begin
    if (ff1_rst) begin
        ff1_Q <= 0;
    end
    else begin
        ff1_Q <= ff1_D;
    end
end
always @(posedge ff2_clk , posedge rst_ff3) begin
    if (rst_ff3) begin
        ff2_Q <= 0;
    end
    else begin
        ff2_Q <= ff2_D;
    end
end
always @(posedge ff2_clk , posedge ff2_rst) begin
    if (ff2_rst) begin
    rst_ff1 <= 1;
    rst_ff2 <= rst_ff1;
    rst_ff3 <= rst_ff2;
    end
    else begin
    rst_ff1 <= 0;
    rst_ff2 <= rst_ff1;
    rst_ff3 <= rst_ff2;
    end
    
end
endmodule