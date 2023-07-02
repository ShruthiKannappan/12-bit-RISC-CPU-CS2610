`timescale 1ns/1ps
module opcode5(
     input wire[11:0] op1,
    input wire[11:0] op2,
    output wire[11:0] out
);
main  m1(out,op1,op2);

endmodule