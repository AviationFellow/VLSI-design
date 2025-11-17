module counter (clk,rst,Q);
  input clk,rst;
  output [4:0]Q;
  wire [4:0]d_in;
  
  d_ff c0(Q[0],d_in[0],clk,rst,d_in[0]);
  d_ff c1(Q[1],d_in[1],Q[0],rst,d_in[1]);
  d_ff c2(Q[2],d_in[2],Q[1],rst,d_in[2]);
  d_ff c3(Q[3],d_in[3],Q[2],rst,d_in[3]);
  d_ff c4(Q[4],d_in[4],Q[3],rst,d_in[4]);
  
endmodule
