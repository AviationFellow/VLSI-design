module eb_adder_top(A,B,Cin,VDD,VSS,Y,Cout);
input [7:0]A,B;
input Cin;
input VDD,VSS;
output [7:0]Y;
output Cout;

eb_adder UUT(.A(A), .B(B), .Cin(Cin), .VDD(VDD), .VSS(VSS), .Y(Y), .Cout(Cout));

endmodule


module eb_adder(A,B,Cin,VDD,VSS,Y,Cout);
input [7:0]A,B;
input Cin;
input VDD,VSS;
output [7:0]Y;
output Cout;
wire x;

CLA4bit C1(A[3:0],B[3:0],Cin,VDD,VSS,Y[3:0],x);
CLA4bit C2(A[7:4],B[7:4],x,VDD,VSS,Y[7:4],Cout);

endmodule

module CLA4bit(A,B,Cin,VDD,VSS,S,Cout);
  input [3:0]A,B; 
  input Cin;
  input VDD,VSS;
  output [3:0] S;
  output Cout;
  wire [3:0] Ci;
  
  assign Ci[0] = Cin;
  assign Ci[1] = (A[0] & B[0]) | ((A[0]^B[0]) & Ci[0]);
  assign Ci[2] = (A[1] & B[1]) | ((A[1]^B[1]) & ((A[0] & B[0]) | ((A[0]^B[0]) & Ci[0])));
  assign Ci[3] = (A[2] & B[2]) | ((A[2]^B[2]) & ((A[1] & B[1]) | ((A[1]^B[1]) & ((A[0] & B[0]) | ((A[0]^B[0]) & Ci[0])))));
  assign Cout  = (A[3] & B[3]) | ((A[3]^B[3]) & ((A[2] & B[2]) | ((A[2]^B[2]) & ((A[1] & B[1]) | ((A[1]^B[1]) & ((A[0] & B[0]) | ((A[0]^B[0]) & Ci[0])))))));

  assign S = A^B^Ci;
endmodule

