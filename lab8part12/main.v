`timescale 1ns/1ps
module main(
    output wire [11:0] o,
    input wire [11:0] x,
    input wire [11:0] y
    // output wire[3:0] diffe,
    // output wire [3:0] r,
    // output wire [8:0]sm,
    // output wire [7:0] xm,
    // output wire [7:0] ym,
    // output wire[7:0] q
);
wire [3:0] diffe;
wire b8;
wire bin;
buf ca(bin,0);
BLS4 bs1(diffe,b8,x[10:7],y[10:7],bin);
wire [7:0] ym;
wire [7:0] xm;
buf b1(ym[7],1);
buf b2(xm[7],1);
buf b3(ym[6],y[6]);
buf b4(xm[6],x[6]);
buf b5(ym[5],y[5]);
buf b6(xm[5],x[5]);
buf b7(ym[4],y[4]);
buf bb8(xm[4],x[4]);
buf b9(ym[3],y[3]);
buf b10(xm[3],x[3]);
buf b11(ym[2],y[2]);
buf b12(xm[2],x[2]);
buf b13(ym[1],y[1]);
buf b14(xm[1],x[1]);
buf b15(ym[0],y[0]);
buf b16(xm[0],x[0]);
wire [7:0] z;
buf a0(z[0],0);
buf a1(z[1],0);
buf a2(z[2],0);
buf a3(z[3],0);
buf a4(z[4],0);
buf a5(z[5],0);
buf a6(z[6],0);
buf a7(z[7],0);
wire [7:0] p;
wire [7:0][7:0] exe;
barshif hima(exe,ym);
MUX81 eto1(p,exe,diffe[2:0]);
wire[7:0] q;
m2to18 tto1(p,z,diffe[3],q);
wire [8:0] sm;
adder81 s1(sm,xm,q);
m2to17 m1(sm[6:0],sm[7:1],sm[8],o[6:0]);
wire [3:0] r;
wire waste1;
wire waste2;
wire cin1;
buf bb3(cin1,1);
CLA4 c1(r,waste1,waste2,x[10:7],z[3:0],cin1);
m2to14 m2(x[10:7],r,sm[8],o[10:7]);
buf f1(o[11],0);

endmodule