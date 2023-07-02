`timescale 1ns/1ps
module final2(
    output wire[7:0] o1,
    output wire o,
    input wire [7:0] a,
    input wire[7:0] b,
    input wire d
    // output wire s1,
    // output wire f2,
    // output wire g2,
    // output wire f,
    // output wire g,
    // output wire[15:0] p
);
wire[7:0][15:0] pp;
wire[15:0] p;
generate_pp p1(pp,a,b,d);
wire c;
and pranita11(c,d,b[7]);
summandadd ss1(p,pp,c);
wire f,g;
xor f1(f,b[7],a[7]);
not g1(g,f);
wire f2;
or f3(f2,p[15],p[14],p[13],p[12],p[11],p[10],p[9],p[8]);
wire[7:0] p3;
wire g2;
not n8(p3[0],p[8]);
not n9(p3[1],p[9]);
not n10(p3[2],p[10]);
not n11(p3[3],p[11]);
not n12(p3[4],p[12]);
not n13(p3[5],p[13]);
not n14(p3[6],p[14]);
not n15(p3[7],p[15]);
or g3(g2,p3[7],p3[6],p3[5],p3[4],p3[3],p3[2],p3[1],p3[0]);
wire g4,f4;
and hima10(g4,g2,f);
and shru1(f4,f2,g);

or hsp(s1,f4,g4);

wire s;
and hsp1(s,s1,d);
wire us1;
wire noddy;
not notd(noddy,d);
and us2(us1,f2,noddy);
or vb(o,us1,s);
buf bb1(o1[0],p[0]);
buf bb2(o1[1],p[1]);
buf bb3(o1[2],p[2]);
buf bb4(o1[3],p[3]);
buf bb5(o1[4],p[4]);
buf bb6(o1[5],p[5]);
buf bb7(o1[6],p[6]);
buf bb8(o1[7],p[7]);
endmodule