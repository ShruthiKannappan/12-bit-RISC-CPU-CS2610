`timescale 1ns/1ps
module regmod(
    output [11:0] out1,
    output [11:0] out2,
    input  [2:0] read1,
    input  [2:0] read2,
    input  [11:0] writeinp,
    input  enable,
    input  [2:0] s,
    input clk    
);
// reg [11:0] r0;
// reg [11:0] r1;
// reg [11:0] r2;
// reg [11:0] r3;
// reg [11:0] r4;
// reg [11:0] r5;
// reg [11:0] r6;
// reg [11:0] r7;
reg [7:0][11:0] r;
// r[0]=12'b000000000000;
// r[1]=12'b000000000000;
// r[2]=12'b000000000000;
// r[3]=12'b000000000000;
// r[4]=12'b000000000000;
// r[5]=12'b000000000000;
// r[6]=12'b000000000000;
// r[7]=12'b000000000000;
    wire [7:0] s1;
    wire [2:0] ns;
    not n0(ns[0],s[0]);
    not n1(ns[1],s[1]);
    not n2(ns[2],s[2]);
    and a0(s1[0],ns[0],ns[1],ns[2],clk,enable);
    and a1(s1[1],s[0],ns[1],ns[2],clk,enable);
    and a2(s1[2],ns[0],s[1],ns[2],clk,enable);
    and a3(s1[3],s[0],s[1],ns[2],clk,enable);
    and a4(s1[4],ns[0],ns[1],s[2],clk,enable);
    and a5(s1[5],s[0],ns[1],s[2],clk,enable);
    and a6(s1[6],ns[0],s[1],s[2],clk,enable);
    and a7(s1[7],s[0],s[1],s[2],clk,enable);
always @(posedge s1[0]) begin
  r[0] <= writeinp;
end
always @(posedge s1[1]) begin
  r[1] <= writeinp;
end
always @(posedge s1[2]) begin
  r[2] <= writeinp;
end
always @(posedge s1[3]) begin
  r[3] <= writeinp;
end
always @(posedge s1[4]) begin
  r[4] <= writeinp;
end
always @(posedge s1[5]) begin
  r[5] <= writeinp;
end
always @(posedge s1[6]) begin
  r[6] <= writeinp;
end
always @(posedge s1[7]) begin
  r[7] <= writeinp;
end
MUX8to1 m1(out1,r,read1);
MUX8to1 m2(out2,r,read2);






endmodule