`timescale 1ns/1ps
module opcode7(
   
    input wire [11:0] a,
    input wire [11:0] b,
     output wire [11:0] o
);

xor p1(o[0], a[0], b[0]);
xor p2(o[1], a[1], b[1]);
xor x2(o[2], a[2], b[2]);
xor x3(o[3], a[3], b[3]);
xor x4(o[4], a[4], b[4]);
xor x5(o[5], a[5], b[5]);
xor x6(o[6], a[6], b[6]);
xor x7(o[7], a[7], b[7]);
xor x8(o[8], a[8], b[8]);
xor x9(o[9], a[9], b[9]);
xor p4(o[10], a[10], b[10]);
xor p5(o[11], a[11], b[11]);

endmodule