`timescale 1ns/1ps

module lab4_tb;
    wire [11:0] out1;
    wire [11:0] out2;
    wire [11:0] ans;
    reg   [2:0] read1;
    reg   [2:0] read2;
    reg  [11:0] writeinp;
    reg   enable;
    reg   [2:0] s;
    reg clk;    
    reg [2:0] opcode;
    regmod m1(out1,out2,read1,read2,writeinp,enable,s,clk);
    ALU a1(opcode,out1,out2,ans);
always
       #1 clk = ~clk;
initial begin

$dumpfile("part4_tb.vcd");
$dumpvars (0,lab4_tb);
clk=1'b0;
//assigning 3 to reg0 and 5 to reg1
opcode=3'b000;s=3'b000;enable=1'b1;read1=3'b000;read2=3'b001;writeinp=12'b000000000011;#10;
opcode=3'b000;s=3'b001;enable=1'b1;read1=3'b000;read2=3'b001;writeinp=12'b000000000101;#10;
//reading operands
enable=1'b0;read1=3'b000;read2=3'b001;opcode=3'b001;#10;
//writing ans to reg 2 and reading r2
s=3'b010;enable=1'b1;writeinp=ans;opcode=3'b001;read1=3'b010;#40;

//reading operands
enable=1'b0;read1=3'b000;read2=3'b001;opcode=3'b010;#10;
//writing ans to reg 2 and reading r2
s=3'b011;enable=1'b1;writeinp=ans;opcode=3'b010;read1=3'b011;#40;

//reading operands
enable=1'b0;read1=3'b000;read2=3'b001;opcode=3'b011;#10;
//writing ans to reg 2 and reading r2
s=3'b100;enable=1'b1;writeinp=ans;opcode=3'b011;read1=3'b100;#40;

//assigning 3 to reg0 and 5 to reg1
opcode=3'b000;s=3'b000;enable=1'b1;read1=3'b000;read2=3'b001;writeinp=12'b000000000011;#10;
opcode=3'b000;s=3'b001;enable=1'b1;read1=3'b000;read2=3'b001;writeinp=12'b111111111101;#10;

//reading operands
enable=1'b0;read1=3'b000;read2=3'b001;opcode=3'b100;#10;
//writing ans to reg 2 and reading r2
s=3'b100;enable=1'b1;writeinp=ans;opcode=3'b100;read1=3'b100;#40;

//assigning 3 to reg0 and 5 to reg1
opcode=3'b000;s=3'b101;enable=1'b1;read1=3'b101;read2=3'b110;writeinp=12'b010011000000;#10;
opcode=3'b000;s=3'b110;enable=1'b1;read1=3'b101;read2=3'b110;writeinp=12'b010001000000;#10;

//reading operands
enable=1'b0;read1=3'b101;read2=3'b110;opcode=3'b101;#10;
//writing ans to reg 2 and reading r2
s=3'b111;enable=1'b1;writeinp=ans;opcode=3'b101;read1=3'b111;#40;

//reading operands
enable=1'b0;read1=3'b101;read2=3'b110;opcode=3'b110;#10;
//writing ans to reg 2 and reading r2
s=3'b111;enable=1'b1;writeinp=ans;opcode=3'b110;read1=3'b111;#40;

//reading operands
enable=1'b0;read1=3'b000;read2=3'b001;opcode=3'b111;#10;
//writing ans to reg 2 and reading r2
s=3'b010;enable=1'b1;writeinp=ans;opcode=3'b111;read1=3'b010;#40;















// s=3'b000;enable=1'b1;read1=3'b000;read2=3'b001;writeinp=12'b111111111111;#10;
// s=3'b011;enable=1'b1;read1=3'b000;read2=3'b011;writeinp=12'b111111111111;#10;

$display("Test completed");
#100000;$finish;

end

endmodule