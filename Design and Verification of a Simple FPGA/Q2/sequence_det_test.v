module sequence_det_test ();
reg clk = 1'b0;
   always @(clk)
      clk <= #10 ~clk;
reg valid = 0;
reg data_in = 0;
wire output_data;

integer file_input , file_output , i;

initial begin
    file_input = $fopen("input_seq.txt", "w");
    file_output = $fopen("output_seq.txt", "w");
    for (i = 0;i < 10000 ;i = i+1 ) begin
        data_in = $random() %2;
        valid = 1;
        $fwrite(file_input, "%b\n",data_in);
        $fwrite(file_output, "%b\n",output_data);
        @(posedge clk);
        //#2
    end
    $fclose(file_input);
    $fclose(file_output);
    $stop();
end

sequence_det sequence_det_inst
(
    .valid(valid),
    .dat_in(data_in),
    .clk(clk),
    .seq_find(output_data)
);
    
endmodule