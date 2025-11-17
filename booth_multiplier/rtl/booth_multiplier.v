
module booth_multiplier(op, read, busy, multiplicand, multiplier, clk_in, mrst);
output [31:0] op;
output busy, read;
wire [4:0]cntr_op;
input [15:0] multiplicand, multiplier;
input clk_in, mrst;
wire load_a, add0_sub1, clk, nclk, nrst, start, rst;
wire [15:0]M, alu_out;
wire [1:0]Q_Q_1;

not gen_n0(nrst,mrst);
d_ff cntrl_gen0(start,,clk_in,,nrst);

assign rst = ~(start) | mrst;
assign nclk = ~(clk_in);
assign clk = clk_in&(~cntr_op[4]);
assign read = cntr_op[4];
assign busy = |(cntr_op[3:0]);

xor loadA(load_a,Q_Q_1[1],Q_Q_1[0]);

wire c_rst,nstart;
not n1(nstart, start);
and c_reset (c_rst,rst,nstart);
counter c0(clk,c_rst,cntr_op);

wire Q_Q_1b0;
not n0(Q_Q_1b0, Q_Q_1[0]);
and addsub(add0_sub1, Q_Q_1[1],Q_Q_1b0);

M_register M_reg (M,start,rst,multiplicand);
add_sub alu(op[31:16],M,add0_sub1,alu_out);
A_Q_Q_1 AQQ_1_register(alu_out, load_a, multiplier, start, rst, clk, {1'b1}, Q_Q_1, op);

endmodule
