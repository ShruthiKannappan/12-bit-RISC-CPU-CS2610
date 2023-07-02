`timescale 1ns/1ps
module m2to17(
    input wire[6:0] inp1,
    input wire [6:0] inp2,
    input wire s,
    output wire[6:0] o

);
wire[7:0] p;
wire [7:0] q;
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
and j4(p[4],inp1[4],nots);
and k4(q[4],inp2[4],s);
or l4(o[4],p[4],q[4]);
and j5(p[5],inp1[5],nots);
and k5(q[5],inp2[5],s);
or l5(o[5],p[5],q[5]);
and j6(p[6],inp1[6],nots);
and k6(q[6],inp2[6],s);
or l6(o[6],p[6],q[6]);
endmodule