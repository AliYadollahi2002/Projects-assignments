`timescale 1ns / 1ps
module my_sim();
  reg clk = 1'b0;
  always #(10) clk = ~clk;

  reg signed [8:0] x_in, y_in, z_in;
  wire signed [8:0] x_out, y_out, z_out;

  integer file_x0, file_y0, file_out, code;
  integer i = 0;
  reg signed [8:0] x_mem [0:8];
  reg signed [8:0] y_mem [0:8];

  initial begin
    // Initialize input
    z_in = 0;

    // Open the files
    file_x0 = $fopen("x0_values.txt", "r");
    file_y0 = $fopen("y0_values.txt", "r");
    file_out = $fopen("cordic_output.txt", "w");

    // Check if files are opened successfully
    if (file_x0 == 0 || file_y0 == 0) begin
      $display("Error: Could not open the input files.");
      $stop;
    end

    // Read values from files
    while (!$feof(file_x0) && !$feof(file_y0) && i < 1000) begin
      //code = $fscanf(file_x0, "%b\n", x_in);
      code = $fscanf(file_y0, "%b\n", y_in);
      #700; 
      $fwrite(file_out, "%b\n", z_out); 
      i = i + 1;
    end

    // Close the input files
    $fclose(file_x0);
    $fclose(file_y0);
    
    // Apply the read values to the DUT and write the outputs to file
    /*
    for (i = 0; i < 100; i = i + 1) begin
      x_in = x_mem[i];
      y_in = y_mem[i];
      #700; 
      $fwrite(file_out, "%d\n", z_out); 
    end
    */

    // Close the output file
    $fclose(file_out);
    $stop;
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
