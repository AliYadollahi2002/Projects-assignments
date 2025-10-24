/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Fri Feb  7 18:32:12 2025
/////////////////////////////////////////////////////////////


module my_module_b ( rst, clk, ff1_D, ff2_Q );
  input rst, clk, ff1_D;
  output ff2_Q;
  wire   ff2_D, n1;

  DFCNQD1 ff2_Q_reg ( .D(ff2_D), .CP(clk), .CDN(n1), .Q(ff2_Q) );
  INVD0 U3 ( .I(rst), .ZN(n1) );
  DFCNQD1 ff1_Q_reg ( .D(ff1_D), .CP(clk), .CDN(n1), .Q(ff2_D) );
endmodule

