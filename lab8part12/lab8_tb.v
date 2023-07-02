`timescale 1ns/1ps

module lab8_tb;

    wire [11:0] out;
    reg [2:0] opcode;
     reg [11:0] op1;
     reg [11:0] op2;
    //  wire [3:0] diffe;
ALU m1(opcode,op1,op2,out);

initial begin

$dumpfile("lab8_tb.vcd");
$dumpvars (0,lab8_tb);


opcode=3'b000;op1=12'b001110000001;op2=12'b001101000010;#10;
opcode=3'b001;op1=12'b000000000011;op2=12'b000000000101;#10;
opcode=3'b010;op1=12'b000000000011;op2=12'b000000000101;#10;
opcode=3'b011;op1=12'b000000000011;op2=12'b000000000101;#10;
opcode=3'b100;op1=12'b000000000011;op2=12'b000000000101;#10;
opcode=3'b101;op1=12'b010011000000;op2=12'b010001000000;#10;
opcode=3'b110;op1=12'b110001000000;op2=12'b110011000000;#10;
opcode=3'b111;op1=12'b000000000011;op2=12'b000000000101;#10;
$display("Test completed");
#1000;$finish;

end

endmodule