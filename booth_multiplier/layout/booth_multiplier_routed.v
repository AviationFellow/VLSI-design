module booth_multiplier (busy,
    clk_in,
    mrst,
    read,
    multiplicand,
    multiplier,
    op);
 output busy;
 input clk_in;
 input mrst;
 output read;
 input [15:0] multiplicand;
 input [15:0] multiplier;
 output [31:0] op;

 wire \AQQ_1_register/A0_reg/Qb ;
 wire \AQQ_1_register/A0_reg/_0_ ;
 wire \AQQ_1_register/A0_reg/_1_ ;
 wire \AQQ_1_register/A10_reg/Qb ;
 wire \AQQ_1_register/A10_reg/_0_ ;
 wire \AQQ_1_register/A10_reg/_1_ ;
 wire \AQQ_1_register/A11_reg/Qb ;
 wire \AQQ_1_register/A11_reg/_0_ ;
 wire \AQQ_1_register/A11_reg/_1_ ;
 wire \AQQ_1_register/A12_reg/Qb ;
 wire \AQQ_1_register/A12_reg/_0_ ;
 wire \AQQ_1_register/A12_reg/_1_ ;
 wire \AQQ_1_register/A13_reg/Qb ;
 wire \AQQ_1_register/A13_reg/_0_ ;
 wire \AQQ_1_register/A13_reg/_1_ ;
 wire \AQQ_1_register/A14_reg/Qb ;
 wire \AQQ_1_register/A14_reg/_0_ ;
 wire \AQQ_1_register/A14_reg/_1_ ;
 wire \AQQ_1_register/A15_reg/Qb ;
 wire \AQQ_1_register/A15_reg/_0_ ;
 wire \AQQ_1_register/A15_reg/_1_ ;
 wire \AQQ_1_register/A1_reg/Qb ;
 wire \AQQ_1_register/A1_reg/_0_ ;
 wire \AQQ_1_register/A1_reg/_1_ ;
 wire \AQQ_1_register/A2_reg/Qb ;
 wire \AQQ_1_register/A2_reg/_0_ ;
 wire \AQQ_1_register/A2_reg/_1_ ;
 wire \AQQ_1_register/A3_reg/Qb ;
 wire \AQQ_1_register/A3_reg/_0_ ;
 wire \AQQ_1_register/A3_reg/_1_ ;
 wire \AQQ_1_register/A4_reg/Qb ;
 wire \AQQ_1_register/A4_reg/_0_ ;
 wire \AQQ_1_register/A4_reg/_1_ ;
 wire \AQQ_1_register/A5_reg/Qb ;
 wire \AQQ_1_register/A5_reg/_0_ ;
 wire \AQQ_1_register/A5_reg/_1_ ;
 wire \AQQ_1_register/A6_reg/Qb ;
 wire \AQQ_1_register/A6_reg/_0_ ;
 wire \AQQ_1_register/A6_reg/_1_ ;
 wire \AQQ_1_register/A7_reg/Qb ;
 wire \AQQ_1_register/A7_reg/_0_ ;
 wire \AQQ_1_register/A7_reg/_1_ ;
 wire \AQQ_1_register/A8_reg/Qb ;
 wire \AQQ_1_register/A8_reg/_0_ ;
 wire \AQQ_1_register/A8_reg/_1_ ;
 wire \AQQ_1_register/A9_reg/Qb ;
 wire \AQQ_1_register/A9_reg/_0_ ;
 wire \AQQ_1_register/A9_reg/_1_ ;
 wire \AQQ_1_register/AtoQ ;
 wire \AQQ_1_register/Q0_reg/Qb ;
 wire \AQQ_1_register/Q0_reg/_0_ ;
 wire \AQQ_1_register/Q0_reg/_1_ ;
 wire \AQQ_1_register/Q10_reg/Qb ;
 wire \AQQ_1_register/Q10_reg/_0_ ;
 wire \AQQ_1_register/Q10_reg/_1_ ;
 wire \AQQ_1_register/Q11_reg/Qb ;
 wire \AQQ_1_register/Q11_reg/_0_ ;
 wire \AQQ_1_register/Q11_reg/_1_ ;
 wire \AQQ_1_register/Q12_reg/Qb ;
 wire \AQQ_1_register/Q12_reg/_0_ ;
 wire \AQQ_1_register/Q12_reg/_1_ ;
 wire \AQQ_1_register/Q13_reg/Qb ;
 wire \AQQ_1_register/Q13_reg/_0_ ;
 wire \AQQ_1_register/Q13_reg/_1_ ;
 wire \AQQ_1_register/Q14_reg/Qb ;
 wire \AQQ_1_register/Q14_reg/_0_ ;
 wire \AQQ_1_register/Q14_reg/_1_ ;
 wire \AQQ_1_register/Q15_reg/Qb ;
 wire \AQQ_1_register/Q15_reg/_0_ ;
 wire \AQQ_1_register/Q15_reg/_1_ ;
 wire \AQQ_1_register/Q1_reg/Qb ;
 wire \AQQ_1_register/Q1_reg/_0_ ;
 wire \AQQ_1_register/Q1_reg/_1_ ;
 wire \AQQ_1_register/Q2_reg/Qb ;
 wire \AQQ_1_register/Q2_reg/_0_ ;
 wire \AQQ_1_register/Q2_reg/_1_ ;
 wire \AQQ_1_register/Q3_reg/Qb ;
 wire \AQQ_1_register/Q3_reg/_0_ ;
 wire \AQQ_1_register/Q3_reg/_1_ ;
 wire \AQQ_1_register/Q4_reg/Qb ;
 wire \AQQ_1_register/Q4_reg/_0_ ;
 wire \AQQ_1_register/Q4_reg/_1_ ;
 wire \AQQ_1_register/Q5_reg/Qb ;
 wire \AQQ_1_register/Q5_reg/_0_ ;
 wire \AQQ_1_register/Q5_reg/_1_ ;
 wire \AQQ_1_register/Q6_reg/Qb ;
 wire \AQQ_1_register/Q6_reg/_0_ ;
 wire \AQQ_1_register/Q6_reg/_1_ ;
 wire \AQQ_1_register/Q7_reg/Qb ;
 wire \AQQ_1_register/Q7_reg/_0_ ;
 wire \AQQ_1_register/Q7_reg/_1_ ;
 wire \AQQ_1_register/Q8_reg/Qb ;
 wire \AQQ_1_register/Q8_reg/_0_ ;
 wire \AQQ_1_register/Q8_reg/_1_ ;
 wire \AQQ_1_register/Q9_reg/Qb ;
 wire \AQQ_1_register/Q9_reg/_0_ ;
 wire \AQQ_1_register/Q9_reg/_1_ ;
 wire \AQQ_1_register/Q_1_reg/Qb ;
 wire \AQQ_1_register/Q_1_reg/_0_ ;
 wire \AQQ_1_register/Q_1_reg/_1_ ;
 wire \AQQ_1_register/clk ;
 wire \M_reg/genblk1[0].d_ureg0/Qb ;
 wire \M_reg/genblk1[0].d_ureg0/_0_ ;
 wire \M_reg/genblk1[0].d_ureg0/_1_ ;
 wire \M_reg/genblk1[10].d_ureg0/Qb ;
 wire \M_reg/genblk1[10].d_ureg0/_0_ ;
 wire \M_reg/genblk1[10].d_ureg0/_1_ ;
 wire \M_reg/genblk1[11].d_ureg0/Qb ;
 wire \M_reg/genblk1[11].d_ureg0/_0_ ;
 wire \M_reg/genblk1[11].d_ureg0/_1_ ;
 wire \M_reg/genblk1[12].d_ureg0/Qb ;
 wire \M_reg/genblk1[12].d_ureg0/_0_ ;
 wire \M_reg/genblk1[12].d_ureg0/_1_ ;
 wire \M_reg/genblk1[13].d_ureg0/Qb ;
 wire \M_reg/genblk1[13].d_ureg0/_0_ ;
 wire \M_reg/genblk1[13].d_ureg0/_1_ ;
 wire \M_reg/genblk1[14].d_ureg0/Qb ;
 wire \M_reg/genblk1[14].d_ureg0/_0_ ;
 wire \M_reg/genblk1[14].d_ureg0/_1_ ;
 wire \M_reg/genblk1[15].d_ureg0/Qb ;
 wire \M_reg/genblk1[15].d_ureg0/_0_ ;
 wire \M_reg/genblk1[15].d_ureg0/_1_ ;
 wire \M_reg/genblk1[1].d_ureg0/Qb ;
 wire \M_reg/genblk1[1].d_ureg0/_0_ ;
 wire \M_reg/genblk1[1].d_ureg0/_1_ ;
 wire \M_reg/genblk1[2].d_ureg0/Qb ;
 wire \M_reg/genblk1[2].d_ureg0/_0_ ;
 wire \M_reg/genblk1[2].d_ureg0/_1_ ;
 wire \M_reg/genblk1[3].d_ureg0/Qb ;
 wire \M_reg/genblk1[3].d_ureg0/_0_ ;
 wire \M_reg/genblk1[3].d_ureg0/_1_ ;
 wire \M_reg/genblk1[4].d_ureg0/Qb ;
 wire \M_reg/genblk1[4].d_ureg0/_0_ ;
 wire \M_reg/genblk1[4].d_ureg0/_1_ ;
 wire \M_reg/genblk1[5].d_ureg0/Qb ;
 wire \M_reg/genblk1[5].d_ureg0/_0_ ;
 wire \M_reg/genblk1[5].d_ureg0/_1_ ;
 wire \M_reg/genblk1[6].d_ureg0/Qb ;
 wire \M_reg/genblk1[6].d_ureg0/_0_ ;
 wire \M_reg/genblk1[6].d_ureg0/_1_ ;
 wire \M_reg/genblk1[7].d_ureg0/Qb ;
 wire \M_reg/genblk1[7].d_ureg0/_0_ ;
 wire \M_reg/genblk1[7].d_ureg0/_1_ ;
 wire \M_reg/genblk1[8].d_ureg0/Qb ;
 wire \M_reg/genblk1[8].d_ureg0/_0_ ;
 wire \M_reg/genblk1[8].d_ureg0/_1_ ;
 wire \M_reg/genblk1[9].d_ureg0/Qb ;
 wire \M_reg/genblk1[9].d_ureg0/_0_ ;
 wire \M_reg/genblk1[9].d_ureg0/_1_ ;
 wire _0_;
 wire add0_sub1;
 wire \alu/add_sub_module/cout ;
 wire \c0/c0/_0_ ;
 wire \c0/c0/_1_ ;
 wire \c0/c1/_0_ ;
 wire \c0/c1/_1_ ;
 wire \c0/c2/_0_ ;
 wire \c0/c2/_1_ ;
 wire \c0/c3/_0_ ;
 wire \c0/c3/_1_ ;
 wire \c0/c4/_0_ ;
 wire \c0/c4/_1_ ;
 wire c_rst;
 wire clk;
 wire clk_in_regs;
 wire clk_regs;
 wire \clknet_0_AQQ_1_register/clk ;
 wire clknet_0_clk;
 wire clknet_0_clk_in;
 wire clknet_0_clk_in_regs;
 wire clknet_0_clk_regs;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_0__leaf_clk_in;
 wire clknet_1_0__leaf_clk_in_regs;
 wire clknet_1_0__leaf_clk_regs;
 wire clknet_1_1__leaf_clk_in_regs;
 wire clknet_1_1__leaf_clk_regs;
 wire \clknet_3_0__leaf_AQQ_1_register/clk ;
 wire \clknet_3_1__leaf_AQQ_1_register/clk ;
 wire \clknet_3_2__leaf_AQQ_1_register/clk ;
 wire \clknet_3_3__leaf_AQQ_1_register/clk ;
 wire \clknet_3_4__leaf_AQQ_1_register/clk ;
 wire \clknet_3_5__leaf_AQQ_1_register/clk ;
 wire \clknet_3_6__leaf_AQQ_1_register/clk ;
 wire \clknet_3_7__leaf_AQQ_1_register/clk ;
 wire \cntrl_gen0/Qb ;
 wire \cntrl_gen0/_0_ ;
 wire \cntrl_gen0/_1_ ;
 wire \cntrl_gen0/rst ;
 wire delaynet_0_clk;
 wire delaynet_1_clk;
 wire delaynet_2_clk;
 wire delaynet_3_clk;
 wire delaynet_4_clk;
 wire delaynet_5_clk;
 wire delaynet_6_clk;
 wire delaynet_7_clk;
 wire delaynet_8_clk;
 wire load_a;
 wire nrst;
 wire rst;
 wire start;
 wire [15:0] \AQQ_1_register/A_reg_in ;
 wire [15:0] \AQQ_1_register/Q_reg_in ;
 wire [15:0] M;
 wire [1:0] Q_Q_1;
 wire [15:0] \alu/add_sub_module/Ga ;
 wire [15:0] \alu/add_sub_module/Gb ;
 wire [15:0] \alu/add_sub_module/Gc ;
 wire [15:0] \alu/add_sub_module/Gd ;
 wire [15:0] \alu/add_sub_module/Gz ;
 wire [15:0] \alu/add_sub_module/Pa ;
 wire [15:0] \alu/add_sub_module/Pb ;
 wire [15:0] \alu/add_sub_module/Pc ;
 wire [15:0] \alu/add_sub_module/Pd ;
 wire [15:0] \alu/add_sub_module/Pz ;
 wire [15:0] \alu/b_f ;
 wire [15:0] alu_out;
 wire [4:0] \c0/d_in ;
 wire [4:0] cntr_op;

 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A0_reg/_2_  (.A(\AQQ_1_register/A_reg_in [0]),
    .Y(\AQQ_1_register/A0_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A0_reg/_3_  (.A(\clknet_3_2__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/A0_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/A0_reg/_4_  (.CLK_N(\clknet_3_2__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/A_reg_in [0]),
    .RESET_B(rst),
    .Q(op[16]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/A0_reg/_5_  (.CLK(\AQQ_1_register/A0_reg/_1_ ),
    .D(\AQQ_1_register/A0_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/A0_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/A0_sel/_0_  (.A0(op[17]),
    .A1(alu_out[1]),
    .S(load_a),
    .X(\AQQ_1_register/A_reg_in [0]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A10_reg/_2_  (.A(\AQQ_1_register/A_reg_in [10]),
    .Y(\AQQ_1_register/A10_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A10_reg/_3_  (.A(\clknet_3_4__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/A10_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/A10_reg/_4_  (.CLK_N(\clknet_3_4__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/A_reg_in [10]),
    .RESET_B(rst),
    .Q(op[26]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/A10_reg/_5_  (.CLK(\AQQ_1_register/A10_reg/_1_ ),
    .D(\AQQ_1_register/A10_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/A10_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/A10_sel/_0_  (.A0(op[27]),
    .A1(alu_out[11]),
    .S(load_a),
    .X(\AQQ_1_register/A_reg_in [10]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A11_reg/_2_  (.A(\AQQ_1_register/A_reg_in [11]),
    .Y(\AQQ_1_register/A11_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A11_reg/_3_  (.A(\clknet_3_5__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/A11_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/A11_reg/_4_  (.CLK_N(\clknet_3_5__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/A_reg_in [11]),
    .RESET_B(rst),
    .Q(op[27]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/A11_reg/_5_  (.CLK(\AQQ_1_register/A11_reg/_1_ ),
    .D(\AQQ_1_register/A11_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/A11_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/A11_sel/_0_  (.A0(op[28]),
    .A1(alu_out[12]),
    .S(load_a),
    .X(\AQQ_1_register/A_reg_in [11]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A12_reg/_2_  (.A(\AQQ_1_register/A_reg_in [12]),
    .Y(\AQQ_1_register/A12_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A12_reg/_3_  (.A(\clknet_3_4__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/A12_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/A12_reg/_4_  (.CLK_N(\clknet_3_5__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/A_reg_in [12]),
    .RESET_B(rst),
    .Q(op[28]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/A12_reg/_5_  (.CLK(\AQQ_1_register/A12_reg/_1_ ),
    .D(\AQQ_1_register/A12_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/A12_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/A12_sel/_0_  (.A0(op[29]),
    .A1(alu_out[13]),
    .S(load_a),
    .X(\AQQ_1_register/A_reg_in [12]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A13_reg/_2_  (.A(\AQQ_1_register/A_reg_in [13]),
    .Y(\AQQ_1_register/A13_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A13_reg/_3_  (.A(\clknet_3_5__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/A13_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/A13_reg/_4_  (.CLK_N(\clknet_3_4__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/A_reg_in [13]),
    .RESET_B(rst),
    .Q(op[29]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/A13_reg/_5_  (.CLK(\AQQ_1_register/A13_reg/_1_ ),
    .D(\AQQ_1_register/A13_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/A13_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/A13_sel/_0_  (.A0(op[30]),
    .A1(alu_out[14]),
    .S(load_a),
    .X(\AQQ_1_register/A_reg_in [13]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A14_reg/_2_  (.A(\AQQ_1_register/A_reg_in [14]),
    .Y(\AQQ_1_register/A14_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A14_reg/_3_  (.A(\clknet_3_4__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/A14_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/A14_reg/_4_  (.CLK_N(\clknet_3_4__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/A_reg_in [14]),
    .RESET_B(rst),
    .Q(op[30]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/A14_reg/_5_  (.CLK(\AQQ_1_register/A14_reg/_1_ ),
    .D(\AQQ_1_register/A14_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/A14_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/A14_sel/_0_  (.A0(op[31]),
    .A1(alu_out[15]),
    .S(load_a),
    .X(\AQQ_1_register/A_reg_in [14]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A15_reg/_2_  (.A(\AQQ_1_register/A_reg_in [15]),
    .Y(\AQQ_1_register/A15_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A15_reg/_3_  (.A(\clknet_3_4__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/A15_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/A15_reg/_4_  (.CLK_N(\clknet_3_4__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/A_reg_in [15]),
    .RESET_B(rst),
    .Q(op[31]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/A15_reg/_5_  (.CLK(\AQQ_1_register/A15_reg/_1_ ),
    .D(\AQQ_1_register/A15_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/A15_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/A15_sel/_0_  (.A0(op[31]),
    .A1(alu_out[15]),
    .S(load_a),
    .X(\AQQ_1_register/A_reg_in [15]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A1_reg/_2_  (.A(\AQQ_1_register/A_reg_in [1]),
    .Y(\AQQ_1_register/A1_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A1_reg/_3_  (.A(\clknet_3_2__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/A1_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/A1_reg/_4_  (.CLK_N(\clknet_3_2__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/A_reg_in [1]),
    .RESET_B(rst),
    .Q(op[17]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/A1_reg/_5_  (.CLK(\AQQ_1_register/A1_reg/_1_ ),
    .D(\AQQ_1_register/A1_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/A1_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/A1_sel/_0_  (.A0(op[18]),
    .A1(alu_out[2]),
    .S(load_a),
    .X(\AQQ_1_register/A_reg_in [1]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A2_reg/_2_  (.A(\AQQ_1_register/A_reg_in [2]),
    .Y(\AQQ_1_register/A2_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A2_reg/_3_  (.A(\clknet_3_2__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/A2_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/A2_reg/_4_  (.CLK_N(\clknet_3_2__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/A_reg_in [2]),
    .RESET_B(rst),
    .Q(op[18]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/A2_reg/_5_  (.CLK(\AQQ_1_register/A2_reg/_1_ ),
    .D(\AQQ_1_register/A2_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/A2_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/A2_sel/_0_  (.A0(op[19]),
    .A1(alu_out[3]),
    .S(load_a),
    .X(\AQQ_1_register/A_reg_in [2]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A3_reg/_2_  (.A(\AQQ_1_register/A_reg_in [3]),
    .Y(\AQQ_1_register/A3_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A3_reg/_3_  (.A(\clknet_3_0__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/A3_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/A3_reg/_4_  (.CLK_N(\clknet_3_0__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/A_reg_in [3]),
    .RESET_B(rst),
    .Q(op[19]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/A3_reg/_5_  (.CLK(\AQQ_1_register/A3_reg/_1_ ),
    .D(\AQQ_1_register/A3_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/A3_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/A3_sel/_0_  (.A0(op[20]),
    .A1(alu_out[4]),
    .S(load_a),
    .X(\AQQ_1_register/A_reg_in [3]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A4_reg/_2_  (.A(\AQQ_1_register/A_reg_in [4]),
    .Y(\AQQ_1_register/A4_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A4_reg/_3_  (.A(\clknet_3_0__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/A4_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/A4_reg/_4_  (.CLK_N(\clknet_3_0__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/A_reg_in [4]),
    .RESET_B(rst),
    .Q(op[20]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/A4_reg/_5_  (.CLK(\AQQ_1_register/A4_reg/_1_ ),
    .D(\AQQ_1_register/A4_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/A4_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/A4_sel/_0_  (.A0(op[21]),
    .A1(alu_out[5]),
    .S(load_a),
    .X(\AQQ_1_register/A_reg_in [4]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A5_reg/_2_  (.A(\AQQ_1_register/A_reg_in [5]),
    .Y(\AQQ_1_register/A5_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A5_reg/_3_  (.A(\clknet_3_0__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/A5_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/A5_reg/_4_  (.CLK_N(\clknet_3_0__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/A_reg_in [5]),
    .RESET_B(rst),
    .Q(op[21]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/A5_reg/_5_  (.CLK(\AQQ_1_register/A5_reg/_1_ ),
    .D(\AQQ_1_register/A5_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/A5_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/A5_sel/_0_  (.A0(op[22]),
    .A1(alu_out[6]),
    .S(load_a),
    .X(\AQQ_1_register/A_reg_in [5]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A6_reg/_2_  (.A(\AQQ_1_register/A_reg_in [6]),
    .Y(\AQQ_1_register/A6_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A6_reg/_3_  (.A(\clknet_3_0__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/A6_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/A6_reg/_4_  (.CLK_N(\clknet_3_0__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/A_reg_in [6]),
    .RESET_B(rst),
    .Q(op[22]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/A6_reg/_5_  (.CLK(\AQQ_1_register/A6_reg/_1_ ),
    .D(\AQQ_1_register/A6_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/A6_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/A6_sel/_0_  (.A0(op[23]),
    .A1(alu_out[7]),
    .S(load_a),
    .X(\AQQ_1_register/A_reg_in [6]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A7_reg/_2_  (.A(\AQQ_1_register/A_reg_in [7]),
    .Y(\AQQ_1_register/A7_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A7_reg/_3_  (.A(\clknet_3_1__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/A7_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/A7_reg/_4_  (.CLK_N(\clknet_3_1__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/A_reg_in [7]),
    .RESET_B(rst),
    .Q(op[23]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/A7_reg/_5_  (.CLK(\AQQ_1_register/A7_reg/_1_ ),
    .D(\AQQ_1_register/A7_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/A7_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/A7_sel/_0_  (.A0(op[24]),
    .A1(alu_out[8]),
    .S(load_a),
    .X(\AQQ_1_register/A_reg_in [7]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A8_reg/_2_  (.A(\AQQ_1_register/A_reg_in [8]),
    .Y(\AQQ_1_register/A8_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A8_reg/_3_  (.A(\clknet_3_1__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/A8_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/A8_reg/_4_  (.CLK_N(\clknet_3_1__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/A_reg_in [8]),
    .RESET_B(rst),
    .Q(op[24]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/A8_reg/_5_  (.CLK(\AQQ_1_register/A8_reg/_1_ ),
    .D(\AQQ_1_register/A8_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/A8_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/A8_sel/_0_  (.A0(op[25]),
    .A1(alu_out[9]),
    .S(load_a),
    .X(\AQQ_1_register/A_reg_in [8]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A9_reg/_2_  (.A(\AQQ_1_register/A_reg_in [9]),
    .Y(\AQQ_1_register/A9_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/A9_reg/_3_  (.A(\clknet_3_1__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/A9_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/A9_reg/_4_  (.CLK_N(\clknet_3_1__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/A_reg_in [9]),
    .RESET_B(rst),
    .Q(op[25]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/A9_reg/_5_  (.CLK(\AQQ_1_register/A9_reg/_1_ ),
    .D(\AQQ_1_register/A9_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/A9_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/A9_sel/_0_  (.A0(op[26]),
    .A1(alu_out[10]),
    .S(load_a),
    .X(\AQQ_1_register/A_reg_in [9]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q0_reg/_2_  (.A(\AQQ_1_register/Q_reg_in [0]),
    .Y(\AQQ_1_register/Q0_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q0_reg/_3_  (.A(\clknet_3_5__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/Q0_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/Q0_reg/_4_  (.CLK_N(\clknet_3_5__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/Q_reg_in [0]),
    .RESET_B(rst),
    .Q(op[0]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/Q0_reg/_5_  (.CLK(\AQQ_1_register/Q0_reg/_1_ ),
    .D(\AQQ_1_register/Q0_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/Q0_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/Q0_sel/_0_  (.A0(op[1]),
    .A1(multiplier[0]),
    .S(start),
    .X(\AQQ_1_register/Q_reg_in [0]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q10_reg/_2_  (.A(\AQQ_1_register/Q_reg_in [10]),
    .Y(\AQQ_1_register/Q10_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q10_reg/_3_  (.A(\clknet_3_6__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/Q10_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/Q10_reg/_4_  (.CLK_N(\clknet_3_6__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/Q_reg_in [10]),
    .RESET_B(rst),
    .Q(op[10]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/Q10_reg/_5_  (.CLK(\AQQ_1_register/Q10_reg/_1_ ),
    .D(\AQQ_1_register/Q10_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/Q10_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/Q10_sel/_0_  (.A0(op[11]),
    .A1(multiplier[10]),
    .S(start),
    .X(\AQQ_1_register/Q_reg_in [10]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q11_reg/_2_  (.A(\AQQ_1_register/Q_reg_in [11]),
    .Y(\AQQ_1_register/Q11_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q11_reg/_3_  (.A(\clknet_3_3__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/Q11_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/Q11_reg/_4_  (.CLK_N(\clknet_3_6__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/Q_reg_in [11]),
    .RESET_B(rst),
    .Q(op[11]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/Q11_reg/_5_  (.CLK(\AQQ_1_register/Q11_reg/_1_ ),
    .D(\AQQ_1_register/Q11_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/Q11_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/Q11_sel/_0_  (.A0(op[12]),
    .A1(multiplier[11]),
    .S(start),
    .X(\AQQ_1_register/Q_reg_in [11]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q12_reg/_2_  (.A(\AQQ_1_register/Q_reg_in [12]),
    .Y(\AQQ_1_register/Q12_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q12_reg/_3_  (.A(\clknet_3_3__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/Q12_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/Q12_reg/_4_  (.CLK_N(\clknet_3_3__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/Q_reg_in [12]),
    .RESET_B(rst),
    .Q(op[12]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/Q12_reg/_5_  (.CLK(\AQQ_1_register/Q12_reg/_1_ ),
    .D(\AQQ_1_register/Q12_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/Q12_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/Q12_sel/_0_  (.A0(op[13]),
    .A1(multiplier[12]),
    .S(start),
    .X(\AQQ_1_register/Q_reg_in [12]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q13_reg/_2_  (.A(\AQQ_1_register/Q_reg_in [13]),
    .Y(\AQQ_1_register/Q13_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q13_reg/_3_  (.A(\clknet_3_3__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/Q13_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/Q13_reg/_4_  (.CLK_N(\clknet_3_3__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/Q_reg_in [13]),
    .RESET_B(rst),
    .Q(op[13]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/Q13_reg/_5_  (.CLK(\AQQ_1_register/Q13_reg/_1_ ),
    .D(\AQQ_1_register/Q13_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/Q13_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/Q13_sel/_0_  (.A0(op[14]),
    .A1(multiplier[13]),
    .S(start),
    .X(\AQQ_1_register/Q_reg_in [13]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q14_reg/_2_  (.A(\AQQ_1_register/Q_reg_in [14]),
    .Y(\AQQ_1_register/Q14_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q14_reg/_3_  (.A(\clknet_3_7__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/Q14_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/Q14_reg/_4_  (.CLK_N(\clknet_3_6__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/Q_reg_in [14]),
    .RESET_B(rst),
    .Q(op[14]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/Q14_reg/_5_  (.CLK(\AQQ_1_register/Q14_reg/_1_ ),
    .D(\AQQ_1_register/Q14_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/Q14_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/Q14_sel/_0_  (.A0(op[15]),
    .A1(multiplier[14]),
    .S(start),
    .X(\AQQ_1_register/Q_reg_in [14]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q15_reg/_2_  (.A(\AQQ_1_register/Q_reg_in [15]),
    .Y(\AQQ_1_register/Q15_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q15_reg/_3_  (.A(\clknet_3_7__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/Q15_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/Q15_reg/_4_  (.CLK_N(\clknet_3_6__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/Q_reg_in [15]),
    .RESET_B(rst),
    .Q(op[15]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/Q15_reg/_5_  (.CLK(\AQQ_1_register/Q15_reg/_1_ ),
    .D(\AQQ_1_register/Q15_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/Q15_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/Q15_sel/_0_  (.A0(\AQQ_1_register/AtoQ ),
    .A1(multiplier[15]),
    .S(start),
    .X(\AQQ_1_register/Q_reg_in [15]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q1_reg/_2_  (.A(\AQQ_1_register/Q_reg_in [1]),
    .Y(\AQQ_1_register/Q1_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q1_reg/_3_  (.A(\clknet_3_7__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/Q1_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/Q1_reg/_4_  (.CLK_N(\clknet_3_7__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/Q_reg_in [1]),
    .RESET_B(rst),
    .Q(op[1]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/Q1_reg/_5_  (.CLK(\AQQ_1_register/Q1_reg/_1_ ),
    .D(\AQQ_1_register/Q1_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/Q1_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/Q1_sel/_0_  (.A0(op[2]),
    .A1(multiplier[1]),
    .S(start),
    .X(\AQQ_1_register/Q_reg_in [1]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q2_reg/_2_  (.A(\AQQ_1_register/Q_reg_in [2]),
    .Y(\AQQ_1_register/Q2_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q2_reg/_3_  (.A(\clknet_3_6__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/Q2_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/Q2_reg/_4_  (.CLK_N(\clknet_3_6__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/Q_reg_in [2]),
    .RESET_B(rst),
    .Q(op[2]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/Q2_reg/_5_  (.CLK(\AQQ_1_register/Q2_reg/_1_ ),
    .D(\AQQ_1_register/Q2_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/Q2_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/Q2_sel/_0_  (.A0(op[3]),
    .A1(multiplier[2]),
    .S(start),
    .X(\AQQ_1_register/Q_reg_in [2]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q3_reg/_2_  (.A(\AQQ_1_register/Q_reg_in [3]),
    .Y(\AQQ_1_register/Q3_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q3_reg/_3_  (.A(\clknet_3_7__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/Q3_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/Q3_reg/_4_  (.CLK_N(\clknet_3_7__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/Q_reg_in [3]),
    .RESET_B(rst),
    .Q(op[3]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/Q3_reg/_5_  (.CLK(\AQQ_1_register/Q3_reg/_1_ ),
    .D(\AQQ_1_register/Q3_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/Q3_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/Q3_sel/_0_  (.A0(op[4]),
    .A1(multiplier[3]),
    .S(start),
    .X(\AQQ_1_register/Q_reg_in [3]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q4_reg/_2_  (.A(\AQQ_1_register/Q_reg_in [4]),
    .Y(\AQQ_1_register/Q4_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q4_reg/_3_  (.A(\clknet_3_2__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/Q4_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/Q4_reg/_4_  (.CLK_N(\clknet_3_2__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/Q_reg_in [4]),
    .RESET_B(rst),
    .Q(op[4]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/Q4_reg/_5_  (.CLK(\AQQ_1_register/Q4_reg/_1_ ),
    .D(\AQQ_1_register/Q4_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/Q4_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/Q4_sel/_0_  (.A0(op[5]),
    .A1(multiplier[4]),
    .S(start),
    .X(\AQQ_1_register/Q_reg_in [4]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q5_reg/_2_  (.A(\AQQ_1_register/Q_reg_in [5]),
    .Y(\AQQ_1_register/Q5_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q5_reg/_3_  (.A(\clknet_3_2__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/Q5_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/Q5_reg/_4_  (.CLK_N(\clknet_3_2__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/Q_reg_in [5]),
    .RESET_B(rst),
    .Q(op[5]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/Q5_reg/_5_  (.CLK(\AQQ_1_register/Q5_reg/_1_ ),
    .D(\AQQ_1_register/Q5_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/Q5_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/Q5_sel/_0_  (.A0(op[6]),
    .A1(multiplier[5]),
    .S(start),
    .X(\AQQ_1_register/Q_reg_in [5]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q6_reg/_2_  (.A(\AQQ_1_register/Q_reg_in [6]),
    .Y(\AQQ_1_register/Q6_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q6_reg/_3_  (.A(\clknet_3_2__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/Q6_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/Q6_reg/_4_  (.CLK_N(\clknet_3_3__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/Q_reg_in [6]),
    .RESET_B(rst),
    .Q(op[6]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/Q6_reg/_5_  (.CLK(\AQQ_1_register/Q6_reg/_1_ ),
    .D(\AQQ_1_register/Q6_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/Q6_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/Q6_sel/_0_  (.A0(op[7]),
    .A1(multiplier[6]),
    .S(start),
    .X(\AQQ_1_register/Q_reg_in [6]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q7_reg/_2_  (.A(\AQQ_1_register/Q_reg_in [7]),
    .Y(\AQQ_1_register/Q7_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q7_reg/_3_  (.A(\clknet_3_2__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/Q7_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/Q7_reg/_4_  (.CLK_N(\clknet_3_3__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/Q_reg_in [7]),
    .RESET_B(rst),
    .Q(op[7]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/Q7_reg/_5_  (.CLK(\AQQ_1_register/Q7_reg/_1_ ),
    .D(\AQQ_1_register/Q7_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/Q7_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/Q7_sel/_0_  (.A0(op[8]),
    .A1(multiplier[7]),
    .S(start),
    .X(\AQQ_1_register/Q_reg_in [7]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q8_reg/_2_  (.A(\AQQ_1_register/Q_reg_in [8]),
    .Y(\AQQ_1_register/Q8_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q8_reg/_3_  (.A(\clknet_3_7__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/Q8_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/Q8_reg/_4_  (.CLK_N(\clknet_3_7__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/Q_reg_in [8]),
    .RESET_B(rst),
    .Q(op[8]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/Q8_reg/_5_  (.CLK(\AQQ_1_register/Q8_reg/_1_ ),
    .D(\AQQ_1_register/Q8_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/Q8_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/Q8_sel/_0_  (.A0(op[9]),
    .A1(multiplier[8]),
    .S(start),
    .X(\AQQ_1_register/Q_reg_in [8]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q9_reg/_2_  (.A(\AQQ_1_register/Q_reg_in [9]),
    .Y(\AQQ_1_register/Q9_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q9_reg/_3_  (.A(\clknet_3_7__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/Q9_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/Q9_reg/_4_  (.CLK_N(\clknet_3_7__leaf_AQQ_1_register/clk ),
    .D(\AQQ_1_register/Q_reg_in [9]),
    .RESET_B(rst),
    .Q(op[9]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/Q9_reg/_5_  (.CLK(\AQQ_1_register/Q9_reg/_1_ ),
    .D(\AQQ_1_register/Q9_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/Q9_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/Q9_sel/_0_  (.A0(op[10]),
    .A1(multiplier[9]),
    .S(start),
    .X(\AQQ_1_register/Q_reg_in [9]));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q_1_reg/_2_  (.A(op[0]),
    .Y(\AQQ_1_register/Q_1_reg/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \AQQ_1_register/Q_1_reg/_3_  (.A(\clknet_3_5__leaf_AQQ_1_register/clk ),
    .Y(\AQQ_1_register/Q_1_reg/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \AQQ_1_register/Q_1_reg/_4_  (.CLK_N(\clknet_3_5__leaf_AQQ_1_register/clk ),
    .D(op[0]),
    .RESET_B(rst),
    .Q(Q_Q_1[0]));
 sky130_fd_sc_hd__dfstp_2 \AQQ_1_register/Q_1_reg/_5_  (.CLK(\AQQ_1_register/Q_1_reg/_1_ ),
    .D(\AQQ_1_register/Q_1_reg/_0_ ),
    .SET_B(rst),
    .Q(\AQQ_1_register/Q_1_reg/Qb ));
 sky130_fd_sc_hd__mux2_1 \AQQ_1_register/_0_  (.A0(op[16]),
    .A1(alu_out[0]),
    .S(load_a),
    .X(\AQQ_1_register/AtoQ ));
 sky130_fd_sc_hd__and2_0 \AQQ_1_register/_1_  (.A(clknet_1_0__leaf_clk),
    .B(_0_),
    .X(\AQQ_1_register/clk ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[0].d_ureg0/_2_  (.A(multiplicand[0]),
    .Y(\M_reg/genblk1[0].d_ureg0/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[0].d_ureg0/_3_  (.A(start),
    .Y(\M_reg/genblk1[0].d_ureg0/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \M_reg/genblk1[0].d_ureg0/_4_  (.CLK_N(start),
    .D(multiplicand[0]),
    .RESET_B(rst),
    .Q(M[0]));
 sky130_fd_sc_hd__dfstp_2 \M_reg/genblk1[0].d_ureg0/_5_  (.CLK(\M_reg/genblk1[0].d_ureg0/_1_ ),
    .D(\M_reg/genblk1[0].d_ureg0/_0_ ),
    .SET_B(rst),
    .Q(\M_reg/genblk1[0].d_ureg0/Qb ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[10].d_ureg0/_2_  (.A(multiplicand[10]),
    .Y(\M_reg/genblk1[10].d_ureg0/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[10].d_ureg0/_3_  (.A(start),
    .Y(\M_reg/genblk1[10].d_ureg0/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \M_reg/genblk1[10].d_ureg0/_4_  (.CLK_N(start),
    .D(multiplicand[10]),
    .RESET_B(rst),
    .Q(M[10]));
 sky130_fd_sc_hd__dfstp_2 \M_reg/genblk1[10].d_ureg0/_5_  (.CLK(\M_reg/genblk1[10].d_ureg0/_1_ ),
    .D(\M_reg/genblk1[10].d_ureg0/_0_ ),
    .SET_B(rst),
    .Q(\M_reg/genblk1[10].d_ureg0/Qb ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[11].d_ureg0/_2_  (.A(multiplicand[11]),
    .Y(\M_reg/genblk1[11].d_ureg0/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[11].d_ureg0/_3_  (.A(start),
    .Y(\M_reg/genblk1[11].d_ureg0/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \M_reg/genblk1[11].d_ureg0/_4_  (.CLK_N(start),
    .D(multiplicand[11]),
    .RESET_B(rst),
    .Q(M[11]));
 sky130_fd_sc_hd__dfstp_2 \M_reg/genblk1[11].d_ureg0/_5_  (.CLK(\M_reg/genblk1[11].d_ureg0/_1_ ),
    .D(\M_reg/genblk1[11].d_ureg0/_0_ ),
    .SET_B(rst),
    .Q(\M_reg/genblk1[11].d_ureg0/Qb ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[12].d_ureg0/_2_  (.A(multiplicand[12]),
    .Y(\M_reg/genblk1[12].d_ureg0/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[12].d_ureg0/_3_  (.A(start),
    .Y(\M_reg/genblk1[12].d_ureg0/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \M_reg/genblk1[12].d_ureg0/_4_  (.CLK_N(start),
    .D(multiplicand[12]),
    .RESET_B(rst),
    .Q(M[12]));
 sky130_fd_sc_hd__dfstp_2 \M_reg/genblk1[12].d_ureg0/_5_  (.CLK(\M_reg/genblk1[12].d_ureg0/_1_ ),
    .D(\M_reg/genblk1[12].d_ureg0/_0_ ),
    .SET_B(rst),
    .Q(\M_reg/genblk1[12].d_ureg0/Qb ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[13].d_ureg0/_2_  (.A(multiplicand[13]),
    .Y(\M_reg/genblk1[13].d_ureg0/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[13].d_ureg0/_3_  (.A(start),
    .Y(\M_reg/genblk1[13].d_ureg0/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \M_reg/genblk1[13].d_ureg0/_4_  (.CLK_N(start),
    .D(multiplicand[13]),
    .RESET_B(rst),
    .Q(M[13]));
 sky130_fd_sc_hd__dfstp_2 \M_reg/genblk1[13].d_ureg0/_5_  (.CLK(\M_reg/genblk1[13].d_ureg0/_1_ ),
    .D(\M_reg/genblk1[13].d_ureg0/_0_ ),
    .SET_B(rst),
    .Q(\M_reg/genblk1[13].d_ureg0/Qb ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[14].d_ureg0/_2_  (.A(multiplicand[14]),
    .Y(\M_reg/genblk1[14].d_ureg0/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[14].d_ureg0/_3_  (.A(start),
    .Y(\M_reg/genblk1[14].d_ureg0/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \M_reg/genblk1[14].d_ureg0/_4_  (.CLK_N(start),
    .D(multiplicand[14]),
    .RESET_B(rst),
    .Q(M[14]));
 sky130_fd_sc_hd__dfstp_2 \M_reg/genblk1[14].d_ureg0/_5_  (.CLK(\M_reg/genblk1[14].d_ureg0/_1_ ),
    .D(\M_reg/genblk1[14].d_ureg0/_0_ ),
    .SET_B(rst),
    .Q(\M_reg/genblk1[14].d_ureg0/Qb ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[15].d_ureg0/_2_  (.A(multiplicand[15]),
    .Y(\M_reg/genblk1[15].d_ureg0/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[15].d_ureg0/_3_  (.A(start),
    .Y(\M_reg/genblk1[15].d_ureg0/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \M_reg/genblk1[15].d_ureg0/_4_  (.CLK_N(start),
    .D(multiplicand[15]),
    .RESET_B(rst),
    .Q(M[15]));
 sky130_fd_sc_hd__dfstp_2 \M_reg/genblk1[15].d_ureg0/_5_  (.CLK(\M_reg/genblk1[15].d_ureg0/_1_ ),
    .D(\M_reg/genblk1[15].d_ureg0/_0_ ),
    .SET_B(rst),
    .Q(\M_reg/genblk1[15].d_ureg0/Qb ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[1].d_ureg0/_2_  (.A(multiplicand[1]),
    .Y(\M_reg/genblk1[1].d_ureg0/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[1].d_ureg0/_3_  (.A(start),
    .Y(\M_reg/genblk1[1].d_ureg0/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \M_reg/genblk1[1].d_ureg0/_4_  (.CLK_N(start),
    .D(multiplicand[1]),
    .RESET_B(rst),
    .Q(M[1]));
 sky130_fd_sc_hd__dfstp_2 \M_reg/genblk1[1].d_ureg0/_5_  (.CLK(\M_reg/genblk1[1].d_ureg0/_1_ ),
    .D(\M_reg/genblk1[1].d_ureg0/_0_ ),
    .SET_B(rst),
    .Q(\M_reg/genblk1[1].d_ureg0/Qb ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[2].d_ureg0/_2_  (.A(multiplicand[2]),
    .Y(\M_reg/genblk1[2].d_ureg0/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[2].d_ureg0/_3_  (.A(start),
    .Y(\M_reg/genblk1[2].d_ureg0/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \M_reg/genblk1[2].d_ureg0/_4_  (.CLK_N(start),
    .D(multiplicand[2]),
    .RESET_B(rst),
    .Q(M[2]));
 sky130_fd_sc_hd__dfstp_2 \M_reg/genblk1[2].d_ureg0/_5_  (.CLK(\M_reg/genblk1[2].d_ureg0/_1_ ),
    .D(\M_reg/genblk1[2].d_ureg0/_0_ ),
    .SET_B(rst),
    .Q(\M_reg/genblk1[2].d_ureg0/Qb ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[3].d_ureg0/_2_  (.A(multiplicand[3]),
    .Y(\M_reg/genblk1[3].d_ureg0/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[3].d_ureg0/_3_  (.A(start),
    .Y(\M_reg/genblk1[3].d_ureg0/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \M_reg/genblk1[3].d_ureg0/_4_  (.CLK_N(start),
    .D(multiplicand[3]),
    .RESET_B(rst),
    .Q(M[3]));
 sky130_fd_sc_hd__dfstp_2 \M_reg/genblk1[3].d_ureg0/_5_  (.CLK(\M_reg/genblk1[3].d_ureg0/_1_ ),
    .D(\M_reg/genblk1[3].d_ureg0/_0_ ),
    .SET_B(rst),
    .Q(\M_reg/genblk1[3].d_ureg0/Qb ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[4].d_ureg0/_2_  (.A(multiplicand[4]),
    .Y(\M_reg/genblk1[4].d_ureg0/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[4].d_ureg0/_3_  (.A(start),
    .Y(\M_reg/genblk1[4].d_ureg0/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \M_reg/genblk1[4].d_ureg0/_4_  (.CLK_N(start),
    .D(multiplicand[4]),
    .RESET_B(rst),
    .Q(M[4]));
 sky130_fd_sc_hd__dfstp_2 \M_reg/genblk1[4].d_ureg0/_5_  (.CLK(\M_reg/genblk1[4].d_ureg0/_1_ ),
    .D(\M_reg/genblk1[4].d_ureg0/_0_ ),
    .SET_B(rst),
    .Q(\M_reg/genblk1[4].d_ureg0/Qb ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[5].d_ureg0/_2_  (.A(multiplicand[5]),
    .Y(\M_reg/genblk1[5].d_ureg0/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[5].d_ureg0/_3_  (.A(start),
    .Y(\M_reg/genblk1[5].d_ureg0/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \M_reg/genblk1[5].d_ureg0/_4_  (.CLK_N(start),
    .D(multiplicand[5]),
    .RESET_B(rst),
    .Q(M[5]));
 sky130_fd_sc_hd__dfstp_2 \M_reg/genblk1[5].d_ureg0/_5_  (.CLK(\M_reg/genblk1[5].d_ureg0/_1_ ),
    .D(\M_reg/genblk1[5].d_ureg0/_0_ ),
    .SET_B(rst),
    .Q(\M_reg/genblk1[5].d_ureg0/Qb ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[6].d_ureg0/_2_  (.A(multiplicand[6]),
    .Y(\M_reg/genblk1[6].d_ureg0/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[6].d_ureg0/_3_  (.A(start),
    .Y(\M_reg/genblk1[6].d_ureg0/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \M_reg/genblk1[6].d_ureg0/_4_  (.CLK_N(start),
    .D(multiplicand[6]),
    .RESET_B(rst),
    .Q(M[6]));
 sky130_fd_sc_hd__dfstp_2 \M_reg/genblk1[6].d_ureg0/_5_  (.CLK(\M_reg/genblk1[6].d_ureg0/_1_ ),
    .D(\M_reg/genblk1[6].d_ureg0/_0_ ),
    .SET_B(rst),
    .Q(\M_reg/genblk1[6].d_ureg0/Qb ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[7].d_ureg0/_2_  (.A(multiplicand[7]),
    .Y(\M_reg/genblk1[7].d_ureg0/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[7].d_ureg0/_3_  (.A(start),
    .Y(\M_reg/genblk1[7].d_ureg0/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \M_reg/genblk1[7].d_ureg0/_4_  (.CLK_N(start),
    .D(multiplicand[7]),
    .RESET_B(rst),
    .Q(M[7]));
 sky130_fd_sc_hd__dfstp_2 \M_reg/genblk1[7].d_ureg0/_5_  (.CLK(\M_reg/genblk1[7].d_ureg0/_1_ ),
    .D(\M_reg/genblk1[7].d_ureg0/_0_ ),
    .SET_B(rst),
    .Q(\M_reg/genblk1[7].d_ureg0/Qb ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[8].d_ureg0/_2_  (.A(multiplicand[8]),
    .Y(\M_reg/genblk1[8].d_ureg0/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[8].d_ureg0/_3_  (.A(start),
    .Y(\M_reg/genblk1[8].d_ureg0/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \M_reg/genblk1[8].d_ureg0/_4_  (.CLK_N(start),
    .D(multiplicand[8]),
    .RESET_B(rst),
    .Q(M[8]));
 sky130_fd_sc_hd__dfstp_2 \M_reg/genblk1[8].d_ureg0/_5_  (.CLK(\M_reg/genblk1[8].d_ureg0/_1_ ),
    .D(\M_reg/genblk1[8].d_ureg0/_0_ ),
    .SET_B(rst),
    .Q(\M_reg/genblk1[8].d_ureg0/Qb ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[9].d_ureg0/_2_  (.A(multiplicand[9]),
    .Y(\M_reg/genblk1[9].d_ureg0/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \M_reg/genblk1[9].d_ureg0/_3_  (.A(start),
    .Y(\M_reg/genblk1[9].d_ureg0/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \M_reg/genblk1[9].d_ureg0/_4_  (.CLK_N(start),
    .D(multiplicand[9]),
    .RESET_B(rst),
    .Q(M[9]));
 sky130_fd_sc_hd__dfstp_2 \M_reg/genblk1[9].d_ureg0/_5_  (.CLK(\M_reg/genblk1[9].d_ureg0/_1_ ),
    .D(\M_reg/genblk1[9].d_ureg0/_0_ ),
    .SET_B(rst),
    .Q(\M_reg/genblk1[9].d_ureg0/Qb ));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_40 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_50 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_51 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_52 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_53 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_54 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_55 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_56 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_57 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_58 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_59 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_41 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_60 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_61 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_62 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Left_63 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Right_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Left_64 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Right_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Left_65 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Right_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Left_66 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Right_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Left_67 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Right_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Left_68 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Right_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Left_69 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Right_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_42 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Left_70 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Right_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Left_71 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Right_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Left_72 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Right_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Left_73 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Right_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_34_Left_74 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_34_Right_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_35_Left_75 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_35_Right_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_36_Left_76 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_36_Right_36 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_37_Left_77 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_37_Right_37 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_38_Left_78 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_38_Right_38 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_39_Left_79 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_39_Right_39 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_43 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_44 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_45 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_46 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_47 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_48 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_49 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_148 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_155 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_156 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_157 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_158 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_159 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_160 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_161 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_162 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_163 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_164 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_165 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_166 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_167 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_168 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_169 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_170 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_171 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_172 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_173 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_174 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_175 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_176 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_177 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_178 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_179 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_180 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_181 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_182 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_183 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_184 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_185 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_186 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_187 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_188 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_189 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_190 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_191 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_192 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_193 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_194 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_195 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_196 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_197 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_198 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_199 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_200 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_201 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_202 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_203 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_204 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_205 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_206 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_207 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_208 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_209 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_210 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_211 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_212 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_213 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_214 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_215 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_216 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_217 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_218 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_219 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_220 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_221 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_222 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_223 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_224 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_225 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_226 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_227 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_228 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_229 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_230 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_231 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_232 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_233 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_234 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_235 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_236 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_237 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_238 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_239 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_240 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_241 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_242 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_243 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_244 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_245 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_246 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_247 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_248 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_249 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_250 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_251 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_252 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_253 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_254 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_255 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_256 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_257 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_258 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_259 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_260 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_261 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_262 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_263 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_264 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_265 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_266 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_267 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_268 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_269 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_270 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_271 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_272 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_273 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_274 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_275 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_276 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_277 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_278 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_279 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_280 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_281 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_282 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_283 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_284 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_285 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_286 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_287 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_288 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_289 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_290 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_291 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_135 ();
 sky130_fd_sc_hd__clkinv_1 _1_ (.A(mrst),
    .Y(nrst));
 sky130_fd_sc_hd__clkinv_1 _2_ (.A(start),
    .Y(c_rst));
 sky130_fd_sc_hd__or4_1 _3_ (.A(cntr_op[1]),
    .B(cntr_op[0]),
    .C(cntr_op[3]),
    .D(cntr_op[2]),
    .X(busy));
 sky130_fd_sc_hd__nand2b_1 _4_ (.A_N(mrst),
    .B(start),
    .Y(rst));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _5_ (.A(clknet_1_0__leaf_clk_in),
    .SLEEP(cntr_op[4]),
    .X(clk));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _6_ (.A(op[0]),
    .SLEEP(Q_Q_1[0]),
    .X(add0_sub1));
 sky130_fd_sc_hd__xor2_1 _7_ (.A(op[0]),
    .B(Q_Q_1[0]),
    .X(load_a));
 sky130_fd_sc_hd__conb_1 _8_ (.HI(_0_));
 sky130_fd_sc_hd__xor2_1 \alu/_00_  (.A(add0_sub1),
    .B(M[0]),
    .X(\alu/b_f [0]));
 sky130_fd_sc_hd__xor2_1 \alu/_01_  (.A(add0_sub1),
    .B(M[1]),
    .X(\alu/b_f [1]));
 sky130_fd_sc_hd__xor2_1 \alu/_02_  (.A(add0_sub1),
    .B(M[2]),
    .X(\alu/b_f [2]));
 sky130_fd_sc_hd__xor2_1 \alu/_03_  (.A(add0_sub1),
    .B(M[3]),
    .X(\alu/b_f [3]));
 sky130_fd_sc_hd__xor2_1 \alu/_04_  (.A(add0_sub1),
    .B(M[4]),
    .X(\alu/b_f [4]));
 sky130_fd_sc_hd__xor2_1 \alu/_05_  (.A(add0_sub1),
    .B(M[5]),
    .X(\alu/b_f [5]));
 sky130_fd_sc_hd__xor2_1 \alu/_06_  (.A(add0_sub1),
    .B(M[6]),
    .X(\alu/b_f [6]));
 sky130_fd_sc_hd__xor2_1 \alu/_07_  (.A(add0_sub1),
    .B(M[7]),
    .X(\alu/b_f [7]));
 sky130_fd_sc_hd__xor2_1 \alu/_08_  (.A(add0_sub1),
    .B(M[8]),
    .X(\alu/b_f [8]));
 sky130_fd_sc_hd__xor2_1 \alu/_09_  (.A(add0_sub1),
    .B(M[9]),
    .X(\alu/b_f [9]));
 sky130_fd_sc_hd__xor2_1 \alu/_10_  (.A(add0_sub1),
    .B(M[10]),
    .X(\alu/b_f [10]));
 sky130_fd_sc_hd__xor2_1 \alu/_11_  (.A(add0_sub1),
    .B(M[11]),
    .X(\alu/b_f [11]));
 sky130_fd_sc_hd__xor2_1 \alu/_12_  (.A(add0_sub1),
    .B(M[12]),
    .X(\alu/b_f [12]));
 sky130_fd_sc_hd__xor2_1 \alu/_13_  (.A(add0_sub1),
    .B(M[13]),
    .X(\alu/b_f [13]));
 sky130_fd_sc_hd__xor2_1 \alu/_14_  (.A(add0_sub1),
    .B(M[14]),
    .X(\alu/b_f [14]));
 sky130_fd_sc_hd__xor2_1 \alu/_15_  (.A(add0_sub1),
    .B(M[15]),
    .X(\alu/b_f [15]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/_00_  (.A(\alu/add_sub_module/Pz [0]),
    .B(add0_sub1),
    .X(alu_out[0]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/_01_  (.A(\alu/add_sub_module/Pz [1]),
    .B(\alu/add_sub_module/Ga [0]),
    .X(alu_out[1]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/_02_  (.A(\alu/add_sub_module/Pz [2]),
    .B(\alu/add_sub_module/Gb [1]),
    .X(alu_out[2]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/_03_  (.A(\alu/add_sub_module/Pz [3]),
    .B(\alu/add_sub_module/Gb [2]),
    .X(alu_out[3]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/_04_  (.A(\alu/add_sub_module/Pz [4]),
    .B(\alu/add_sub_module/Gc [3]),
    .X(alu_out[4]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/_05_  (.A(\alu/add_sub_module/Pz [5]),
    .B(\alu/add_sub_module/Gc [4]),
    .X(alu_out[5]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/_06_  (.A(\alu/add_sub_module/Pz [6]),
    .B(\alu/add_sub_module/Gc [5]),
    .X(alu_out[6]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/_07_  (.A(\alu/add_sub_module/Pz [7]),
    .B(\alu/add_sub_module/Gc [6]),
    .X(alu_out[7]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/_08_  (.A(\alu/add_sub_module/Pz [8]),
    .B(\alu/add_sub_module/Gd [7]),
    .X(alu_out[8]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/_09_  (.A(\alu/add_sub_module/Pz [9]),
    .B(\alu/add_sub_module/Gd [8]),
    .X(alu_out[9]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/_10_  (.A(\alu/add_sub_module/Pz [10]),
    .B(\alu/add_sub_module/Gd [9]),
    .X(alu_out[10]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/_11_  (.A(\alu/add_sub_module/Pz [11]),
    .B(\alu/add_sub_module/Gd [10]),
    .X(alu_out[11]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/_12_  (.A(\alu/add_sub_module/Pz [12]),
    .B(\alu/add_sub_module/Gd [11]),
    .X(alu_out[12]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/_13_  (.A(\alu/add_sub_module/Pz [13]),
    .B(\alu/add_sub_module/Gd [12]),
    .X(alu_out[13]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/_14_  (.A(\alu/add_sub_module/Pz [14]),
    .B(\alu/add_sub_module/Gd [13]),
    .X(alu_out[14]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/_15_  (.A(\alu/add_sub_module/Pz [15]),
    .B(\alu/add_sub_module/Gd [14]),
    .X(alu_out[15]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/ax0/_0_  (.A(\alu/b_f [0]),
    .B(op[16]),
    .X(\alu/add_sub_module/Gz [0]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/ax0/_1_  (.A(\alu/b_f [0]),
    .B(op[16]),
    .X(\alu/add_sub_module/Pz [0]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/ax1/_0_  (.A(\alu/b_f [1]),
    .B(op[17]),
    .X(\alu/add_sub_module/Gz [1]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/ax1/_1_  (.A(\alu/b_f [1]),
    .B(op[17]),
    .X(\alu/add_sub_module/Pz [1]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/ax10/_0_  (.A(\alu/b_f [10]),
    .B(op[26]),
    .X(\alu/add_sub_module/Gz [10]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/ax10/_1_  (.A(\alu/b_f [10]),
    .B(op[26]),
    .X(\alu/add_sub_module/Pz [10]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/ax11/_0_  (.A(\alu/b_f [11]),
    .B(op[27]),
    .X(\alu/add_sub_module/Gz [11]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/ax11/_1_  (.A(\alu/b_f [11]),
    .B(op[27]),
    .X(\alu/add_sub_module/Pz [11]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/ax12/_0_  (.A(\alu/b_f [12]),
    .B(op[28]),
    .X(\alu/add_sub_module/Gz [12]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/ax12/_1_  (.A(\alu/b_f [12]),
    .B(op[28]),
    .X(\alu/add_sub_module/Pz [12]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/ax13/_0_  (.A(\alu/b_f [13]),
    .B(op[29]),
    .X(\alu/add_sub_module/Gz [13]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/ax13/_1_  (.A(\alu/b_f [13]),
    .B(op[29]),
    .X(\alu/add_sub_module/Pz [13]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/ax14/_0_  (.A(\alu/b_f [14]),
    .B(op[30]),
    .X(\alu/add_sub_module/Gz [14]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/ax14/_1_  (.A(\alu/b_f [14]),
    .B(op[30]),
    .X(\alu/add_sub_module/Pz [14]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/ax15/_0_  (.A(\alu/b_f [15]),
    .B(op[31]),
    .X(\alu/add_sub_module/Gz [15]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/ax15/_1_  (.A(\alu/b_f [15]),
    .B(op[31]),
    .X(\alu/add_sub_module/Pz [15]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/ax2/_0_  (.A(\alu/b_f [2]),
    .B(op[18]),
    .X(\alu/add_sub_module/Gz [2]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/ax2/_1_  (.A(\alu/b_f [2]),
    .B(op[18]),
    .X(\alu/add_sub_module/Pz [2]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/ax3/_0_  (.A(\alu/b_f [3]),
    .B(op[19]),
    .X(\alu/add_sub_module/Gz [3]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/ax3/_1_  (.A(\alu/b_f [3]),
    .B(op[19]),
    .X(\alu/add_sub_module/Pz [3]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/ax4/_0_  (.A(\alu/b_f [4]),
    .B(op[20]),
    .X(\alu/add_sub_module/Gz [4]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/ax4/_1_  (.A(\alu/b_f [4]),
    .B(op[20]),
    .X(\alu/add_sub_module/Pz [4]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/ax5/_0_  (.A(\alu/b_f [5]),
    .B(op[21]),
    .X(\alu/add_sub_module/Gz [5]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/ax5/_1_  (.A(\alu/b_f [5]),
    .B(op[21]),
    .X(\alu/add_sub_module/Pz [5]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/ax6/_0_  (.A(\alu/b_f [6]),
    .B(op[22]),
    .X(\alu/add_sub_module/Gz [6]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/ax6/_1_  (.A(\alu/b_f [6]),
    .B(op[22]),
    .X(\alu/add_sub_module/Pz [6]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/ax7/_0_  (.A(\alu/b_f [7]),
    .B(op[23]),
    .X(\alu/add_sub_module/Gz [7]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/ax7/_1_  (.A(\alu/b_f [7]),
    .B(op[23]),
    .X(\alu/add_sub_module/Pz [7]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/ax8/_0_  (.A(\alu/b_f [8]),
    .B(op[24]),
    .X(\alu/add_sub_module/Gz [8]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/ax8/_1_  (.A(\alu/b_f [8]),
    .B(op[24]),
    .X(\alu/add_sub_module/Pz [8]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/ax9/_0_  (.A(\alu/b_f [9]),
    .B(op[25]),
    .X(\alu/add_sub_module/Gz [9]));
 sky130_fd_sc_hd__xor2_1 \alu/add_sub_module/ax9/_1_  (.A(\alu/b_f [9]),
    .B(op[25]),
    .X(\alu/add_sub_module/Pz [9]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l1_bc0/_0_  (.A1(\alu/add_sub_module/Pz [1]),
    .A2(\alu/add_sub_module/Gz [0]),
    .B1(\alu/add_sub_module/Gz [1]),
    .X(\alu/add_sub_module/Ga [1]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l1_bc0/_1_  (.A(\alu/add_sub_module/Pz [1]),
    .B(\alu/add_sub_module/Pz [0]),
    .X(\alu/add_sub_module/Pa [1]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l1_bc1/_0_  (.A1(\alu/add_sub_module/Pz [2]),
    .A2(\alu/add_sub_module/Gz [1]),
    .B1(\alu/add_sub_module/Gz [2]),
    .X(\alu/add_sub_module/Ga [2]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l1_bc1/_1_  (.A(\alu/add_sub_module/Pz [2]),
    .B(\alu/add_sub_module/Pz [1]),
    .X(\alu/add_sub_module/Pa [2]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l1_bc10/_0_  (.A1(\alu/add_sub_module/Pz [11]),
    .A2(\alu/add_sub_module/Gz [10]),
    .B1(\alu/add_sub_module/Gz [11]),
    .X(\alu/add_sub_module/Ga [11]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l1_bc10/_1_  (.A(\alu/add_sub_module/Pz [11]),
    .B(\alu/add_sub_module/Pz [10]),
    .X(\alu/add_sub_module/Pa [11]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l1_bc11/_0_  (.A1(\alu/add_sub_module/Pz [12]),
    .A2(\alu/add_sub_module/Gz [11]),
    .B1(\alu/add_sub_module/Gz [12]),
    .X(\alu/add_sub_module/Ga [12]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l1_bc11/_1_  (.A(\alu/add_sub_module/Pz [12]),
    .B(\alu/add_sub_module/Pz [11]),
    .X(\alu/add_sub_module/Pa [12]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l1_bc12/_0_  (.A1(\alu/add_sub_module/Pz [13]),
    .A2(\alu/add_sub_module/Gz [12]),
    .B1(\alu/add_sub_module/Gz [13]),
    .X(\alu/add_sub_module/Ga [13]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l1_bc12/_1_  (.A(\alu/add_sub_module/Pz [13]),
    .B(\alu/add_sub_module/Pz [12]),
    .X(\alu/add_sub_module/Pa [13]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l1_bc13/_0_  (.A1(\alu/add_sub_module/Pz [14]),
    .A2(\alu/add_sub_module/Gz [13]),
    .B1(\alu/add_sub_module/Gz [14]),
    .X(\alu/add_sub_module/Ga [14]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l1_bc13/_1_  (.A(\alu/add_sub_module/Pz [14]),
    .B(\alu/add_sub_module/Pz [13]),
    .X(\alu/add_sub_module/Pa [14]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l1_bc14/_0_  (.A1(\alu/add_sub_module/Pz [15]),
    .A2(\alu/add_sub_module/Gz [14]),
    .B1(\alu/add_sub_module/Gz [15]),
    .X(\alu/add_sub_module/Ga [15]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l1_bc14/_1_  (.A(\alu/add_sub_module/Pz [15]),
    .B(\alu/add_sub_module/Pz [14]),
    .X(\alu/add_sub_module/Pa [15]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l1_bc2/_0_  (.A1(\alu/add_sub_module/Pz [3]),
    .A2(\alu/add_sub_module/Gz [2]),
    .B1(\alu/add_sub_module/Gz [3]),
    .X(\alu/add_sub_module/Ga [3]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l1_bc2/_1_  (.A(\alu/add_sub_module/Pz [3]),
    .B(\alu/add_sub_module/Pz [2]),
    .X(\alu/add_sub_module/Pa [3]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l1_bc3/_0_  (.A1(\alu/add_sub_module/Pz [4]),
    .A2(\alu/add_sub_module/Gz [3]),
    .B1(\alu/add_sub_module/Gz [4]),
    .X(\alu/add_sub_module/Ga [4]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l1_bc3/_1_  (.A(\alu/add_sub_module/Pz [4]),
    .B(\alu/add_sub_module/Pz [3]),
    .X(\alu/add_sub_module/Pa [4]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l1_bc4/_0_  (.A1(\alu/add_sub_module/Pz [5]),
    .A2(\alu/add_sub_module/Gz [4]),
    .B1(\alu/add_sub_module/Gz [5]),
    .X(\alu/add_sub_module/Ga [5]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l1_bc4/_1_  (.A(\alu/add_sub_module/Pz [5]),
    .B(\alu/add_sub_module/Pz [4]),
    .X(\alu/add_sub_module/Pa [5]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l1_bc5/_0_  (.A1(\alu/add_sub_module/Pz [6]),
    .A2(\alu/add_sub_module/Gz [5]),
    .B1(\alu/add_sub_module/Gz [6]),
    .X(\alu/add_sub_module/Ga [6]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l1_bc5/_1_  (.A(\alu/add_sub_module/Pz [6]),
    .B(\alu/add_sub_module/Pz [5]),
    .X(\alu/add_sub_module/Pa [6]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l1_bc6/_0_  (.A1(\alu/add_sub_module/Pz [7]),
    .A2(\alu/add_sub_module/Gz [6]),
    .B1(\alu/add_sub_module/Gz [7]),
    .X(\alu/add_sub_module/Ga [7]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l1_bc6/_1_  (.A(\alu/add_sub_module/Pz [7]),
    .B(\alu/add_sub_module/Pz [6]),
    .X(\alu/add_sub_module/Pa [7]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l1_bc7/_0_  (.A1(\alu/add_sub_module/Pz [8]),
    .A2(\alu/add_sub_module/Gz [7]),
    .B1(\alu/add_sub_module/Gz [8]),
    .X(\alu/add_sub_module/Ga [8]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l1_bc7/_1_  (.A(\alu/add_sub_module/Pz [8]),
    .B(\alu/add_sub_module/Pz [7]),
    .X(\alu/add_sub_module/Pa [8]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l1_bc8/_0_  (.A1(\alu/add_sub_module/Pz [9]),
    .A2(\alu/add_sub_module/Gz [8]),
    .B1(\alu/add_sub_module/Gz [9]),
    .X(\alu/add_sub_module/Ga [9]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l1_bc8/_1_  (.A(\alu/add_sub_module/Pz [9]),
    .B(\alu/add_sub_module/Pz [8]),
    .X(\alu/add_sub_module/Pa [9]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l1_bc9/_0_  (.A1(\alu/add_sub_module/Pz [10]),
    .A2(\alu/add_sub_module/Gz [9]),
    .B1(\alu/add_sub_module/Gz [10]),
    .X(\alu/add_sub_module/Ga [10]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l1_bc9/_1_  (.A(\alu/add_sub_module/Pz [10]),
    .B(\alu/add_sub_module/Pz [9]),
    .X(\alu/add_sub_module/Pa [10]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l1_gc0/_0_  (.A1(\alu/add_sub_module/Pz [0]),
    .A2(add0_sub1),
    .B1(\alu/add_sub_module/Gz [0]),
    .X(\alu/add_sub_module/Ga [0]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l2_bc0/_0_  (.A1(\alu/add_sub_module/Pa [3]),
    .A2(\alu/add_sub_module/Ga [1]),
    .B1(\alu/add_sub_module/Ga [3]),
    .X(\alu/add_sub_module/Gb [3]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l2_bc0/_1_  (.A(\alu/add_sub_module/Pa [3]),
    .B(\alu/add_sub_module/Pa [1]),
    .X(\alu/add_sub_module/Pb [3]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l2_bc1/_0_  (.A1(\alu/add_sub_module/Pa [4]),
    .A2(\alu/add_sub_module/Ga [2]),
    .B1(\alu/add_sub_module/Ga [4]),
    .X(\alu/add_sub_module/Gb [4]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l2_bc1/_1_  (.A(\alu/add_sub_module/Pa [4]),
    .B(\alu/add_sub_module/Pa [2]),
    .X(\alu/add_sub_module/Pb [4]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l2_bc10/_0_  (.A1(\alu/add_sub_module/Pa [13]),
    .A2(\alu/add_sub_module/Ga [11]),
    .B1(\alu/add_sub_module/Ga [13]),
    .X(\alu/add_sub_module/Gb [13]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l2_bc10/_1_  (.A(\alu/add_sub_module/Pa [13]),
    .B(\alu/add_sub_module/Pa [11]),
    .X(\alu/add_sub_module/Pb [13]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l2_bc11/_0_  (.A1(\alu/add_sub_module/Pa [14]),
    .A2(\alu/add_sub_module/Ga [12]),
    .B1(\alu/add_sub_module/Ga [14]),
    .X(\alu/add_sub_module/Gb [14]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l2_bc11/_1_  (.A(\alu/add_sub_module/Pa [14]),
    .B(\alu/add_sub_module/Pa [12]),
    .X(\alu/add_sub_module/Pb [14]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l2_bc12/_0_  (.A1(\alu/add_sub_module/Pa [15]),
    .A2(\alu/add_sub_module/Ga [13]),
    .B1(\alu/add_sub_module/Ga [15]),
    .X(\alu/add_sub_module/Gb [15]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l2_bc12/_1_  (.A(\alu/add_sub_module/Pa [15]),
    .B(\alu/add_sub_module/Pa [13]),
    .X(\alu/add_sub_module/Pb [15]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l2_bc2/_0_  (.A1(\alu/add_sub_module/Pa [5]),
    .A2(\alu/add_sub_module/Ga [3]),
    .B1(\alu/add_sub_module/Ga [5]),
    .X(\alu/add_sub_module/Gb [5]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l2_bc2/_1_  (.A(\alu/add_sub_module/Pa [5]),
    .B(\alu/add_sub_module/Pa [3]),
    .X(\alu/add_sub_module/Pb [5]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l2_bc3/_0_  (.A1(\alu/add_sub_module/Pa [6]),
    .A2(\alu/add_sub_module/Ga [4]),
    .B1(\alu/add_sub_module/Ga [6]),
    .X(\alu/add_sub_module/Gb [6]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l2_bc3/_1_  (.A(\alu/add_sub_module/Pa [6]),
    .B(\alu/add_sub_module/Pa [4]),
    .X(\alu/add_sub_module/Pb [6]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l2_bc4/_0_  (.A1(\alu/add_sub_module/Pa [7]),
    .A2(\alu/add_sub_module/Ga [5]),
    .B1(\alu/add_sub_module/Ga [7]),
    .X(\alu/add_sub_module/Gb [7]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l2_bc4/_1_  (.A(\alu/add_sub_module/Pa [7]),
    .B(\alu/add_sub_module/Pa [5]),
    .X(\alu/add_sub_module/Pb [7]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l2_bc5/_0_  (.A1(\alu/add_sub_module/Pa [8]),
    .A2(\alu/add_sub_module/Ga [6]),
    .B1(\alu/add_sub_module/Ga [8]),
    .X(\alu/add_sub_module/Gb [8]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l2_bc5/_1_  (.A(\alu/add_sub_module/Pa [8]),
    .B(\alu/add_sub_module/Pa [6]),
    .X(\alu/add_sub_module/Pb [8]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l2_bc6/_0_  (.A1(\alu/add_sub_module/Pa [9]),
    .A2(\alu/add_sub_module/Ga [7]),
    .B1(\alu/add_sub_module/Ga [9]),
    .X(\alu/add_sub_module/Gb [9]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l2_bc6/_1_  (.A(\alu/add_sub_module/Pa [9]),
    .B(\alu/add_sub_module/Pa [7]),
    .X(\alu/add_sub_module/Pb [9]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l2_bc7/_0_  (.A1(\alu/add_sub_module/Pa [10]),
    .A2(\alu/add_sub_module/Ga [8]),
    .B1(\alu/add_sub_module/Ga [10]),
    .X(\alu/add_sub_module/Gb [10]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l2_bc7/_1_  (.A(\alu/add_sub_module/Pa [10]),
    .B(\alu/add_sub_module/Pa [8]),
    .X(\alu/add_sub_module/Pb [10]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l2_bc8/_0_  (.A1(\alu/add_sub_module/Pa [11]),
    .A2(\alu/add_sub_module/Ga [9]),
    .B1(\alu/add_sub_module/Ga [11]),
    .X(\alu/add_sub_module/Gb [11]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l2_bc8/_1_  (.A(\alu/add_sub_module/Pa [11]),
    .B(\alu/add_sub_module/Pa [9]),
    .X(\alu/add_sub_module/Pb [11]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l2_bc9/_0_  (.A1(\alu/add_sub_module/Pa [12]),
    .A2(\alu/add_sub_module/Ga [10]),
    .B1(\alu/add_sub_module/Ga [12]),
    .X(\alu/add_sub_module/Gb [12]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l2_bc9/_1_  (.A(\alu/add_sub_module/Pa [12]),
    .B(\alu/add_sub_module/Pa [10]),
    .X(\alu/add_sub_module/Pb [12]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l2_gc0/_0_  (.A1(\alu/add_sub_module/Pa [1]),
    .A2(add0_sub1),
    .B1(\alu/add_sub_module/Ga [1]),
    .X(\alu/add_sub_module/Gb [1]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l2_gc1/_0_  (.A1(\alu/add_sub_module/Pa [2]),
    .A2(\alu/add_sub_module/Ga [0]),
    .B1(\alu/add_sub_module/Ga [2]),
    .X(\alu/add_sub_module/Gb [2]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l3_bc0/_0_  (.A1(\alu/add_sub_module/Pb [7]),
    .A2(\alu/add_sub_module/Gb [3]),
    .B1(\alu/add_sub_module/Gb [7]),
    .X(\alu/add_sub_module/Gc [7]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l3_bc0/_1_  (.A(\alu/add_sub_module/Pb [7]),
    .B(\alu/add_sub_module/Pb [3]),
    .X(\alu/add_sub_module/Pc [7]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l3_bc1/_0_  (.A1(\alu/add_sub_module/Pb [8]),
    .A2(\alu/add_sub_module/Gb [4]),
    .B1(\alu/add_sub_module/Gb [8]),
    .X(\alu/add_sub_module/Gc [8]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l3_bc1/_1_  (.A(\alu/add_sub_module/Pb [8]),
    .B(\alu/add_sub_module/Pb [4]),
    .X(\alu/add_sub_module/Pc [8]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l3_bc2/_0_  (.A1(\alu/add_sub_module/Pb [9]),
    .A2(\alu/add_sub_module/Gb [5]),
    .B1(\alu/add_sub_module/Gb [9]),
    .X(\alu/add_sub_module/Gc [9]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l3_bc2/_1_  (.A(\alu/add_sub_module/Pb [9]),
    .B(\alu/add_sub_module/Pb [5]),
    .X(\alu/add_sub_module/Pc [9]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l3_bc3/_0_  (.A1(\alu/add_sub_module/Pb [10]),
    .A2(\alu/add_sub_module/Gb [6]),
    .B1(\alu/add_sub_module/Gb [10]),
    .X(\alu/add_sub_module/Gc [10]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l3_bc3/_1_  (.A(\alu/add_sub_module/Pb [10]),
    .B(\alu/add_sub_module/Pb [6]),
    .X(\alu/add_sub_module/Pc [10]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l3_bc4/_0_  (.A1(\alu/add_sub_module/Pb [11]),
    .A2(\alu/add_sub_module/Gb [7]),
    .B1(\alu/add_sub_module/Gb [11]),
    .X(\alu/add_sub_module/Gc [11]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l3_bc4/_1_  (.A(\alu/add_sub_module/Pb [11]),
    .B(\alu/add_sub_module/Pb [7]),
    .X(\alu/add_sub_module/Pc [11]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l3_bc5/_0_  (.A1(\alu/add_sub_module/Pb [12]),
    .A2(\alu/add_sub_module/Gb [8]),
    .B1(\alu/add_sub_module/Gb [12]),
    .X(\alu/add_sub_module/Gc [12]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l3_bc5/_1_  (.A(\alu/add_sub_module/Pb [12]),
    .B(\alu/add_sub_module/Pb [8]),
    .X(\alu/add_sub_module/Pc [12]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l3_bc6/_0_  (.A1(\alu/add_sub_module/Pb [13]),
    .A2(\alu/add_sub_module/Gb [9]),
    .B1(\alu/add_sub_module/Gb [13]),
    .X(\alu/add_sub_module/Gc [13]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l3_bc6/_1_  (.A(\alu/add_sub_module/Pb [13]),
    .B(\alu/add_sub_module/Pb [9]),
    .X(\alu/add_sub_module/Pc [13]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l3_bc7/_0_  (.A1(\alu/add_sub_module/Pb [14]),
    .A2(\alu/add_sub_module/Gb [10]),
    .B1(\alu/add_sub_module/Gb [14]),
    .X(\alu/add_sub_module/Gc [14]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l3_bc7/_1_  (.A(\alu/add_sub_module/Pb [14]),
    .B(\alu/add_sub_module/Pb [10]),
    .X(\alu/add_sub_module/Pc [14]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l3_bc8/_0_  (.A1(\alu/add_sub_module/Pb [15]),
    .A2(\alu/add_sub_module/Gb [11]),
    .B1(\alu/add_sub_module/Gb [15]),
    .X(\alu/add_sub_module/Gc [15]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l3_bc8/_1_  (.A(\alu/add_sub_module/Pb [15]),
    .B(\alu/add_sub_module/Pb [11]),
    .X(\alu/add_sub_module/Pc [15]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l3_gc0/_0_  (.A1(\alu/add_sub_module/Pb [3]),
    .A2(add0_sub1),
    .B1(\alu/add_sub_module/Gb [3]),
    .X(\alu/add_sub_module/Gc [3]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l3_gc1/_0_  (.A1(\alu/add_sub_module/Pb [4]),
    .A2(\alu/add_sub_module/Ga [0]),
    .B1(\alu/add_sub_module/Gb [4]),
    .X(\alu/add_sub_module/Gc [4]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l3_gc2/_0_  (.A1(\alu/add_sub_module/Pb [5]),
    .A2(\alu/add_sub_module/Gb [1]),
    .B1(\alu/add_sub_module/Gb [5]),
    .X(\alu/add_sub_module/Gc [5]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l3_gc3/_0_  (.A1(\alu/add_sub_module/Pb [6]),
    .A2(\alu/add_sub_module/Gb [2]),
    .B1(\alu/add_sub_module/Gb [6]),
    .X(\alu/add_sub_module/Gc [6]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l4_bc0/_0_  (.A1(\alu/add_sub_module/Pc [15]),
    .A2(\alu/add_sub_module/Gc [7]),
    .B1(\alu/add_sub_module/Gc [15]),
    .X(\alu/add_sub_module/Gd [15]));
 sky130_fd_sc_hd__and2_0 \alu/add_sub_module/l4_bc0/_1_  (.A(\alu/add_sub_module/Pc [15]),
    .B(\alu/add_sub_module/Pc [7]),
    .X(\alu/add_sub_module/Pd [15]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l4_gc0/_0_  (.A1(\alu/add_sub_module/Pc [7]),
    .A2(add0_sub1),
    .B1(\alu/add_sub_module/Gc [7]),
    .X(\alu/add_sub_module/Gd [7]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l4_gc1/_0_  (.A1(\alu/add_sub_module/Pc [8]),
    .A2(\alu/add_sub_module/Ga [0]),
    .B1(\alu/add_sub_module/Gc [8]),
    .X(\alu/add_sub_module/Gd [8]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l4_gc2/_0_  (.A1(\alu/add_sub_module/Pc [9]),
    .A2(\alu/add_sub_module/Gb [1]),
    .B1(\alu/add_sub_module/Gc [9]),
    .X(\alu/add_sub_module/Gd [9]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l4_gc3/_0_  (.A1(\alu/add_sub_module/Pc [10]),
    .A2(\alu/add_sub_module/Gb [2]),
    .B1(\alu/add_sub_module/Gc [10]),
    .X(\alu/add_sub_module/Gd [10]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l4_gc4/_0_  (.A1(\alu/add_sub_module/Pc [11]),
    .A2(\alu/add_sub_module/Gc [3]),
    .B1(\alu/add_sub_module/Gc [11]),
    .X(\alu/add_sub_module/Gd [11]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l4_gc5/_0_  (.A1(\alu/add_sub_module/Pc [12]),
    .A2(\alu/add_sub_module/Gc [4]),
    .B1(\alu/add_sub_module/Gc [12]),
    .X(\alu/add_sub_module/Gd [12]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l4_gc6/_0_  (.A1(\alu/add_sub_module/Pc [13]),
    .A2(\alu/add_sub_module/Gc [5]),
    .B1(\alu/add_sub_module/Gc [13]),
    .X(\alu/add_sub_module/Gd [13]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l4_gc7/_0_  (.A1(\alu/add_sub_module/Pc [14]),
    .A2(\alu/add_sub_module/Gc [6]),
    .B1(\alu/add_sub_module/Gc [14]),
    .X(\alu/add_sub_module/Gd [14]));
 sky130_fd_sc_hd__a21o_1 \alu/add_sub_module/l5_gc0/_0_  (.A1(\alu/add_sub_module/Pd [15]),
    .A2(add0_sub1),
    .B1(\alu/add_sub_module/Gd [15]),
    .X(\alu/add_sub_module/cout ));
 sky130_fd_sc_hd__clkinv_1 \c0/c0/_2_  (.A(\c0/d_in [0]),
    .Y(\c0/c0/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \c0/c0/_3_  (.A(clknet_1_0__leaf_clk_regs),
    .Y(\c0/c0/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \c0/c0/_4_  (.CLK_N(clknet_1_1__leaf_clk_regs),
    .D(\c0/d_in [0]),
    .RESET_B(c_rst),
    .Q(cntr_op[0]));
 sky130_fd_sc_hd__dfstp_2 \c0/c0/_5_  (.CLK(\c0/c0/_1_ ),
    .D(\c0/c0/_0_ ),
    .SET_B(c_rst),
    .Q(\c0/d_in [0]));
 sky130_fd_sc_hd__clkinv_1 \c0/c1/_2_  (.A(\c0/d_in [1]),
    .Y(\c0/c1/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \c0/c1/_3_  (.A(cntr_op[0]),
    .Y(\c0/c1/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \c0/c1/_4_  (.CLK_N(cntr_op[0]),
    .D(\c0/d_in [1]),
    .RESET_B(c_rst),
    .Q(cntr_op[1]));
 sky130_fd_sc_hd__dfstp_2 \c0/c1/_5_  (.CLK(\c0/c1/_1_ ),
    .D(\c0/c1/_0_ ),
    .SET_B(c_rst),
    .Q(\c0/d_in [1]));
 sky130_fd_sc_hd__clkinv_1 \c0/c2/_2_  (.A(\c0/d_in [2]),
    .Y(\c0/c2/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \c0/c2/_3_  (.A(cntr_op[1]),
    .Y(\c0/c2/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \c0/c2/_4_  (.CLK_N(cntr_op[1]),
    .D(\c0/d_in [2]),
    .RESET_B(c_rst),
    .Q(cntr_op[2]));
 sky130_fd_sc_hd__dfstp_2 \c0/c2/_5_  (.CLK(\c0/c2/_1_ ),
    .D(\c0/c2/_0_ ),
    .SET_B(c_rst),
    .Q(\c0/d_in [2]));
 sky130_fd_sc_hd__clkinv_1 \c0/c3/_2_  (.A(\c0/d_in [3]),
    .Y(\c0/c3/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \c0/c3/_3_  (.A(cntr_op[2]),
    .Y(\c0/c3/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \c0/c3/_4_  (.CLK_N(cntr_op[2]),
    .D(\c0/d_in [3]),
    .RESET_B(c_rst),
    .Q(cntr_op[3]));
 sky130_fd_sc_hd__dfstp_2 \c0/c3/_5_  (.CLK(\c0/c3/_1_ ),
    .D(\c0/c3/_0_ ),
    .SET_B(c_rst),
    .Q(\c0/d_in [3]));
 sky130_fd_sc_hd__clkinv_1 \c0/c4/_2_  (.A(\c0/d_in [4]),
    .Y(\c0/c4/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \c0/c4/_3_  (.A(cntr_op[3]),
    .Y(\c0/c4/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \c0/c4/_4_  (.CLK_N(cntr_op[3]),
    .D(\c0/d_in [4]),
    .RESET_B(c_rst),
    .Q(cntr_op[4]));
 sky130_fd_sc_hd__dfstp_2 \c0/c4/_5_  (.CLK(\c0/c4/_1_ ),
    .D(\c0/c4/_0_ ),
    .SET_B(c_rst),
    .Q(\c0/d_in [4]));
 sky130_fd_sc_hd__clkbuf_16 \clkbuf_0_AQQ_1_register/clk  (.A(\AQQ_1_register/clk ),
    .X(\clknet_0_AQQ_1_register/clk ));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk_in (.A(clk_in),
    .X(clknet_0_clk_in));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk_in_regs (.A(clk_in_regs),
    .X(clknet_0_clk_in_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk_regs (.A(clk_regs),
    .X(clknet_0_clk_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .X(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_clk_in (.A(clknet_0_clk_in),
    .X(clknet_1_0__leaf_clk_in));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_clk_in_regs (.A(clknet_0_clk_in_regs),
    .X(clknet_1_0__leaf_clk_in_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_clk_regs (.A(clknet_0_clk_regs),
    .X(clknet_1_0__leaf_clk_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_clk_in_regs (.A(clknet_0_clk_in_regs),
    .X(clknet_1_1__leaf_clk_in_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_clk_regs (.A(clknet_0_clk_regs),
    .X(clknet_1_1__leaf_clk_regs));
 sky130_fd_sc_hd__clkbuf_16 \clkbuf_3_0__f_AQQ_1_register/clk  (.A(\clknet_0_AQQ_1_register/clk ),
    .X(\clknet_3_0__leaf_AQQ_1_register/clk ));
 sky130_fd_sc_hd__clkbuf_16 \clkbuf_3_1__f_AQQ_1_register/clk  (.A(\clknet_0_AQQ_1_register/clk ),
    .X(\clknet_3_1__leaf_AQQ_1_register/clk ));
 sky130_fd_sc_hd__clkbuf_16 \clkbuf_3_2__f_AQQ_1_register/clk  (.A(\clknet_0_AQQ_1_register/clk ),
    .X(\clknet_3_2__leaf_AQQ_1_register/clk ));
 sky130_fd_sc_hd__clkbuf_16 \clkbuf_3_3__f_AQQ_1_register/clk  (.A(\clknet_0_AQQ_1_register/clk ),
    .X(\clknet_3_3__leaf_AQQ_1_register/clk ));
 sky130_fd_sc_hd__clkbuf_16 \clkbuf_3_4__f_AQQ_1_register/clk  (.A(\clknet_0_AQQ_1_register/clk ),
    .X(\clknet_3_4__leaf_AQQ_1_register/clk ));
 sky130_fd_sc_hd__clkbuf_16 \clkbuf_3_5__f_AQQ_1_register/clk  (.A(\clknet_0_AQQ_1_register/clk ),
    .X(\clknet_3_5__leaf_AQQ_1_register/clk ));
 sky130_fd_sc_hd__clkbuf_16 \clkbuf_3_6__f_AQQ_1_register/clk  (.A(\clknet_0_AQQ_1_register/clk ),
    .X(\clknet_3_6__leaf_AQQ_1_register/clk ));
 sky130_fd_sc_hd__clkbuf_16 \clkbuf_3_7__f_AQQ_1_register/clk  (.A(\clknet_0_AQQ_1_register/clk ),
    .X(\clknet_3_7__leaf_AQQ_1_register/clk ));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_regs_0_clk (.A(clk_in),
    .X(delaynet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_regs_1_clk (.A(clk),
    .X(delaynet_8_clk));
 sky130_fd_sc_hd__clkbuf_4 clkload0 (.A(clknet_1_0__leaf_clk_in_regs));
 sky130_fd_sc_hd__clkbuf_4 clkload1 (.A(clknet_1_1__leaf_clk_regs));
 sky130_fd_sc_hd__clkinv_4 clkload2 (.A(\clknet_3_0__leaf_AQQ_1_register/clk ));
 sky130_fd_sc_hd__inv_8 clkload3 (.A(\clknet_3_1__leaf_AQQ_1_register/clk ));
 sky130_fd_sc_hd__inv_6 clkload4 (.A(\clknet_3_3__leaf_AQQ_1_register/clk ));
 sky130_fd_sc_hd__clkinv_4 clkload5 (.A(\clknet_3_4__leaf_AQQ_1_register/clk ));
 sky130_fd_sc_hd__clkinv_4 clkload6 (.A(\clknet_3_5__leaf_AQQ_1_register/clk ));
 sky130_fd_sc_hd__inv_8 clkload7 (.A(\clknet_3_6__leaf_AQQ_1_register/clk ));
 sky130_fd_sc_hd__clkinvlp_2 clkload8 (.A(\clknet_3_7__leaf_AQQ_1_register/clk ));
 sky130_fd_sc_hd__clkinv_1 \cntrl_gen0/_2_  (.A(nrst),
    .Y(\cntrl_gen0/_0_ ));
 sky130_fd_sc_hd__clkinv_1 \cntrl_gen0/_3_  (.A(clknet_1_1__leaf_clk_in_regs),
    .Y(\cntrl_gen0/_1_ ));
 sky130_fd_sc_hd__dfrtn_1 \cntrl_gen0/_4_  (.CLK_N(clknet_1_0__leaf_clk_in_regs),
    .D(nrst),
    .RESET_B(\cntrl_gen0/rst ),
    .Q(start));
 sky130_fd_sc_hd__dfstp_2 \cntrl_gen0/_5_  (.CLK(\cntrl_gen0/_1_ ),
    .D(\cntrl_gen0/_0_ ),
    .SET_B(\cntrl_gen0/rst ),
    .Q(\cntrl_gen0/Qb ));
 sky130_fd_sc_hd__clkbuf_16 delaybuf_0_clk (.A(delaynet_0_clk),
    .X(delaynet_1_clk));
 sky130_fd_sc_hd__clkbuf_16 delaybuf_1_clk (.A(delaynet_1_clk),
    .X(delaynet_2_clk));
 sky130_fd_sc_hd__clkbuf_16 delaybuf_2_clk (.A(delaynet_2_clk),
    .X(delaynet_3_clk));
 sky130_fd_sc_hd__clkbuf_16 delaybuf_3_clk (.A(delaynet_3_clk),
    .X(delaynet_4_clk));
 sky130_fd_sc_hd__clkbuf_16 delaybuf_4_clk (.A(delaynet_4_clk),
    .X(delaynet_5_clk));
 sky130_fd_sc_hd__clkbuf_16 delaybuf_5_clk (.A(delaynet_5_clk),
    .X(delaynet_6_clk));
 sky130_fd_sc_hd__clkbuf_16 delaybuf_6_clk (.A(delaynet_6_clk),
    .X(delaynet_7_clk));
 sky130_fd_sc_hd__clkbuf_16 delaybuf_7_clk (.A(delaynet_7_clk),
    .X(clk_in_regs));
 sky130_fd_sc_hd__clkbuf_16 delaybuf_8_clk (.A(delaynet_8_clk),
    .X(clk_regs));
 assign op[0] = Q_Q_1[1];
 assign read = cntr_op[4];
endmodule
