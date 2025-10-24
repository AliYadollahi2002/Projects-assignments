/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Fri Feb  7 21:35:32 2025
/////////////////////////////////////////////////////////////


module my_module_c ( rst1, rst2, clk, ff1_D, ff2_Q );
  input rst1, rst2, clk, ff1_D;
  output ff2_Q;
  wire   ff2_D, n1, n2;

  DFCNQD1 ff1_Q_reg ( .D(ff1_D), .CP(clk), .CDN(n2), .Q(ff2_D) );
  DFCNQD1 ff2_Q_reg ( .D(ff2_D), .CP(clk), .CDN(n1), .Q(ff2_Q) );
  INVD0 U4 ( .I(rst1), .ZN(n2) );
  INVD0 U3 ( .I(rst2), .ZN(n1) );
endmodule

