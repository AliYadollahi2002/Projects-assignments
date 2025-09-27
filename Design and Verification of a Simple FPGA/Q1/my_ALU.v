module my_ALU (
    input [31:0] A,
    input [31:0] B,
    input [2:0] OP,
    output reg [31:0] X,
    output z
);

assign z = !(|X);
reg [32:0] temp;
always @(A , B , OP) begin
    case (OP)
        //ADD
        3'b000:begin
            temp = A + B;
            if(temp > 32'hffffffff)
            X = 32'hffffffff;
            else
            X = A + B;

        end 
        //SUB
        3'b001:begin
            if(A < B)
            X = 32'b0;
            else
            X = A - B;
        end
        //NOR
        3'b010:begin
            X = ~(A | B); 
        end
        //OR
        3'b011:begin
            X = A | B;
        end
        //NAND
        3'b100:begin
            X = ~(A & B); 
        end
        //AND
        3'b101:begin
            X = A & B;
        end
        //XNOR
        3'b110:begin
            X = ~(A ^ B);
        end
        default: begin
            X = A;
        end
    endcase
end

    
endmodule