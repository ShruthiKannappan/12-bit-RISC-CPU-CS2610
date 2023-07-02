`timescale 1ns/1ps
module opcode1(
      input wire[11:0] op1,
    input wire[11:0] op2,
    output wire[11:0] out
);
adder8 add1(out[7:0],op1[7:0],op2[7:0]);
buf b1(out[11],0);
buf b2(out[10],0);
buf b3(out[9],0);
buf b4(out[8],0);
endmodule