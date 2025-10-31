`timescale 1ns / 1ps

module fir_vedic(
    input clk,
    input [1:0] sel,
    input signed [15:0] noisy_signal,
    output signed [15:0] filtered_signal
    );
    
    integer i,j;
    
    reg signed [15:0] coeff [0:8] = {16'h 04F6, 16'h 0AE4, 16'h 1089, 16'h 1496, 16'h 160F, 16'h 1496, 16'h 1089, 16'h 0AE4, 16'h 04F6};
    reg signed [15:0] delayed_signal [0:8];
    reg signed [31:0] prod [0:8];
    reg signed [32:0] sum_0 [0:4];
    reg signed [33:0] sum_1 [0:2];
    reg signed [34:0] sum_2 [0:1]; 
    reg signed [35:0] sum_3;
    
    // Feed the noisy signal input 
    always @(posedge clk)
    begin 
        delayed_signal[0] <= noisy_signal;
        for(i=1; i<=8; i=i+1) begin
            delayed_signal[i] <= delayed_signal[i-1];
        end
    end
    
    vedic1 da0(delayed_signal[0], coeff[0], prod[0]);
    vedic1 da1(delayed_signal[1], coeff[1], prod[1]);
    vedic1 da2(delayed_signal[2], coeff[2], prod[2]);
    vedic1 da3(delayed_signal[3], coeff[3], prod[3]);
    vedic1 da4(delayed_signal[4], coeff[4], prod[4]);
    vedic1 da5(delayed_signal[5], coeff[5], prod[5]);
    vedic1 da6(delayed_signal[6], coeff[6], prod[6]);
    vedic1 da7(delayed_signal[7], coeff[7], prod[7]);
    vedic1 da8(delayed_signal[8], coeff[8], prod[8]);
    
    
    always @(posedge clk)
    begin
        sum_0[0] <= prod[0] + prod[1];
        sum_0[1] <= prod[2] + prod[3];
        sum_0[2] <= prod[4] + prod[5];
        sum_0[3] <= prod[6] + prod[7];
        sum_0[4] <= prod[8];
    end
    
    always @(posedge clk)
    begin
        sum_1[0] <= sum_0[0] + sum_0[1];
        sum_1[1] <= sum_0[2] + sum_0[3];
        sum_1[2] <= sum_0[4];
    end 
    
    always @(posedge clk)
    begin 
        sum_2[0] <= sum_1[0]+sum_1[1];
        sum_2[1] <= sum_1[2];
    end
    
    always @(posedge clk)
    begin
        sum_3 <= sum_2[0]+sum_2[1];
    end
    
    assign filtered_signal = $signed (sum_3[35:14]);
endmodule

module vedic1(input [15:0]a,b, output [31:0]c);
  wire sign;
  wire [31:0]unsign;
  assign sign = a[15] ^ b[15];

  // absolute values (16-bit) - dataflow style
  wire [15:0] abs_a;
  wire [15:0] abs_b;
  // (~a + 1) is two's complement negation
  assign abs_a = a[15] ? (~a + 16'd1) : a;
  assign abs_b = b[15] ? (~b + 16'd1) : b;
  
  vedic16x16 v0(abs_a,abs_b,unsign);
  
  wire [31:0]nextinp;
  wire gnd;
  inv32bits inv0(unsign,sign,nextinp);
  KSA32 lastadder(nextinp,{32'b0},sign,c,gnd);
endmodule

module setfa #(parameter N=13)(input [N-1:0]a0,a1,a2, output [N-1:0]s,co);
genvar i;
generate 
    for (i=0;i<N;i=i+1) begin
        fa fa0(a0[i],a1[i],a2[i],s[i],co[i]);
    end      
endgenerate
endmodule

module setha #(parameter N=13)(input [N-1:0]a0,a1, output [N-1:0]s,co);
genvar i;
generate 
    for (i=0;i<N;i=i+1) begin
        ha ha0(a0[i],a1[i],s[i],co[i]);
    end      
endgenerate
endmodule

module ha(input a,b, output s,ca);
xor xor0(s,a,b);
and and0(ca,a,b);
endmodule

module fa(input a,b,c, output s,ca);
wire x1;
xor xor0(x1,a,b);
xor xor1(s,x1,c);
wire a0,a1,a2;
and and0(a0,a,b);
and and1(a1,b,c);
and and2(a2,a,c);
or o0(ca,a0,a1,a2);
endmodule

module inv32bits(i,sign,o);
input [31:0]i;
input sign;
output [31:0]o;
genvar x;
generate 
    for (x=0;x<32;x=x+1)
        xor x0(o[x],i[x],sign);
endgenerate
endmodule

module KoggeStoneAdder #(parameter WIDTH = 32)(
    input  [WIDTH-1:0] A,
    input  [WIDTH-1:0] B,
    input              Cin,
    output [WIDTH-1:0] Sum,
    output             Cout
);

    // Step 1: Generate and Propagate signals
    wire [WIDTH-1:0] g, p;
    assign g = A & B;
    assign p = A ^ B;

    // Step 2: Carry prefix computation
    // Number of levels = ceil(log2(WIDTH))
    localparam LEVELS = $clog2(WIDTH);
    wire [LEVELS:0][WIDTH-1:0] G, P;

    // Initialize level 0 with bitwise generate/propagate
    assign G[0] = g;
    assign P[0] = p;

    genvar level, i;
    generate
        for (level = 1; level <= LEVELS; level = level + 1) begin : prefix_level
            for (i = 0; i < WIDTH; i = i + 1) begin : prefix_bit
                if (i < (1 << (level-1))) begin
                    // Copy values when no dependency exists
                    assign G[level][i] = G[level-1][i];
                    assign P[level][i] = P[level-1][i];
                end else begin
                    // Black cell: compute new group generate/propagate
                    assign G[level][i] = G[level-1][i] |
                                         (P[level-1][i] & G[level-1][i - (1 << (level-1))]);
                    assign P[level][i] = P[level-1][i] &
                                         P[level-1][i - (1 << (level-1))];
                end
            end
        end
    endgenerate

    // Step 3: Compute carries
    wire [WIDTH:0] C;
    assign C[0] = Cin;

    generate
        for (i = 1; i <= WIDTH; i = i + 1) begin : carry_gen
            assign C[i] = G[LEVELS][i-1] | (P[LEVELS][i-1] & Cin);
        end
    endgenerate

    // Step 4: Final Sum and Cout
    assign Sum = p ^ C[WIDTH-1:0];
    assign Cout = C[WIDTH];

endmodule

module KSA25(
    input  [24:0] A,
    input  [24:0] B,
    input         Cin,
    output [24:0] Sum,
    output        Cout
);
    KoggeStoneAdder #(.WIDTH(25)) ksa25 (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));
endmodule

module KSA32(
    input  [31:0] A,
    input  [31:0] B,
    input         Cin,
    output [31:0] Sum,
    output        Cout
);
    KoggeStoneAdder #(.WIDTH(32)) ksa32 (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));
endmodule

module vedic16x16(input [15:0]a,b, output [31:0]c);
wire [15:0]q0;	
wire [15:0]q1;	
wire [15:0]q2;
wire [15:0]q3;
wire [15:0]temp1;
wire [23:0]temp2;
wire [23:0]temp3;
wire [23:0]temp4;
wire [15:0]q4;
wire [23:0]q5;
wire [23:0]q6;
// using 4 8x8 multipliers
vedic_8X8 z1(a[7:0],b[7:0],q0[15:0]);
vedic_8X8 z2(a[15:8],b[7:0],q1[15:0]);
vedic_8X8 z3(a[7:0],b[15:8],q2[15:0]);
vedic_8X8 z4(a[15:8],b[15:8],q3[15:0]);

// stage 1 adders 
assign temp1 ={8'b0,q0[15:8]};
KoggeStoneAdder #(16) z5(q1[15:0],temp1,{1'b0},q4,);
assign temp2 ={8'b0,q2[15:0]};
assign temp3 ={q3[15:0],8'b0};
KoggeStoneAdder #(24) z6(temp2,temp3,{1'b0},q5,);
assign temp4={8'b0,q4[15:0]};

//stage 2 adder
KoggeStoneAdder #(24) z7(temp4,q5,{1'b0},q6,);
// fnal output assignment 
assign c[7:0]=q0[7:0];
assign c[31:8]=q6[23:0];
    
endmodule


module vedic_2_x_2(a,b,c);
input [1:0]a;
input [1:0]b;
output [3:0]c;
wire [3:0]c;
wire [3:0]temp;
//stage 1
// four multiplication operation of bits accourding to vedic logic done using and gates 
assign c[0]=a[0]&b[0]; 
assign temp[0]=a[1]&b[0];
assign temp[1]=a[0]&b[1];
assign temp[2]=a[1]&b[1];
//stage two 
// using two half adders 
ha z1(temp[0],temp[1],c[1],temp[3]);
ha z2(temp[2],temp[3],c[2],c[3]);
endmodule

module vedic_4_x_4(
a,b,c
    );
input [3:0]a;
input [3:0]b;
output [7:0]c;

wire [3:0]q0;	
wire [3:0]q1;	
wire [3:0]q2;
wire [3:0]q3;	
wire [7:0]c;
wire [3:0]temp1;
wire [5:0]temp2;
wire [5:0]temp3;
wire [5:0]temp4;
wire [3:0]q4;
wire [5:0]q5;
wire [5:0]q6;
// using 4 2x2 multipliers
vedic_2_x_2 z1(a[1:0],b[1:0],q0[3:0]);
vedic_2_x_2 z2(a[3:2],b[1:0],q1[3:0]);
vedic_2_x_2 z3(a[1:0],b[3:2],q2[3:0]);
vedic_2_x_2 z4(a[3:2],b[3:2],q3[3:0]);
// stage 1 adders 
assign temp1 ={2'b0,q0[3:2]};
KoggeStoneAdder #(4) z5(q1[3:0],temp1,{1'b0},q4,);
assign temp2 ={2'b0,q2[3:0]};
assign temp3 ={q3[3:0],2'b0};
KoggeStoneAdder #(6) z6(temp2,temp3,{1'b0},q5,);
assign temp4={2'b0,q4[3:0]};
// stage 2 adder 
KoggeStoneAdder #(6) z7(temp4,q5,{1'b0},q6,);
// fnal output assignment 
assign c[1:0]=q0[1:0];
assign c[7:2]=q6[5:0];
endmodule

module vedic_8X8(a,b,c);
input [7:0]a;
input [7:0]b;
output [15:0]c;

wire [15:0]q0;	
wire [15:0]q1;	
wire [15:0]q2;
wire [15:0]q3;	
wire [15:0]c;
wire [7:0]temp1;
wire [11:0]temp2;
wire [11:0]temp3;
wire [11:0]temp4;
wire [7:0]q4;
wire [11:0]q5;
wire [11:0]q6;
// using 4 4x4 multipliers
vedic_4_x_4 z1(a[3:0],b[3:0],q0[15:0]);
vedic_4_x_4 z2(a[7:4],b[3:0],q1[15:0]);
vedic_4_x_4 z3(a[3:0],b[7:4],q2[15:0]);
vedic_4_x_4 z4(a[7:4],b[7:4],q3[15:0]);

// stage 1 adders 
assign temp1 ={4'b0,q0[7:4]};
KoggeStoneAdder #(8) z5(q1[7:0],temp1,{1'b0},q4,);
assign temp2 ={4'b0,q2[7:0]};
assign temp3 ={q3[7:0],4'b0};
KoggeStoneAdder #(12) z6(temp2,temp3,{1'b0},q5,);
assign temp4={4'b0,q4[7:0]};
// stage 2 adder
KoggeStoneAdder #(12) z7(temp4,q5,{1'b0},q6,);
// fnal output assignment 
assign c[3:0]=q0[3:0];
assign c[15:4]=q6[11:0];
endmodule

module modsel(input [1:0]s,
                input en, 
                output w,d,v
                );
    assign w = (en & ~s[1] & ~s[0]);
    assign d = (en & ~s[1] & s[0]);
    assign v = (en & s[1]);
endmodule

//Transmisson Gates dec.....

module txngate_16x16bit (
    input        s,
    input  [15:0] i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,
    output [15:0] o0,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15
);
    txngate_16bit t0 (s, i0, o0);
    txngate_16bit t1 (s, i1, o1);
    txngate_16bit t2 (s, i2, o2);
    txngate_16bit t3 (s, i3, o3);
    txngate_16bit t4 (s, i4, o4);
    txngate_16bit t5 (s, i5, o5);
    txngate_16bit t6 (s, i6, o6);
    txngate_16bit t7 (s, i7, o7);
    txngate_16bit t8 (s, i8, o8);
    txngate_16bit t9 (s, i9, o9);
    txngate_16bit t10(s, i10,o10);
    txngate_16bit t11(s, i11,o11);
    txngate_16bit t12(s, i12,o12);
    txngate_16bit t13(s, i13,o13);
    txngate_16bit t14(s, i14,o14);
    txngate_16bit t15(s, i15,o15);
endmodule


module txngate_16bit (
    input        s,
    input  [15:0] i,
    output [15:0] o
);
    // Use a mux (safe), not bufif
    assign o = s ? i : 16'b0;
endmodule

module mux3x1(a,b,c,sel,y);
input a,b,c;
input [1:0]sel;
output y;
wire x1;
assign x1=(sel[0])?b:a;
assign y=(sel[1])?c:x1;
endmodule

module out_sel(input [31:0]w,d,v,
               input [1:0]sel,
              output [31:0]f
              );
   genvar i;
   generate 
        for(i=0;i<32;i=i+1) begin
            mux3x1 b0(w[i],d[i],v[i],sel,f[i]);
        end
   endgenerate           
endmodule