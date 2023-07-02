`timescale 1ns/1ps
module opcode0(
     input wire[11:0] op1,
    input wire[11:0] op2,
    output wire[11:0] out
);
buf b1(out[0],0);
buf b2(out[1],0);
buf b3(out[2],0);
buf b4(out[3],0);
buf b5(out[4],0);
buf b6(out[5],0);
buf b7(out[6],0);
buf b8(out[7],0);
buf b9(out[8],0);
buf b10(out[9],0);
buf b11(out[10],0);
buf b12(out[11],0);
endmodule
