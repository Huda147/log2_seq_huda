`timescale 1ns / 1ps

module log2_seq (
    input clk,
    input [7:0] X,
    output reg [2:0] Y
);

reg [7:0] X_comb;
reg [2:0] Y_comb;

always @(posedge clk) begin
    X_comb <= X;
end

always @(*) begin
    if (X_comb[7])       Y_comb = 3'd7;
    else if (X_comb[6])  Y_comb = 3'd6;
    else if (X_comb[5])  Y_comb = 3'd5;
    else if (X_comb[4])  Y_comb = 3'd4;
    else if (X_comb[3])  Y_comb = 3'd3;
    else if (X_comb[2])  Y_comb = 3'd2;
    else if (X_comb[1])  Y_comb = 3'd1;
    else if (X_comb[0])  Y_comb = 3'd0;
    else                Y_comb = 3'd0; // X = 0 case
end

always @(posedge clk) begin
    Y <= Y_comb;
end

endmodule
