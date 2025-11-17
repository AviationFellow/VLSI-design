module A_Q_Q_1(alu_out, load_A, Q, load_Q, rst, clk_in, en, Q_Q_1, out);
  input [15:0] alu_out, Q;
  input load_A, load_Q, clk_in, rst, en;
  output [31:0] out;
  output [1:0] Q_Q_1;
  wire clk;
  and clk_gate (clk, en, clk_in);
  wire [15:0]A_reg_Q, A_reg_in, Q_reg_Q, Q_reg_in;
  
  //A_register
  mux2x1 A15_sel (A_reg_in[15], load_A, alu_out[15], A_reg_Q[15]);
  d_ff A15_reg (A_reg_Q[15],,clk,rst,A_reg_in[15]);
  mux2x1 A14_sel (A_reg_in[14], load_A, alu_out[15], A_reg_Q[15]);
  d_ff A14_reg (A_reg_Q[14],,clk,rst,A_reg_in[14]);
  mux2x1 A13_sel (A_reg_in[13], load_A, alu_out[14], A_reg_Q[14]);
  d_ff A13_reg (A_reg_Q[13],,clk,rst,A_reg_in[13]);
  mux2x1 A12_sel (A_reg_in[12], load_A, alu_out[13], A_reg_Q[13]);
  d_ff A12_reg (A_reg_Q[12],,clk,rst,A_reg_in[12]);
  mux2x1 A11_sel (A_reg_in[11], load_A, alu_out[12], A_reg_Q[12]);
  d_ff A11_reg (A_reg_Q[11],,clk,rst,A_reg_in[11]);
  mux2x1 A10_sel (A_reg_in[10], load_A, alu_out[11], A_reg_Q[11]);
  d_ff A10_reg (A_reg_Q[10],,clk,rst,A_reg_in[10]);
  mux2x1 A9_sel (A_reg_in[9], load_A, alu_out[10], A_reg_Q[10]);
  d_ff A9_reg (A_reg_Q[9],,clk,rst,A_reg_in[9]);
  mux2x1 A8_sel (A_reg_in[8], load_A, alu_out[9], A_reg_Q[9]);
  d_ff A8_reg (A_reg_Q[8],,clk,rst,A_reg_in[8]);
  mux2x1 A7_sel (A_reg_in[7], load_A, alu_out[8], A_reg_Q[8]);
  d_ff A7_reg (A_reg_Q[7],,clk,rst,A_reg_in[7]);
  mux2x1 A6_sel (A_reg_in[6], load_A, alu_out[7], A_reg_Q[7]);
  d_ff A6_reg (A_reg_Q[6],,clk,rst,A_reg_in[6]);
  mux2x1 A5_sel (A_reg_in[5], load_A, alu_out[6], A_reg_Q[6]);
  d_ff A5_reg (A_reg_Q[5],,clk,rst,A_reg_in[5]);
  mux2x1 A4_sel (A_reg_in[4], load_A, alu_out[5], A_reg_Q[5]);
  d_ff A4_reg (A_reg_Q[4],,clk,rst,A_reg_in[4]);
  mux2x1 A3_sel (A_reg_in[3], load_A, alu_out[4], A_reg_Q[4]);
  d_ff A3_reg (A_reg_Q[3],,clk,rst,A_reg_in[3]);
  mux2x1 A2_sel (A_reg_in[2], load_A, alu_out[3], A_reg_Q[3]);
  d_ff A2_reg (A_reg_Q[2],,clk,rst,A_reg_in[2]);
  mux2x1 A1_sel (A_reg_in[1], load_A, alu_out[2], A_reg_Q[2]);
  d_ff A1_reg (A_reg_Q[1],,clk,rst,A_reg_in[1]);
  mux2x1 A0_sel (A_reg_in[0], load_A, alu_out[1], A_reg_Q[1]);
  d_ff A0_reg (A_reg_Q[0],,clk,rst,A_reg_in[0]);
  
  //Q_register
  
  wire AtoQ;
  assign AtoQ = (load_A)?alu_out[0]:A_reg_Q[0];
  
  mux2x1 Q15_sel (Q_reg_in[15], load_Q, Q[15], AtoQ);
  d_ff Q15_reg (Q_reg_Q[15],,clk,rst,Q_reg_in[15]);
  mux2x1 Q14_sel (Q_reg_in[14], load_Q, Q[14], Q_reg_Q[15]);
  d_ff Q14_reg (Q_reg_Q[14],,clk,rst,Q_reg_in[14]);
  mux2x1 Q13_sel (Q_reg_in[13], load_Q, Q[13], Q_reg_Q[14]);
  d_ff Q13_reg (Q_reg_Q[13],,clk,rst,Q_reg_in[13]);
  mux2x1 Q12_sel (Q_reg_in[12], load_Q, Q[12], Q_reg_Q[13]);
  d_ff Q12_reg (Q_reg_Q[12],,clk,rst,Q_reg_in[12]);
  mux2x1 Q11_sel (Q_reg_in[11], load_Q, Q[11], Q_reg_Q[12]);
  d_ff Q11_reg (Q_reg_Q[11],,clk,rst,Q_reg_in[11]);
  mux2x1 Q10_sel (Q_reg_in[10], load_Q, Q[10], Q_reg_Q[11]);
  d_ff Q10_reg (Q_reg_Q[10],,clk,rst,Q_reg_in[10]);
  mux2x1 Q9_sel (Q_reg_in[9], load_Q, Q[9], Q_reg_Q[10]);
  d_ff Q9_reg (Q_reg_Q[9],,clk,rst,Q_reg_in[9]);
  mux2x1 Q8_sel (Q_reg_in[8], load_Q, Q[8], Q_reg_Q[9]);
  d_ff Q8_reg (Q_reg_Q[8],,clk,rst,Q_reg_in[8]);
  mux2x1 Q7_sel (Q_reg_in[7], load_Q, Q[7], Q_reg_Q[8]);
  d_ff Q7_reg (Q_reg_Q[7],,clk,rst,Q_reg_in[7]);
  mux2x1 Q6_sel (Q_reg_in[6], load_Q, Q[6], Q_reg_Q[7]);
  d_ff Q6_reg (Q_reg_Q[6],,clk,rst,Q_reg_in[6]);
  mux2x1 Q5_sel (Q_reg_in[5], load_Q, Q[5], Q_reg_Q[6]);
  d_ff Q5_reg (Q_reg_Q[5],,clk,rst,Q_reg_in[5]);
  mux2x1 Q4_sel (Q_reg_in[4], load_Q, Q[4], Q_reg_Q[5]);
  d_ff Q4_reg (Q_reg_Q[4],,clk,rst,Q_reg_in[4]);
  mux2x1 Q3_sel (Q_reg_in[3], load_Q, Q[3], Q_reg_Q[4]);
  d_ff Q3_reg (Q_reg_Q[3],,clk,rst,Q_reg_in[3]);
  mux2x1 Q2_sel (Q_reg_in[2], load_Q, Q[2], Q_reg_Q[3]);
  d_ff Q2_reg (Q_reg_Q[2],,clk,rst,Q_reg_in[2]);
  mux2x1 Q1_sel (Q_reg_in[1], load_Q, Q[1], Q_reg_Q[2]);
  d_ff Q1_reg (Q_reg_Q[1],,clk,rst,Q_reg_in[1]);
  mux2x1 Q0_sel (Q_reg_in[0], load_Q, Q[0], Q_reg_Q[1]);
  d_ff Q0_reg (Q_reg_Q[0],,clk,rst,Q_reg_in[0]);
  
  //Q-1 register
  d_ff Q_1_reg (Q_Q_1[0],,clk,rst,Q_reg_Q[0]);
  
  assign Q_Q_1[1]=Q_reg_Q[0];
  assign out = {A_reg_Q, Q_reg_Q};
  
endmodule

