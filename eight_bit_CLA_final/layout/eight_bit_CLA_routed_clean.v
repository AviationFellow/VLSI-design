module eb_adder_top (Cin,
    Cout,
    VDD,
    VSS,
    A,
    B,
    Y);
 input Cin;
 output Cout;
 input VDD;
 input VSS;
 input [7:0] A;
 input [7:0] B;
 output [7:0] Y;

 wire \UUT/C1/_00_ ;
 wire \UUT/C1/_01_ ;
 wire \UUT/C1/_02_ ;
 wire \UUT/C1/_03_ ;
 wire \UUT/C1/_04_ ;
 wire \UUT/C1/_05_ ;
 wire \UUT/C1/_06_ ;
 wire \UUT/C2/_00_ ;
 wire \UUT/C2/_01_ ;
 wire \UUT/C2/_02_ ;
 wire \UUT/C2/_03_ ;
 wire \UUT/C2/_04_ ;
 wire \UUT/C2/_05_ ;
 wire \UUT/C2/_06_ ;
 wire \UUT/x ;

 sky130_fd_sc_hd__xnor2_1 \UUT/C1/_07_  (.A(B[0]),
    .B(A[0]),
    .Y(\UUT/C1/_00_ ));
 sky130_fd_sc_hd__maj3_1 \UUT/C1/_08_  (.A(B[0]),
    .B(A[0]),
    .C(Cin),
    .X(\UUT/C1/_01_ ));
 sky130_fd_sc_hd__xnor2_1 \UUT/C1/_09_  (.A(B[1]),
    .B(A[1]),
    .Y(\UUT/C1/_02_ ));
 sky130_fd_sc_hd__maj3_1 \UUT/C1/_10_  (.A(B[1]),
    .B(A[1]),
    .C(\UUT/C1/_01_ ),
    .X(\UUT/C1/_03_ ));
 sky130_fd_sc_hd__xnor2_1 \UUT/C1/_11_  (.A(B[2]),
    .B(A[2]),
    .Y(\UUT/C1/_04_ ));
 sky130_fd_sc_hd__maj3_1 \UUT/C1/_12_  (.A(B[2]),
    .B(A[2]),
    .C(\UUT/C1/_03_ ),
    .X(\UUT/C1/_05_ ));
 sky130_fd_sc_hd__xnor2_1 \UUT/C1/_13_  (.A(B[3]),
    .B(A[3]),
    .Y(\UUT/C1/_06_ ));
 sky130_fd_sc_hd__maj3_1 \UUT/C1/_14_  (.A(B[3]),
    .B(A[3]),
    .C(\UUT/C1/_05_ ),
    .X(\UUT/x ));
 sky130_fd_sc_hd__xnor2_1 \UUT/C1/_15_  (.A(Cin),
    .B(\UUT/C1/_00_ ),
    .Y(Y[0]));
 sky130_fd_sc_hd__xnor2_1 \UUT/C1/_16_  (.A(\UUT/C1/_01_ ),
    .B(\UUT/C1/_02_ ),
    .Y(Y[1]));
 sky130_fd_sc_hd__xnor2_1 \UUT/C1/_17_  (.A(\UUT/C1/_03_ ),
    .B(\UUT/C1/_04_ ),
    .Y(Y[2]));
 sky130_fd_sc_hd__xnor2_1 \UUT/C1/_18_  (.A(\UUT/C1/_05_ ),
    .B(\UUT/C1/_06_ ),
    .Y(Y[3]));
 sky130_fd_sc_hd__xnor2_1 \UUT/C2/_07_  (.A(B[4]),
    .B(A[4]),
    .Y(\UUT/C2/_00_ ));
 sky130_fd_sc_hd__maj3_1 \UUT/C2/_08_  (.A(B[4]),
    .B(A[4]),
    .C(\UUT/x ),
    .X(\UUT/C2/_01_ ));
 sky130_fd_sc_hd__xnor2_1 \UUT/C2/_09_  (.A(B[5]),
    .B(A[5]),
    .Y(\UUT/C2/_02_ ));
 sky130_fd_sc_hd__maj3_1 \UUT/C2/_10_  (.A(B[5]),
    .B(A[5]),
    .C(\UUT/C2/_01_ ),
    .X(\UUT/C2/_03_ ));
 sky130_fd_sc_hd__xnor2_1 \UUT/C2/_11_  (.A(B[6]),
    .B(A[6]),
    .Y(\UUT/C2/_04_ ));
 sky130_fd_sc_hd__maj3_1 \UUT/C2/_12_  (.A(B[6]),
    .B(A[6]),
    .C(\UUT/C2/_03_ ),
    .X(\UUT/C2/_05_ ));
 sky130_fd_sc_hd__xnor2_1 \UUT/C2/_13_  (.A(B[7]),
    .B(A[7]),
    .Y(\UUT/C2/_06_ ));
 sky130_fd_sc_hd__maj3_1 \UUT/C2/_14_  (.A(B[7]),
    .B(A[7]),
    .C(\UUT/C2/_05_ ),
    .X(Cout));
 sky130_fd_sc_hd__xnor2_1 \UUT/C2/_15_  (.A(\UUT/x ),
    .B(\UUT/C2/_00_ ),
    .Y(Y[4]));
 sky130_fd_sc_hd__xnor2_1 \UUT/C2/_16_  (.A(\UUT/C2/_01_ ),
    .B(\UUT/C2/_02_ ),
    .Y(Y[5]));
 sky130_fd_sc_hd__xnor2_1 \UUT/C2/_17_  (.A(\UUT/C2/_03_ ),
    .B(\UUT/C2/_04_ ),
    .Y(Y[6]));
 sky130_fd_sc_hd__xnor2_1 \UUT/C2/_18_  (.A(\UUT/C2/_05_ ),
    .B(\UUT/C2/_06_ ),
    .Y(Y[7]));
endmodule
