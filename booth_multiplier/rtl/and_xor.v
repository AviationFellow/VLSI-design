module and_xor(a, b, g, p);
 //very first inputs - and/xor
 input a, b;
 output p, g;
 xor(p, a, b);
 and(g, a, b);
endmodule
