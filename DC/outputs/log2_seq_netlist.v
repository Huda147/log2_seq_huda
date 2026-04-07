/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : W-2024.09
// Date      : Sun Apr  5 15:39:35 2026
/////////////////////////////////////////////////////////////


module log2_seq ( clk, X, Y );
  input [7:0] X;
  output [2:0] Y;
  input clk;
  wire   n8, n9, n10, n11, n12, n14, n15;
  wire   [2:0] Y_comb;

  DFFX1_RVT \Y_reg[1]  ( .D(Y_comb[1]), .CLK(clk), .Q(Y[1]) );
  DFFX1_RVT \Y_reg[0]  ( .D(Y_comb[0]), .CLK(clk), .Q(Y[0]) );
  DFFSSRX1_RVT \Y_reg[2]  ( .D(n15), .SETB(n14), .RSTB(1'b1), .CLK(clk), .Q(
        Y[2]) );
  INVX0_RVT U13 ( .A(X[2]), .Y(n10) );
  INVX0_RVT U14 ( .A(X[4]), .Y(n9) );
  OR2X1_RVT U16 ( .A1(X[5]), .A2(X[4]), .Y(n8) );
  INVX1_RVT U17 ( .A(n8), .Y(n14) );
  INVX1_RVT U18 ( .A(X[6]), .Y(n12) );
  OA221X1_RVT U19 ( .A1(X[3]), .A2(X[1]), .A3(X[3]), .A4(n10), .A5(n9), .Y(n11) );
  AO221X1_RVT U20 ( .A1(n12), .A2(X[5]), .A3(n12), .A4(n11), .A5(X[7]), .Y(
        Y_comb[0]) );
  OR2X1_RVT U21 ( .A1(X[7]), .A2(X[6]), .Y(n15) );
  AO221X1_RVT U22 ( .A1(n14), .A2(X[3]), .A3(n14), .A4(X[2]), .A5(n15), .Y(
        Y_comb[1]) );
endmodule

