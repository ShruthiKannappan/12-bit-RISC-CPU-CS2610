`timescale 1ns/1ps
module reducer32(
    output wire [15:0] C,
    output wire [15:0] s,
    input wire [15:0] a,
    input wire [15:0] b,
    input wire [15:0] c
);
wire waste;
    CSA1 c0(C[1],s[0],a[0],b[0],c[0]);
    CSA1 c1(C[2],s[1],a[1],b[1],c[1]);
    CSA1 c2(C[3],s[2],a[2],b[2],c[2]);
    CSA1 c3(C[4],s[3],a[3],b[3],c[3]);
    CSA1 c4(C[5],s[4],a[4],b[4],c[4]);
    CSA1 c5(C[6],s[5],a[5],b[5],c[5]);
    CSA1 c6(C[7],s[6],a[6],b[6],c[6]);
    CSA1 c7(C[8],s[7],a[7],b[7],c[7]);
    CSA1 c8(C[9],s[8],a[8],b[8],c[8]);
    CSA1 c9(C[10],s[9],a[9],b[9],c[9]);
    CSA1 c10(C[11],s[10],a[10],b[10],c[10]);
    CSA1 c11(C[12],s[11],a[11],b[11],c[11]);
    CSA1 c12(C[13],s[12],a[12],b[12],c[12]);
    CSA1 c13(C[14],s[13],a[13],b[13],c[13]);
    CSA1 c14(C[15],s[14],a[14],b[14],c[14]);
    CSA1 c15(waste,s[15],a[15],b[15],c[15]);

    buf (C[0],0);

endmodule