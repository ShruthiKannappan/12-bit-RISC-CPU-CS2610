`timescale 1ns/1ps
module opcode6(
     input wire[11:0] op1,
    input wire[11:0] op2,
    output wire[11:0] out
);
wire waste;
main2 m2(out,waste,op1,op2);

endmodule