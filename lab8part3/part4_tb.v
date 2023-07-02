`timescale 1ns/1ps

module lab4_tb;
    wire [11:0] out1;
    wire [11:0] out2;
    reg   [2:0] read1;
    reg   [2:0] read2;
    reg  [11:0] writeinp;
    reg   enable;
    reg   [2:0] s;
    reg clk;    
    
    regmod m1(out1,out2,read1,read2,writeinp,enable,s,clk);
always
       #1 clk = ~clk;
initial begin

$dumpfile("lab82_tb.vcd");
$dumpvars (0,regmod_tb);
clk=1'b0;

s=3'b000;enable=1'b1;read1=3'b000;read2=3'b001;writeinp=12'b111111111111;#10;
s=3'b011;enable=1'b1;read1=3'b000;read2=3'b011;writeinp=12'b111111111111;#10;

$display("Test completed");
#1000;$finish;

end

endmodule