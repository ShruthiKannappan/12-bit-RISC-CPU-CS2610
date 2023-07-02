`timescale 1ns/1ps
module barshif(
    output wire [7:0][7:0] o,
    input wire [7:0] a
);

buf b00(o[0][0],a[0]);
buf b01(o[0][1],a[1]);
buf b02(o[0][2],a[2]);
buf b03(o[0][3],a[3]);
buf b04(o[0][4],a[4]);
buf b05(o[0][5],a[5]);
buf b06(o[0][6],a[6]);
buf b07(o[0][7],a[7]);

buf b10(o[1][0],a[1]);
buf b11(o[1][1],a[2]);
buf b12(o[1][2],a[3]);
buf b13(o[1][3],a[4]);
buf b14(o[1][4],a[5]);
buf b15(o[1][5],a[6]);
buf b16(o[1][6],a[7]);
buf b17(o[1][7],0);

buf b20(o[2][0],a[2]);
buf b21(o[2][1],a[3]);
buf b22(o[2][2],a[4]);
buf b23(o[2][3],a[5]);
buf b24(o[2][4],a[6]);
buf b25(o[2][5],a[7]);
buf b26(o[2][6],0);
buf b27(o[2][7],0);

buf b30(o[3][0],a[3]);
buf b31(o[3][1],a[4]);
buf b32(o[3][2],a[5]);
buf b33(o[3][3],a[6]);
buf b34(o[3][4],a[7]);
buf b35(o[3][5],0);
buf b36(o[3][6],0);
buf b37(o[3][7],0);

buf b40(o[4][0],a[4]);
buf b41(o[4][1],a[5]);
buf b42(o[4][2],a[6]);
buf b43(o[4][3],a[7]);
buf b44(o[4][4],0);
buf b45(o[4][5],0);
buf b46(o[4][6],0);
buf b47(o[4][7],0);

buf b50(o[5][0],a[5]);
buf b51(o[5][1],a[6]);
buf b52(o[5][2],a[7]);
buf b53(o[5][3],0);
buf b54(o[5][4],0);
buf b55(o[5][5],0);
buf b56(o[5][6],0);
buf b57(o[5][7],0);

buf b60(o[6][0],a[6]);
buf b61(o[6][1],a[7]);
buf b62(o[6][2],0);
buf b63(o[6][3],0);
buf b64(o[6][4],0);
buf b65(o[6][5],0);
buf b66(o[6][6],0);
buf b67(o[6][7],0);

buf b70(o[7][0],a[7]);
buf b71(o[7][1],0);
buf b72(o[7][2],0);
buf b73(o[7][3],0);
buf b74(o[7][4],0);
buf b75(o[7][5],0);
buf b76(o[7][6],0);
buf b77(o[7][7],0);

endmodule