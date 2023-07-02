`timescale 1ns/1ps
module opcode2(
      input wire[11:0] op1,
    input wire[11:0] op2,
    output wire[11:0] out
);
wire[7:0] nop2;
not n1(nop2[0],op2[0]);
not n2(nop2[1],op2[1]);
not n3(nop2[2],op2[2]);
not n4(nop2[3],op2[3]);
not n5(nop2[4],op2[4]);
not n6(nop2[5],op2[5]);
not n7(nop2[6],op2[6]);
not n8(nop2[7],op2[7]);
wire[7:0] b;
adder8 add0(b,nop2,8'b00000001);
adder8 add1(out[7:0],op1[7:0],b);
buf b1(out[11],0);
buf b2(out[10],0);
buf b3(out[9],0);
buf b4(out[8],0);
endmodule