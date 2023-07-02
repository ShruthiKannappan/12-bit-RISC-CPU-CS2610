`timescale 1ns/1ps
module main2(
 output wire[11:0] o,
 output wire of,
 input wire[ 11:0] a,
 input wire [11:0] b
 
);
wire[4:0] s;
wire zero;
buf a1(zero,0);
wire waste;
wire [15:0] p;
CLA4 bit5(s[3:0],s[4],waste,a[10:7],b[10:7],zero);
wire [4:0]seven;
buf xx1(seven[4],0);
buf x2(seven[3],0);
buf xx3(seven[2],1);
buf xx4(seven[1],1);
buf xx5(seven[0],1);
wire [4:0]six;
buf xx6(six[4],0);
buf xx7(six[3],0);
buf xx8(six[2],1);
buf xx9(six[1],1);
buf xy11(six[0],0);
wire[4:0] s1;
wire [4:0] s2;
wire b1;
wire b2;
BLS5 b11(s1,b1,s,seven,zero);
BLS5 b12(s2,b2,s,six,zero);
wire[7:0][15:0] pp;
wire[7:0] A;
wire [7:0] B;
buf xy1(A[7],1);
buf xy(A[6],a[6]);
buf xy2(A[5],a[5]);
buf xy3(A[4],a[4]);
buf xy4(A[3],a[3]);
buf xy5(A[2],a[2]);
buf xy6(A[1],a[1]);
buf xy7(A[0],a[0]);
buf xy8(B[7],1);
buf xy9(B[6],b[6]);
buf xy10(B[5],b[5]);
buf xy12(B[4],b[4]);
buf xy13(B[3],b[3]);
buf xy14(B[2],b[2]);
buf xy15(B[1],b[1]);
buf xy16(B[0],b[0]);



// wire waste111;
// buf r1(waste111,0);
generate_pp2 pp1(pp,A,B);
// wire [15:0] p;

summandadd ss(p,pp,zero);

m2to17 m1(p[13:7],p[14:8],p[15],o[6:0]);
m2to14 m2(s1[3:0],s2[3:0],p[15],o[10:7]);
xor x1(o[11],a[11],b[11]);
wire notp;
not not1(notp,p[15]);
wire of1;
or or1(of1,b1,s1[4]);
wire of2;
or or2(of2,b2,s2[4]);
wire off1;
wire off2;
and and1(off1,notp,of1);
and and2(off2,p[15],of2);
or or3(of,off1,off2);
buf bbb1(ppp,p[15]);



endmodule