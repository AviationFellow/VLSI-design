module grey_cell(Gkj, Pik, Gik, G);
 //grey cell
 input Gkj, Pik, Gik;
 output G;
 wire Y;
 and(Y, Gkj, Pik);
 or(G, Y, Gik);
endmodule

