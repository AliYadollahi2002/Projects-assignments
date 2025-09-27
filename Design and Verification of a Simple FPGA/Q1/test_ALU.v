module test_ALU ();
    reg [31:0] A, B;
    reg [2:0] OP;
    wire [31:0] X;
    wire z;

    integer input_file, output_file, matched, total;
    reg [31:0] expected_X;
    reg expected_z;

    // Instantiate the ALU module
    my_ALU uut (
        .A(A),
        .B(B),
        .OP(OP),
        .X(X),
        .z(z)
    );

    initial begin
        input_file = $fopen("inputs.txt", "r");
        output_file = $fopen("outputs.txt", "r");
        matched = 0;
        total = 0;

        while (!$feof(input_file) && !$feof(output_file)) begin
            // Read inputs and expected outputs from files
            $fscanf(input_file, "%d %d %d\n", A, B, OP);
            $fscanf(output_file, "%d %d\n", expected_X, expected_z);

            #1;  // Wait for one time unit for the ALU to process the inputs

            // Compare the ALU outputs with the expected outputs
            if (X == expected_X && z == expected_z) begin
                matched = matched + 1;
            end
            else
            $display("A = %d , B = %d , OP = %d , X = %d , z = %d , expected_X = %d , expected_z = %d\n" ,A , B , OP , X , z , expected_X , expected_z);
            total = total + 1;
        end

        // Calculate and report the accuracy
        $display("Total tests: %d, Matches: %d", total, matched);
        $display("Accuracy: %0.2f%%", ((matched * 100) / total));

        // Close the files
        $fclose(input_file);
        $fclose(output_file);
        $stop;
    end
endmodule
