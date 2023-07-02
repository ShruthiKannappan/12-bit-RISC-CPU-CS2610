`timescale 1ns/1ps
module CLA4 (
    output wire[3:0] s,
    output wire C,
    output wire C_1,
    input wire[3:0] a,
    input wire[3:0] b,
    input wire cin

);
wire[3:0] p;
wire[3:0] g;
wire[3:0] pc;
wire [2:0] g4;
wire [1:0] g3;
wire g2;
wire [2:0] c;

xor  p0(p[0],a[0],b[0]);    
xor  p1(p[1],a[1],b[1]);    
xor  p2(p[2],a[2],b[2]);    
xor  p3(p[3],a[3],b[3]); 
and  a0(g[0],a[0],b[0]);
and  a1(g[1],a[1],b[1]);
and a2(g[2],a[2],b[2]);
and a3(g[3],a[3],b[3]);
and  pc0 (pc[0],p[0],cin);
and  pc1 (pc[1],p[0],cin,p[1]);
and  pc2 (pc[2],p[0],cin,p[1],p[2]);
and pc3 (pc[3],p[0],cin,p[1],p[2],p[3]);
and gg2(g2,g[0],p[1]);
and  g30(g3[0],p[1],p[2],g[0]);
and g31(g3[1],p[2],g[1]);
and  g40(g4[0],p[1],p[2],p[3],g[0]);
and  g41(g4[1],p[2],p[3],g[1]);
and  g42(g4[2],p[3],g[2]);
or c0(c[0],pc[0],g[0]);
or  c1(c[1],pc[1],g2,g[1]);
or c2(c[2],pc[2],g3[0],g3[1],g[2]);
or  c3(C,pc[3],g4[0],g4[1],g4[2],g[3]);
xor s0(s[0],p[0],cin);
xor s1(s[1],p[1],c[0]);
xor s2(s[2],p[2],c[1]);
xor s3(s[3],p[3],c[2]);
buf b1(C_1,c[2]);



endmodule