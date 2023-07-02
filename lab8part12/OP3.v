`timescale 1ns/1ps
module opcode3(
     input wire[11:0] op1,
    input wire[11:0] op2,
    output wire[11:0] out
);
wire waste;
wire r1;
buf(r1,0);
final2 f1(out[7:0],waste,op2[7:0],op1[7:0],r1);
buf b1(out[11],0);
buf b2(out[10],0);
buf b3(out[9],0);
buf b4(out[8],0);

endmodule