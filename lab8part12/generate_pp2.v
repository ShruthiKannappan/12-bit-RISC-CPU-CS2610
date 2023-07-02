`timescale 1ns/1ps
module generate_pp2(
    output wire[7:0][15:0] pp,
    input wire [7:0] a,
    input wire[7:0] b
);


and x00(pp[0][0],b[0],a[0]);
and x01(pp[0][1],b[0],a[1]);
and x02(pp[0][2],b[0],a[2]);
and x03(pp[0][3],b[0],a[3]);
and x04(pp[0][4],b[0],a[4]);
and x05(pp[0][5],b[0],a[5]);
and x06(pp[0][6],b[0],a[6]);
and x07(pp[0][7],b[0],a[7]);

buf y08(pp[0][8],0);
buf y09(pp[0][9],0);
buf y010(pp[0][10],0);
buf y011(pp[0][11],0);
buf y012(pp[0][12],0);
buf y013(pp[0][13],0);
buf y014(pp[0][14],0);
buf y015(pp[0][15],0);

buf bb4( pp[1][0],0);

and x11(pp[1][1],b[1],a[0]);
and x12(pp[1][2],b[1],a[1]);
and x13(pp[1][3],b[1],a[2]);
and x14(pp[1][4],b[1],a[3]);
and x15(pp[1][5],b[1],a[4]);
and x16(pp[1][6],b[1],a[5]);
and x17(pp[1][7],b[1],a[6]);
and x18(pp[1][8],b[1],a[7]);

buf y19(pp[1][9],0);
buf y110(pp[1][10],0);
buf y111(pp[1][11],0);
buf y112(pp[1][12],0);
buf y113(pp[1][13],0);
buf y114(pp[1][14],0);
buf y115(pp[1][15],0);

assign pp[2][0]=0;
assign pp[2][1]=0;

and x22(pp[2][2],b[2],a[0]);
and x23(pp[2][3],b[2],a[1]);
and x24(pp[2][4],b[2],a[2]);
and x25(pp[2][5],b[2],a[3]);
and x26(pp[2][6],b[2],a[4]);
and x27(pp[2][7],b[2],a[5]);
and x28(pp[2][8],b[2],a[6]);
and x29(pp[2][9],b[2],a[7]);

buf y210(pp[2][10],0);
buf y211(pp[2][11],0);
buf y212(pp[2][12],0);
buf y213(pp[2][13],0);
buf y214(pp[2][14],0);
buf y215(pp[2][15],0);

assign pp[3][0]=0;
assign pp[3][1]=0;
assign pp[3][2]=0;

and x33(pp[3][3],b[3],a[0]);
and x34(pp[3][4],b[3],a[1]);
and x35(pp[3][5],b[3],a[2]);
and x36(pp[3][6],b[3],a[3]);
and x37(pp[3][7],b[3],a[4]);
and x38(pp[3][8],b[3],a[5]);
and x39(pp[3][9],b[3],a[6]);
and x310(pp[3][10],b[3],a[7]);

buf y311(pp[3][11],0);
buf y312(pp[3][12],0);
buf y313(pp[3][13],0);
buf y314(pp[3][14],0);
buf y315(pp[3][15],0);

assign pp[4][0]=0;
assign pp[4][1]=0;
assign pp[4][2]=0;
assign pp[4][3]=0;

and x44(pp[4][4],b[4],a[0]);
and x45(pp[4][5],b[4],a[1]);
and x46(pp[4][6],b[4],a[2]);
and x47(pp[4][7],b[4],a[3]);
and x48(pp[4][8],b[4],a[4]);
and x49(pp[4][9],b[4],a[5]);
and x410(pp[4][10],b[4],a[6]);
and x411(pp[4][11],b[4],a[7]);

buf y412(pp[4][12],0);
buf y413(pp[4][13],0);
buf y414(pp[4][14],0);
buf y415(pp[4][15],0);

assign pp[5][0]=0;
assign pp[5][1]=0;
assign pp[5][2]=0;
assign pp[5][3]=0;
assign pp[5][4]=0;

and x55(pp[5][5],b[5],a[0]);
and x56(pp[5][6],b[5],a[1]);
and x57(pp[5][7],b[5],a[2]);
and x58(pp[5][8],b[5],a[3]);
and x59(pp[5][9],b[5],a[4]);
and x510(pp[5][10],b[5],a[5]);
and x511(pp[5][11],b[5],a[6]);
and x512(pp[5][12],b[5],a[7]);

buf y513(pp[5][13],0);
buf y514(pp[5][14],0);
buf y515(pp[5][15],0);

assign pp[6][0]=0;
assign pp[6][1]=0;
assign pp[6][2]=0;
assign pp[6][3]=0;
assign pp[6][4]=0;
assign pp[6][5]=0;

and x66(pp[6][6],b[6],a[0]);
and x67(pp[6][7],b[6],a[1]);
and x68(pp[6][8],b[6],a[2]);
and x69(pp[6][9],b[6],a[3]);
and x610(pp[6][10],b[6],a[4]);
and x611(pp[6][11],b[6],a[5]);
and x612(pp[6][12],b[6],a[6]);
and x613(pp[6][13],b[6],a[7]);

buf y614(pp[6][14],0);
buf y615(pp[6][15],0);

assign pp[7][0]=0;
assign pp[7][1]=0;
assign pp[7][2]=0;
assign pp[7][3]=0;
assign pp[7][4]=0;
assign pp[7][5]=0;
assign pp[7][6]=0;

and x76(pp[7][7],b[7],a[0]);
and x77(pp[7][8],b[7],a[1]);
and x78(pp[7][9],b[7],a[2]);
and x79(pp[7][10],b[7],a[3]);
and x710(pp[7][11],b[7],a[4]);
and x711(pp[7][12],b[7],a[5]);
and x712(pp[7][13],b[7],a[6]);
and x713(pp[7][14],b[7],a[7]);

assign pp[7][15]=0;





endmodule