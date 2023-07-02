`timescale 1ns/1ps
module BLS1(
    output wire s,
    output wire b,
    input wire x,
    input wire y,
    input wire bin
);
wire nx;
wire xxory;
wire notxory;
wire p;
wire q;
wire l;
not not1(nx,x);
or or1(notxory,nx,y);
and and1(q,nx,y);
xor x1(xxory,x,y);
xor x2(s,xxory,bin);
and and2(l,notxory,bin);
or or2(b,l,q);




endmodule