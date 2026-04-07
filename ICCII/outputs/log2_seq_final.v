// IC Compiler II Version W-2024.09 Verilog Writer
// Generated on 4/5/2026 at 16:19:6
// Library Name: FULL_ADDER_LIB
// Block Name: full_adder
// User Label: 
// Write Command: write_verilog -exclude { pg_objects } ./outputs/full_adder_final.v
module log2_seq ( clk , X , Y ) ;
input  clk ;
input  [7:0] X ;
output [2:0] Y ;

wire tmp_net0 ;
wire n9 ;
wire n10 ;
wire n11 ;
wire n14 ;
wire n15 ;
wire gre_a_INV_108_0 ;
wire [1:0] Y_comb ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;

DFFX1_RVT \Y_reg[1] ( .D ( Y_comb[1] ) , .CLK ( clk ) , .Q ( Y[1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) ) ;
DFFX1_RVT \Y_reg[0] ( .D ( Y_comb[0] ) , .CLK ( clk ) , .Q ( Y[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) ) ;
DFFSSRX1_RVT \Y_reg[2] ( .D ( n15 ) , .SETB ( n14 ) , .RSTB ( 1'b1 ) , 
    .CLK ( clk ) , .Q ( Y[2] ) , .QN ( SYNOPSYS_UNCONNECTED_3 ) ) ;
INVX0_RVT U13 ( .A ( X[2] ) , .Y ( n10 ) ) ;
INVX0_RVT U14 ( .A ( X[4] ) , .Y ( n9 ) ) ;
NAND2X0_RVT ctmTdsLR_1_349 ( .A1 ( tmp_net0 ) , .A2 ( gre_a_INV_108_0 ) , 
    .Y ( n15 ) ) ;
INVX0_RVT ctmTdsLR_2_350 ( .A ( X[7] ) , .Y ( tmp_net0 ) ) ;
OA221X1_RVT U19 ( .A1 ( X[3] ) , .A2 ( X[1] ) , .A3 ( X[3] ) , .A4 ( n10 ) , 
    .A5 ( n9 ) , .Y ( n11 ) ) ;
AO221X1_RVT U20 ( .A1 ( gre_a_INV_108_0 ) , .A2 ( X[5] ) , 
    .A3 ( gre_a_INV_108_0 ) , .A4 ( n11 ) , .A5 ( X[7] ) , .Y ( Y_comb[0] ) ) ;
INVX0_RVT gre_a_INV_108_inst_352 ( .A ( X[6] ) , .Y ( gre_a_INV_108_0 ) ) ;
AO221X1_RVT U22 ( .A1 ( n14 ) , .A2 ( X[3] ) , .A3 ( n14 ) , .A4 ( X[2] ) , 
    .A5 ( n15 ) , .Y ( Y_comb[1] ) ) ;
NOR2X0_RVT ctmTdsLR_1_0 ( .A1 ( X[5] ) , .A2 ( X[4] ) , .Y ( n14 ) ) ;
endmodule


