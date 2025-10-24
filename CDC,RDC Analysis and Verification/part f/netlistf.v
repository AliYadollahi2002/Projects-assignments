/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : L-2016.03-SP1
// Date      : Sat Feb  8 23:51:04 2025
/////////////////////////////////////////////////////////////


module my_module_f ( rst1, clk1, clk2, ff1_D, ff2_Q );
  input rst1, clk1, clk2, ff1_D;
  output ff2_Q;
  wire   N0, N1, ff2_D, rst_ff3, rst_ff1, rst_ff2, N2, N3;

  \**SEQGEN**  ff1_Q_reg ( .clear(rst1), .preset(1'b0), .next_state(ff1_D), 
        .clocked_on(clk1), .data_in(1'b0), .enable(1'b0), .Q(ff2_D), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  ff2_Q_reg ( .clear(rst_ff3), .preset(1'b0), .next_state(ff2_D), 
        .clocked_on(clk2), .data_in(1'b0), .enable(1'b0), .Q(ff2_Q), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  rst_ff3_reg ( .clear(1'b0), .preset(1'b0), .next_state(rst_ff2), 
        .clocked_on(clk2), .data_in(rst_ff2), .enable(N3), .Q(rst_ff3), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  rst_ff2_reg ( .clear(1'b0), .preset(1'b0), .next_state(rst_ff1), 
        .clocked_on(clk2), .data_in(rst_ff1), .enable(N3), .Q(rst_ff2), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  rst_ff1_reg ( .clear(1'b0), .preset(rst1), .next_state(1'b0), 
        .clocked_on(clk2), .data_in(1'b0), .enable(1'b0), .Q(rst_ff1), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  SELECT_OP C30 ( .DATA1(1'b1), .DATA2(1'b0), .CONTROL1(N0), .CONTROL2(N1), 
        .Z(N3) );
  GTECH_BUF B_0 ( .A(rst1), .Z(N0) );
  GTECH_BUF B_1 ( .A(N2), .Z(N1) );
  GTECH_NOT I_0 ( .A(rst1), .Z(N2) );
endmodule

