`timescale 1ns/1ps
module BLS5(
    output wire [4:0] o,
    output wire b,
    input wire [4:0] A,
    input wire [4:0] B,
    input wire bin
);

 wire [4:0] bb;
buf u1(bb[0],0);
BLS1 b1(o[0],bb[1],A[0],B[0],bin);
BLS1 b2(o[1],bb[2],A[1],B[1],bb[1]);
BLS1 b3(o[2],bb[3],A[2],B[2],bb[2]);
BLS1 b4(o[3],bb[4],A[3],B[3],bb[3]);
BLS1 b5(o[4],b,A[4],B[4],bb[4]);
endmodule