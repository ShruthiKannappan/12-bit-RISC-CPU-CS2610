`timescale 1ns/1ps
module ALU (
    input wire[2:0] opcode,
    input wire[11:0] op1,
    input wire[11:0] op2,
    output wire[11:0] out
);
wire [7:0][11:0] i;
opcode0 p0(op1,op2,i[0]);
opcode1 p1(op1,op2,i[1]);
opcode2 p2(op1,op2,i[2]);
opcode3 p3(op1,op2,i[3]);
opcode4 p4(op1,op2,i[4]);
opcode5 p5(op1,op2,i[5]);
opcode6 p6(op1,op2,i[6]);
opcode7 p7(op1,op2,i[7]);
MUX8to1 m1(out,i,opcode);
endmodule