module fa(a, b, cin, sum, cout);
    input a, b, cin; 
    output sum, cout;
    assign sum = a ^ b ^ cin;
    assign cout = a&b | b&cin | cin&a; 
endmodule

module mux(i, s, e, o);
    input [1: 0] i;
    input s, e; 
    output o;
    if (e == 1) assign o = select ? b: a;
    else assign o = 1'b0;
endmodule

module divider(a, b, cin, o, decider, decision, div_prop);
    input a, b, cin, decider; 
    output o, decision, div_prop;
    wire i1; 
    assign nb = ~b;
    fa fa1(a, nb, cin, i1, cout);
    mux m1({a, i1}, decider, 1'b1, o);
    assign div_prop = b;
    assign decision = decider;
endmodule

module reci(d, q);
    input [6: 0] d;
    output [5: 0] q;
    wire [  ]
    divider d(1'b0, d[6], 1'b1, );
    // for (integer i = 0; i < 7; i = i + 1) begin
             
    // end
    int x = 5;
    int x = 6;
endmodule

module p_decoder(d, D);
    input [5: 0] d;
    output [20: 0] D;
    assign D[0] = ~d[0] & ~d[1] & ~d[2] & ~d[3] & ~d[4] & ~d[5];
    assign D[1] = ~d[0] & ~d[1] & ~d[2] & ~d[3] & (d[4] ^ d[5]);
    assign D[2] = (~d[0] & ~d[1] & ~d[2]) & (d[3] & ~d[4] & ~d[5] | ~d[3] & d[4] & d[5]);
    assign D[3] = ~d[0] & ~d[1] & ~d[2] & d[3] & ~d[4] & d[5];
    assign D[4] = ~d[0] & ~d[1] & ~d[2] & d[3] & d[4];
    assign D[5] = ~d[0] & ~d[1] & d[2] & ~d[3] & ~d[4] & ~d[5]; 
    assign D[6] = ~d[0] & ~d[1] & d[2] & ~d[3] & (d[4] ^ d[5]);
    assign D[7] = ~d[0] & ~d[1] & d[2] & (~d[3] & d[4] & d[5] | d[3] & ~d[4] & ~d[5]);
    assign D[8] = ~d[0] & ~d[1] & d[2] & d[3] & ~d[4] & d[5];
    assign D[9] = ~d[0] & ~d[1] & d[2] & d[3] & d[4];
    assign D[10] = ~d[0] & d[1] & ~d[2] & ~d[3] & ~d[4] & ~d[5];
    assign D[11] = ~d[0] & d[1] & ~d[2] & ~d[3] & (d[4] ^ d[5]);
    assign D[12] = ~d[0] & d[1] & ~d[2] & (~d[3] & d[4] & d[5] | d[3] & ~d[4] & ~d[5]);
    assign D[13] = ~d[0] & d[1] & ~d[2] & d[3] & ~d[4] & d[5];
    assign D[14] = ~d[0] & d[1] & ~d[2] & d[3] & d[4];
    assign D[15] = ~d[0] & d[1] & d[2] & ~d[3] & ~d[4] & ~d[5];
    assign D[16] = ~d[0] & d[1] & d[2] & ~d[3] & (d[4] ^ d[5]);
    assign D[17] = ~d[0] & d[1] & d[2] & (~d[3] & d[4] & d[5] | d[3] & ~d[4] & ~d[5]);
    assign D[18] = ~d[0] & d[1] & d[2] & d[3] & ~d[4] & d[5];
    assign D[19] = ~d[0] & d[1] & d[2] & d[3] & d[4];
    assign D[20] = d[0] & ~d[1] & ~d[2] & ~d[3] & ~d[4] & ~d[5];
endmodule