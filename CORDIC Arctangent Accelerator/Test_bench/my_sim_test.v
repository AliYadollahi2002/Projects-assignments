`timescale 1ns / 1ps
module my_sim_test ();


    reg signed [8:0] x_in, y_in, z_in;
  wire signed [8:0] x_out, y_out, z_out;
  reg clk= 1'b0;
  always #(10) clk = ~clk;


  initial begin
      #10
      x_in = 9'b01_0000000;
      y_in = 9'b01_0000000;
      #200


      
  end



  CORDIC_ip #(
      .ITR(9),
      .L(9),
      .W(7)
  )
  CORDIC_ip_instt (
      .clk(clk),
      .x_in(x_in),
      .y_in(y_in),
      .z_in(z_in),
      .z_out(z_out)
  );
endmodule