`timescale 1ns/1ps
module adder8(
    output wire[7:0] o,
    input wire [7:0] a,
    input wire[7:0] b

);
wire c;
wire waste;
wire waste3;
wire cin;
buf(cin,0);
wire waste2;
CLA4 cla1(o[3:0],c,waste,a[3:0],b[3:0],cin);
CLA4 cla2(o[7:4],waste3,waste2,a[7:4],b[7:4],c);
endmodule