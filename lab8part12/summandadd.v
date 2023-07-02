`timescale 1ns/1ps
module summandadd(
    output wire [15:0] P,
    input wire [7:0][15:0] pp,
    input wire c
);
    wire [15:0] s1;
    wire [15:0] c1;
    wire [15:0] s2;
    wire [15:0] c2;
    wire [15:0] s3;
    wire [15:0] c3;
    wire [15:0] s4;
    wire [15:0] c4;
    wire [15:0] s5;
    wire [15:0] c5;
    wire [15:0] P1;
    wire [15:0] P2;

    reducer32 r1(c1,s1,pp[0],pp[1],pp[2]);
    reducer32 r2(c2,s2,pp[3],pp[4],pp[5]);
    reducer32 r3(c3,s3,s1,c1,s2);
    reducer32 r4(c4,s4,c2,pp[6],pp[7]);
    reducer32 r5(c5,s5,s3,c3,s4);
    reducer32 r6(P1,P2,s5,c5,c4);

    CLA2 c9(P,P1,P2,c);



endmodule