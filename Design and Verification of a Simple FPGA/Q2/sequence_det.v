module sequence_det (
    input valid,
    input dat_in,
    input clk,
    output reg seq_find
);
localparam  A = 3'b000 , B = 3'b001 , C = 3'b010 , D = 3'b011 , E = 3'b100;
reg [3:0] CS = A;
reg [3:0] NS;

always @(CS , dat_in) begin
    if (valid) begin
        case (CS)
         A:begin
             if (dat_in==0) begin
                NS = A; 
                seq_find = 0;
            end
            else begin
                NS = B; 
                seq_find = 0;
            end
         end

            B:begin
            if (dat_in==0) begin
                NS = C; 
                seq_find = 0;
            end
            else begin
                NS = B; 
                seq_find = 0;
            end 
            end

            C:begin
            if (dat_in==0) begin
                NS = A; 
                seq_find = 0;
            end
            else begin
                NS = D; 
                seq_find = 0;
            end  
            end
            
            D:begin
            if (dat_in==0) begin
                NS = C; 
                seq_find = 0;
            end
            else begin
                NS = E; 
                seq_find = 0;
            end
            end
            
            E:begin
            if (dat_in==0) begin
                NS = C; 
                seq_find = 1;
            end
            else begin
                NS = B; 
                seq_find = 0;
            end
            end
            default:begin
                NS = A;
            end
    endcase
    end
    else begin
        NS = CS; 
    end
    
end

always @(posedge clk) begin
    CS <= NS;
end


    
endmodule