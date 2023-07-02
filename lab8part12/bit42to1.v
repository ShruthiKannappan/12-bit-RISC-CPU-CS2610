`timescale 1ns/1ps
module m2to14(
    input wire[3:0] inp1,
    input wire [3:0] inp2,
    input wire s,
    output wire[3:0] o

);
wire[3:0] p;
wire [3:0] q;
wire nots;
not not1(nots,s);
and j0(p[0],inp1[0],nots);
and k0(q[0],inp2[0],s);
or l0(o[0],p[0],q[0]);
and j1(p[1],inp1[1],nots);
and k1(q[1],inp2[1],s);
or l1(o[1],p[1],q[1]);
and j2(p[2],inp1[2],nots);
and k2(q[2],inp2[2],s);
or l2(o[2],p[2],q[2]);
and j3(p[3],inp1[3],nots);
and k3(q[3],inp2[3],s);
or l3(o[3],p[3],q[3]);
endmodule