`timescale 1ns/1ps
module CSA1(
    output wire C,
    output  wire s,
    input  wire a,
    input  wire b,
    input  wire c
);

    wire aandb;
    wire cab;
    wire axorb;
    // wire p;

    xor x(axorb,a,b);
    and a2(aandb,a,b);
    and a1(cab,c,axorb);
    or o(C,cab,aandb);
    xor x1(s,a,b,c);

endmodule