`timescale 1ns/1ps
module CLA2(
  output wire [15:0]s,
    input wire[15:0] a,
    input wire[15:0] b,
    input wire d
);
wire c16;

wire [15:0] p;
wire[15:0] g;

xor thi0(p[0],a[0],b[0]);
xor shru1(p[1],a[1],b[1]);
xor z2(p[2],a[2],b[2]);
xor z3(p[3],a[3],b[3]);
xor z4(p[4],a[4],b[4]);
xor z5(p[5],a[5],b[5]);
xor z6(p[6],a[6],b[6]);
xor z7(p[7],a[7],b[7]);
xor z8(p[8],a[8],b[8]);
xor z9(p[9],a[9],b[9]);
xor hima10(p[10],a[10],b[10]);
xor pranita11(p[11],a[11],b[11]);
xor z12(p[12],a[12],b[12]);
xor z13(p[13],a[13],b[13]);
xor z14(p[14],a[14],b[14]);
xor z15(p[15],a[15],b[15]);
and y0(g[0],a[0],b[0]);
and y1(g[1],a[1],b[1]);
and y2(g[2],a[2],b[2]);
and y3(g[3],a[3],b[3]);
and y4(g[4],a[4],b[4]);
and y5(g[5],a[5],b[5]);
and y6(g[6],a[6],b[6]);
and y7(g[7],a[7],b[7]);
and y8(g[8],a[8],b[8]);
and y9(g[9],a[9],b[9]);
and y10(g[10],a[10],b[10]);
and y11(g[11],a[11],b[11]);
and y12(g[12],a[12],b[12]);
and y13(g[13],a[13],b[13]);
and y14(g[14],a[14],b[14]);
and y15(g[15],a[15],b[15]);
wire[3:0] pi;
wire[3:0] gi;
and j0(pi[0],p[0],p[1],p[2],p[3]);
and j1(pi[1],p[4],p[5],p[6],p[7]);
and j2(pi[2],p[8],p[9],p[10],p[11]);
and j3(pi[3],p[12],p[13],p[14],p[15]);

wire [2:0]g00;
and hps11(g00[0],p[3],p[2],p[1],g[0]);
and hps12(g00[1],p[3],p[2],g[1]);
and hps13(g00[2],p[3],g[2]);
or sph0(gi[0],g00[0],g00[1],g00[2],g[3]);

wire [2:0]g01;
and hps21(g01[0],p[7],p[6],p[5],g[4]);
and hps22(g01[1],p[7],p[6],g[5]);
and hps23(g01[2],p[7],g[6]);
or sph1(gi[1],g01[0],g01[1],g01[2],g[7]);



wire [2:0]g02;
and hps31(g02[0],p[11],p[10],p[9],g[8]);
and hps32(g02[1],p[11],p[10],g[9]);
and hps33(g02[2],p[11],g[10]);
or sph2(gi[2],g02[0],g02[1],g02[2],g[11]);

wire [2:0]g03;
and hps41(g03[0],p[15],p[14],p[13],g[12]);
and hps42(g03[1],p[15],p[14],g[13]);
and hps43(g03[2],p[15],g[14]);
or sph3(gi[3],g03[0],g03[1],g03[2],g[15]);

wire[3:0] pc;
wire [2:0] g4;
wire [1:0] g3;
wire g2;
wire [2:0] c;

and  pc0 (pc[0],pi[0],d);
and  pc1 (pc[1],pi[0],d,pi[1]);
and  pc2 (pc[2],pi[0],d,pi[1],pi[2]);
and pc3 (pc[3],pi[0],d,pi[1],pi[2],pi[3]);
and gg2(g2,gi[0],pi[1]);
and  g30(g3[0],pi[1],pi[2],gi[0]);
and g31(g3[1],pi[2],gi[1]);
and  g40(g4[0],pi[1],pi[2],pi[3],gi[0]);
and  g41(g4[1],pi[2],pi[3],gi[1]);
and  g42(g4[2],pi[3],gi[2]);
or c0(c[0],pc[0],gi[0]);
or  c1(c[1],pc[1],g2,gi[1]);
or c2(c[2],pc[2],g3[0],g3[1],gi[2]);
or  c3(c16,pc[3],g4[0],g4[1],g4[2],gi[3]);

wire [3:0] waste;
wire [3:0] waste2;

CLA4 v0(s[3:0],waste[0],waste2[0],a[3:0],b[3:0],d);
CLA4 v1(s[7:4],waste[1],waste2[1],a[7:4],b[7:4],c[0]);
CLA4 v2(s[11:8],waste[2],waste2[2],a[11:8],b[11:8],c[1]);
CLA4 v3(s[15:12],waste[3],waste2[3],a[15:12],b[15:12],c[2]);
xor bb(ou,waste[3],d);

xor ww(os,waste[3],waste2[3]);



endmodule