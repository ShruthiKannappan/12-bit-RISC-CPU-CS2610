`timescale 1ns/1ps
module MUX8to1(
    output wire [11:0]o,
    input wire [7:0][11:0]i,
    input wire [2:0]s
);

    wire [7:0][11:0]mins;
    wire [2:0] ns;
    not n0(ns[0],s[0]);
    not n1(ns[1],s[1]);
    not n2(ns[2],s[2]);
    wire [7:0] s1;
    and a0(s1[0],ns[0],ns[1],ns[2]);
    and a1(s1[1],s[0],ns[1],ns[2]);
    and a2(s1[2],ns[0],s[1],ns[2]);
    and a3(s1[3],s[0],s[1],ns[2]);
    and a4(s1[4],ns[0],ns[1],s[2]);
    and a5(s1[5],s[0],ns[1],s[2]);
    and a6(s1[6],ns[0],s[1],s[2]);
    and a7(s1[7],s[0],s[1],s[2]);

and aa10(mins[0][0],s1[0],i[0][0]);
and aa11(mins[0][1],s1[0],i[0][1]);
and aa12(mins[0][2],s1[0],i[0][2]);
and aa13(mins[0][3],s1[0],i[0][3]);
and aa14(mins[0][4],s1[0],i[0][4]);
and aa15(mins[0][5],s1[0],i[0][5]);
and aa16(mins[0][6],s1[0],i[0][6]);
and aa17(mins[0][7],s1[0],i[0][7]);
and aa018(mins[0][8],s1[0],i[0][8]);
and aa019(mins[0][9],s1[0],i[0][9]);
and aa020(mins[0][10],s1[0],i[0][10]);
and aa021(mins[0][11],s1[0],i[0][11]);


and aa20(mins[1][0],s1[1],i[1][0]);
and aa21(mins[1][1],s1[1],i[1][1]);
and aa22(mins[1][2],s1[1],i[1][2]);
and aa23(mins[1][3],s1[1],i[1][3]);
and aa24(mins[1][4],s1[1],i[1][4]);
and aa25(mins[1][5],s1[1],i[1][5]);
and aa26(mins[1][6],s1[1],i[1][6]);
and aa27(mins[1][7],s1[1],i[1][7]);
and aa118(mins[1][8],s1[1],i[1][8]);
and aa119(mins[1][9],s1[1],i[1][9]);
and aa120(mins[1][10],s1[1],i[1][10]);
and aa121(mins[1][11],s1[1],i[1][11]);


and aa30(mins[2][0],s1[2],i[2][0]);
and aa31(mins[2][1],s1[2],i[2][1]);
and aa32(mins[2][2],s1[2],i[2][2]);
and aa33(mins[2][3],s1[2],i[2][3]);
and aa34(mins[2][4],s1[2],i[2][4]);
and aa35(mins[2][5],s1[2],i[2][5]);
and aa36(mins[2][6],s1[2],i[2][6]);
and aa37(mins[2][7],s1[2],i[2][7]);
and aa218(mins[2][8],s1[2],i[2][8]);
and aa219(mins[2][9],s1[2],i[2][9]);
and aa220(mins[2][10],s1[2],i[2][10]);
and aa221(mins[2][11],s1[2],i[2][11]);


and aa40(mins[3][0],s1[3],i[3][0]);
and aa41(mins[3][1],s1[3],i[3][1]);
and aa42(mins[3][2],s1[3],i[3][2]);
and aa43(mins[3][3],s1[3],i[3][3]);
and aa44(mins[3][4],s1[3],i[3][4]);
and aa45(mins[3][5],s1[3],i[3][5]);
and aa46(mins[3][6],s1[3],i[3][6]);
and aa47(mins[3][7],s1[3],i[3][7]);
and aa318(mins[3][8],s1[3],i[3][8]);
and aa319(mins[3][9],s1[3],i[3][9]);
and aa320(mins[3][10],s1[3],i[3][10]);
and aa321(mins[3][11],s1[3],i[3][11]);


and aa50(mins[4][0],s1[4],i[4][0]);
and aa51(mins[4][1],s1[4],i[4][1]);
and aa52(mins[4][2],s1[4],i[4][2]);
and aa53(mins[4][3],s1[4],i[4][3]);
and aa54(mins[4][4],s1[4],i[4][4]);
and aa55(mins[4][5],s1[4],i[4][5]);
and aa56(mins[4][6],s1[4],i[4][6]);
and aa57(mins[4][7],s1[4],i[4][7]);
and aa418(mins[4][8],s1[4],i[4][8]);
and aa419(mins[4][9],s1[4],i[4][9]);
and aa420(mins[4][10],s1[4],i[4][10]);
and aa421(mins[4][11],s1[4],i[4][11]);


and aa60(mins[5][0],s1[5],i[5][0]);
and aa61(mins[5][1],s1[5],i[5][1]);
and aa62(mins[5][2],s1[5],i[5][2]);
and aa63(mins[5][3],s1[5],i[5][3]);
and aa64(mins[5][4],s1[5],i[5][4]);
and aa65(mins[5][5],s1[5],i[5][5]);
and aa66(mins[5][6],s1[5],i[5][6]);
and aa67(mins[5][7],s1[5],i[5][7]);
and aa518(mins[5][8],s1[5],i[5][8]);
and aa519(mins[5][9],s1[5],i[5][9]);
and aa520(mins[5][10],s1[5],i[5][10]);
and aa521(mins[5][11],s1[5],i[5][11]);


and aa70(mins[6][0],s1[6],i[6][0]);
and aa71(mins[6][1],s1[6],i[6][1]);
and aa72(mins[6][2],s1[6],i[6][2]);
and aa73(mins[6][3],s1[6],i[6][3]);
and aa74(mins[6][4],s1[6],i[6][4]);
and aa75(mins[6][5],s1[6],i[6][5]);
and aa76(mins[6][6],s1[6],i[6][6]);
and aa77(mins[6][7],s1[6],i[6][7]);
and aa618(mins[6][8],s1[6],i[6][8]);
and aa619(mins[6][9],s1[6],i[6][9]);
and aa620(mins[6][10],s1[6],i[6][10]);
and aa621(mins[6][11],s1[6],i[6][11]);


and aa80(mins[7][0],s1[7],i[7][0]);
and aa81(mins[7][1],s1[7],i[7][1]);
and aa82(mins[7][2],s1[7],i[7][2]);
and aa83(mins[7][3],s1[7],i[7][3]);
and aa84(mins[7][4],s1[7],i[7][4]);
and aa85(mins[7][5],s1[7],i[7][5]);
and aa86(mins[7][6],s1[7],i[7][6]);
and aa87(mins[7][7],s1[7],i[7][7]);
and aa718(mins[7][8],s1[7],i[7][8]);
and aa719(mins[7][9],s1[7],i[7][9]);
and aa720(mins[7][10],s1[7],i[7][10]);
and aa721(mins[7][11],s1[7],i[7][11]);

or op0(o[0],mins[0][0],mins[1][0],mins[2][0],mins[3][0],mins[4][0],mins[5][0],mins[6][0],mins[7][0]);
or op1(o[1],mins[0][1],mins[1][1],mins[2][1],mins[3][1],mins[4][1],mins[5][1],mins[6][1],mins[7][1]);
or op2(o[2],mins[0][2],mins[1][2],mins[2][2],mins[3][2],mins[4][2],mins[5][2],mins[6][2],mins[7][2]);
or op3(o[3],mins[0][3],mins[1][3],mins[2][3],mins[3][3],mins[4][3],mins[5][3],mins[6][3],mins[7][3]);
or op4(o[4],mins[0][4],mins[1][4],mins[2][4],mins[3][4],mins[4][4],mins[5][4],mins[6][4],mins[7][4]);
or op5(o[5],mins[0][5],mins[1][5],mins[2][5],mins[3][5],mins[4][5],mins[5][5],mins[6][5],mins[7][5]);
or op6(o[6],mins[0][6],mins[1][6],mins[2][6],mins[3][6],mins[4][6],mins[5][6],mins[6][6],mins[7][6]);
or op7(o[7],mins[0][7],mins[1][7],mins[2][7],mins[3][7],mins[4][7],mins[5][7],mins[6][7],mins[7][7]);
or op8(o[8],mins[0][8],mins[1][8],mins[2][8],mins[3][8],mins[4][8],mins[5][8],mins[6][8],mins[7][8]);
or op9(o[9],mins[0][9],mins[1][9],mins[2][9],mins[3][9],mins[4][9],mins[5][9],mins[6][9],mins[7][9]);
or op10(o[10],mins[0][10],mins[1][10],mins[2][10],mins[3][10],mins[4][10],mins[5][10],mins[6][10],mins[7][10]);
or op11(o[11],mins[0][11],mins[1][11],mins[2][11],mins[3][11],mins[4][11],mins[5][11],mins[6][11],mins[7][11]);

endmodule