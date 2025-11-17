module black_cell(Gkj, Pik, Gik, Pkj, G, P);
 //black cell
 input Gkj, Pik, Gik, Pkj;
 output G, P;
 wire Y;

 and(Y, Gkj, Pik);
 or(G, Gik, Y);
 and(P, Pkj, Pik);
endmodule
