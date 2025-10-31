module fir(
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
    
    dadda1 da0(delayed_signal[0], coeff[0], prod[0]);
    dadda1 da1(delayed_signal[1], coeff[1], prod[1]);
    dadda1 da2(delayed_signal[2], coeff[2], prod[2]);
    dadda1 da3(delayed_signal[3], coeff[3], prod[3]);
    dadda1 da4(delayed_signal[4], coeff[4], prod[4]);
    dadda1 da5(delayed_signal[5], coeff[5], prod[5]);
    dadda1 da6(delayed_signal[6], coeff[6], prod[6]);
    dadda1 da7(delayed_signal[7], coeff[7], prod[7]);
    dadda1 da8(delayed_signal[8], coeff[8], prod[8]);
    
    
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

module dadda1(input [15:0]a,b, output [31:0]out);
  wire sign;
  assign sign = a[15] ^ b[15];

  // absolute values (16-bit) - dataflow style
  wire [15:0] abs_a;
  wire [15:0] abs_b;
  // (~a + 1) is two's complement negation
  assign abs_a = a[15] ? (~a + 16'd1) : a;
  assign abs_b = b[15] ? (~b + 16'd1) : b;
  
  wire [15:0]p[15:0];
  assign p[0]={16{abs_b[0]}} & abs_a;
  assign p[1]={16{abs_b[1]}} & abs_a;
  assign p[2]={16{abs_b[2]}} & abs_a;
  assign p[3]={16{abs_b[3]}} & abs_a;
  assign p[4]={16{abs_b[4]}} & abs_a;
  assign p[5]={16{abs_b[5]}} & abs_a;
  assign p[6]={16{abs_b[6]}} & abs_a;
  assign p[7]={16{abs_b[7]}} & abs_a;
  assign p[8]={16{abs_b[8]}} & abs_a;
  assign p[9]={16{abs_b[9]}} & abs_a;
  assign p[10]={16{abs_b[10]}} & abs_a;
  assign p[11]={16{abs_b[11]}} & abs_a;
  assign p[12]={16{abs_b[12]}} & abs_a;
  assign p[13]={16{abs_b[13]}} & abs_a;
  assign p[14]={16{abs_b[14]}} & abs_a;
  assign p[15]={16{abs_b[15]}} & abs_a;
  
  //stage 0
  wire [11:0]s0,c0;
  setfa #(6) s0fa0({p[3][15],p[2][15],p[1][15],p[0][15:13]},{p[4][14],p[3][14],p[2][14],p[1][14:12]},{p[5][13],p[4][13],p[3][13],p[2][13:11]},s0[5:0],c0[5:0]);
  setfa #(4) s0fa1({p[5][12],p[4][12],p[3][12:11]},{p[6][11],p[5][11],p[4][11:10]},{p[7][10],p[6][10],p[5][10:9]},s0[9:6],c0[9:6]);
  setfa #(2) s0fa2({p[7][9],p[6][9]},{p[8][8],p[7][8]},{p[9][7],p[8][7]},s0[11:10],c0[11:10]);
  
  //stage 1
  wire [43:0]s1,c1;
  setfa #(14) s1fa0({p[7][15],p[6][15],p[5][15],c0[5],s0[5:0],p[0][12:9]},{p[8][14],p[7][14],p[6][14],p[4][15],c0[4:0],p[3][10],p[1][11:8]},{p[9][13],p[8][13],p[7][13],p[5][14],c0[9],s0[9:6],p[4][9],p[2][10:7]},s1[13:0],c1[13:0]);
  setfa #(12) s1fa1({p[9][12],p[8][12],p[6][13:12],c0[8:6],p[6][8],p[5][8],p[3][9:7]},{p[10][11],p[9][11],p[7][12:11],c0[11],s0[11:10],p[7][7],p[6][7],p[4][8:6]},{p[11][10],p[10][10],p[8][11:9],c0[10],p[9][6],p[8][6],p[7][6],p[5][7:5]},s1[25:14],c1[25:14]);
  setfa #(10) s1fa2({p[11][9],p[9][10:8],p[10][6:5],p[9][5],p[8][5],p[6][6],p[6][5]},{p[12][8],p[10][9:7],p[11][5:4],p[10][4],p[9][4],p[7][5:4]},{p[13][7],p[11][8:6],p[12][4:3],p[11][3],p[10][3],p[8][4:3]},s1[35:26],c1[35:26]);
  setfa #(8) s1fa3({p[12][7:5],p[13][3:2],p[12][2],p[11][2],p[9][3]},{p[13][6:4],p[14][2:1],p[13][1],p[12][1],p[10][2]},{p[14][5:3],p[15][1:0],p[14][0],p[13][0],p[11][1]},s1[43:36],c1[43:36]);
  
  //stage 2
  wire [53:0]s2,c2;
  setfa #(20) s2fa0({p[10][15],p[9][15],c1[13],s1[13:0],p[0][8:6]},{p[11][14],p[10][14],p[8][15],c1[12:0],p[3][6],p[1][7:5]},{p[12][13],p[11][13],p[9][14],c1[25],s1[25:14],p[4][5],p[2][6:4]},s2[19:0],c2[19:0]);
  setfa #(18) s2fa1({p[12][12],p[10][13:12],c1[24:14],p[6][4],p[5][4],p[3][5:4]},{p[13][11],p[11][12:11],c1[35],s1[35:26],p[7][3],p[6][3],p[4][4:3]},{p[14][10],p[12][11:9],c1[34:26],p[9][2],p[8][2],p[7][2],p[5][3],p[5][2]},s2[37:20],c2[37:20]);
  setfa #(8) s2fa2({p[13][10:8],c1[43],s1[43:41],p[6][2]},{p[14][9:6],c1[42:40],p[7][1]},{p[15][8:2],p[8][0]},{s2[53:47],s2[38]},{c2[53:47],c2[38]});
  setha #(8) s2ha0({s1[40:36],p[10][1],p[9][1],p[8][1]},{c1[39:36],p[12][0],p[11][0],p[10][0],p[9][0]},s2[46:39],c2[46:39]);
  
  //stage 3
  wire [45:0]s3,c3;
  setfa #(24) s3fa0({p[12][15],c2[19],s2[19:0],p[0][5],p[0][4]},{p[13][14],p[11][15],c2[18:0],p[3][3],p[1][4],p[1][3]},{p[14][13],p[12][14],c2[37],s2[37:20],p[4][2],p[2][3],p[2][2]},s3[23:0],c3[23:0]);
  setfa #(19) s3fa1({p[13][13:12],c2[36:21],p[3][2]},{p[14][12:11],c2[53],s2[53:39],p[4][1]},{p[15][11:9],c2[52:38],p[5][0]},{s3[45:28],s3[24]},{c3[45:28],c3[24]});
  setha #(3) s3ha0({c2[20],p[6][1],p[5][1]},{s2[38],p[7][0],p[6][0]},s3[27:25],c3[27:25]); 
  
  //stage 4
  wire [25:0]s4,c4;
   setfa #(26) s4fa0({p[13][15],s3[23:0],p[0][3]},{c3[23:0],p[3][1],p[1][2]},{p[14][14],c3[45],s3[45:24],p[4][0],p[2][1]},s4,c4);
   
   //stage 5
   wire [27:0]s5,c5;
   setfa #(25) s5fa0({c4[25],s4[25:3],p[0][2]},{p[14][15],c4[24:2],p[1][1]},{p[15][14:12],c3[44:24],p[2][0]},{s5[27:4],s5[0]},{c5[27:4],c5[0]});
   setha #(3) s5ha0(s4[2:0],{c4[1:0],p[3][0]},s5[3:1],c5[3:1]);
   
   //stage 6
   wire [31:0]s6;
   wire xyz;
   KSA32 finaladder32bit({{1'b0},p[15][15],s5,p[0][1:0]},{{1'b0},c5,{1'b0},p[1][0],{1'b0}},{1'b0},s6,xyz);
   
   //reassign of the sign to the value
  wire [31:0]nextinp;
  wire gnd;
  inv32bits inv0(s6,sign,nextinp);
  KSA32 lastadder(nextinp,{32'b0},sign,out,gnd);

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

module KSA32(
    input  [31:0] A,
    input  [31:0] B,
    input         Cin,
    output [31:0] Sum,
    output        Cout
);
    KoggeStoneAdder #(.WIDTH(32)) ksa32 (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));
endmodule
