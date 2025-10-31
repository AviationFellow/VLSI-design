// ============================================================================
// TOP MODULE - Wallace Tree 16x16 Signed Multiplier
// ============================================================================
module wallace1(
    input  [15:0] a, b,
    output [31:0] out
);
    wire sign;
    assign sign = a[15] ^ b[15];

    // Absolute values (16-bit) - two's complement
    wire [15:0] abs_a, abs_b;
    assign abs_a = a[15] ? (~a + 16'd1) : a;
    assign abs_b = b[15] ? (~b + 16'd1) : b;
    
    // Partial products
    wire [15:0] p[15:0];
    assign p[0]  = {16{abs_b[0]}}  & abs_a;
    assign p[1]  = {16{abs_b[1]}}  & abs_a;
    assign p[2]  = {16{abs_b[2]}}  & abs_a;
    assign p[3]  = {16{abs_b[3]}}  & abs_a;
    assign p[4]  = {16{abs_b[4]}}  & abs_a;
    assign p[5]  = {16{abs_b[5]}}  & abs_a;
    assign p[6]  = {16{abs_b[6]}}  & abs_a;
    assign p[7]  = {16{abs_b[7]}}  & abs_a;
    assign p[8]  = {16{abs_b[8]}}  & abs_a;
    assign p[9]  = {16{abs_b[9]}}  & abs_a;
    assign p[10] = {16{abs_b[10]}} & abs_a;
    assign p[11] = {16{abs_b[11]}} & abs_a;
    assign p[12] = {16{abs_b[12]}} & abs_a;
    assign p[13] = {16{abs_b[13]}} & abs_a;
    assign p[14] = {16{abs_b[14]}} & abs_a;
    assign p[15] = {16{abs_b[15]}} & abs_a;
    
    // Stage 0 - Wallace tree reduction
    wire [79:0] s0, c0;
    
    // Stage 0 - Layer 0
    setha #(2)  s0ha0(.a0({p[1][15], p[0][1]}), .a1({p[2][14], p[1][0]}), 
                      .s({s0[15], s0[0]}), .co({c0[15], c0[0]}));
    setfa #(14) s0fa0(.a0(p[0][15:2]), .a1(p[1][14:1]), .a2(p[2][13:0]), 
                      .s(s0[14:1]), .co(c0[14:1]));
    
    // Stage 0 - Layer 1
    setha #(2)  s0ha1(.a0({p[4][15], p[3][1]}), .a1({p[5][14], p[4][0]}), 
                      .s({s0[31], s0[16]}), .co({c0[31], c0[16]}));
    setfa #(14) s0fa1(.a0(p[3][15:2]), .a1(p[4][14:1]), .a2(p[5][13:0]), 
                      .s(s0[30:17]), .co(c0[30:17]));
    
    // Stage 0 - Layer 2
    setha #(2)  s0ha2(.a0({p[7][15], p[6][1]}), .a1({p[8][14], p[7][0]}), 
                      .s({s0[47], s0[32]}), .co({c0[47], c0[32]}));
    setfa #(14) s0fa2(.a0(p[6][15:2]), .a1(p[7][14:1]), .a2(p[8][13:0]), 
                      .s(s0[46:33]), .co(c0[46:33]));
    
    // Stage 0 - Layer 3
    setha #(2)  s0ha3(.a0({p[10][15], p[9][1]}), .a1({p[11][14], p[10][0]}), 
                      .s({s0[63], s0[48]}), .co({c0[63], c0[48]}));
    setfa #(14) s0fa3(.a0(p[9][15:2]), .a1(p[10][14:1]), .a2(p[11][13:0]), 
                      .s(s0[62:49]), .co(c0[62:49]));
    
    // Stage 0 - Layer 4
    setha #(2)  s0ha4(.a0({p[13][15], p[12][1]}), .a1({p[14][14], p[13][0]}), 
                      .s({s0[79], s0[64]}), .co({c0[79], c0[64]}));
    setfa #(14) s0fa4(.a0(p[12][15:2]), .a1(p[13][14:1]), .a2(p[14][13:0]), 
                      .s(s0[78:65]), .co(c0[78:65]));
    
    // Stage 1
    wire [49:0] s1, c1;
    
    // Stage 1 - Layer 0
    ha s1ha0(.a(s0[1]), .b(c0[0]), .s(s1[0]), .ca(c1[0]));
    setfa #(15) s1fa0(.a0({p[2][15], s0[15:2]}), .a1(c0[15:1]), 
                      .a2({s0[29:16], p[3][0]}), .s(s1[15:1]), .co(c1[15:1]));
    
    // Stage 1 - Layer 1
    setha #(5) s1ha1(.a0({p[8][15], s0[47:46], c0[18:17]}), 
                     .a1({c0[47:45], s0[32], p[6][0]}),
                     .s({s1[33:31], s1[17:16]}), .co({c1[33:31], c1[17:16]}));
    setfa #(13) s1fa1(.a0(c0[31:19]), .a1(s0[45:33]), .a2(c0[44:32]), 
                      .s(s1[30:18]), .co(c1[30:18]));
    
    // Stage 1 - Layer 2
    ha s1ha2(.a(s0[49]), .b(c0[48]), .s(s1[34]), .ca(c1[34]));
    setfa #(15) s1fa2(.a0({p[11][15], s0[63:50]}), .a1(c0[63:49]), 
                      .a2({s0[77:64], p[12][0]}), .s(s1[49:35]), .co(c1[49:35]));
    
    // Stage 2
    wire [36:0] s2, c2;
    
    // Stage 2 - Layer 0
    setha #(4) s2ha0(.a0({p[5][15], s0[31], s1[2:1]}), 
                     .a1({s1[30:29], c1[1:0]}),
                     .s({s2[17:16], s2[1:0]}), .co({c2[17:16], c2[1:0]}));
    setfa #(14) s2fa0(.a0({s0[30], s1[15:3]}), .a1(c1[15:2]), 
                      .a2({s1[28:16], c0[16]}), .s(s2[15:2]), .co(c2[15:2]));
    
    // Stage 2 - Layer 1
    setha #(6) s2ha1(.a0({s0[78], s1[49:48], c1[20:18]}), 
                     .a1({c1[49:47], s1[34], s0[48], p[9][0]}),
                     .s({s2[36:34], s2[20:18]}), .co({c2[36:34], c2[20:18]}));
    setfa #(13) s2fa1(.a0(c1[33:21]), .a1(s1[47:35]), .a2(c1[46:34]), 
                      .s(s2[33:21]), .co(c2[33:21]));
    
    // Stage 3
    wire [35:0] s3, c3;
    
    // Stage 3 - Layer 0
    setha #(5) s3ha0(.a0({s1[33:32], s2[3:1]}), .a1({s2[32:31], c2[2:0]}),
                     .s({s3[19:18], s3[2:0]}), .co({c3[19:18], c3[2:0]}));
    setfa #(15) s3fa0(.a0({s1[31], s2[17:4]}), .a1(c2[17:3]), 
                      .a2({s2[30:18], c1[17:16]}), .s(s3[17:3]), .co(c3[17:3]));
    
    // Stage 3 - Layer 1
    ha s3ha1(.a(c2[22]), .b(c0[64]), .s(s3[20]), .ca(c3[20]));
    setfa #(15) s3fa1(.a0({p[14][15], c2[36:23]}), .a1(c0[79:65]), 
                      .a2(p[15][14:0]), .s(s3[35:21]), .co(c3[35:21]));
    
    // Stage 4
    wire [23:0] s4, c4;
    
    // Stage 4 - Layer 0
    setha #(9) s4ha0(.a0({s0[79], s2[36:34], s3[5:1]}), 
                     .a1({s3[34:31], c3[4:0]}),
                     .s({s4[23:20], s4[4:0]}), .co({c4[23:20], c4[4:0]}));
    setfa #(15) s4fa0(.a0({s2[33], s3[19:6]}), .a1(c3[19:5]), 
                      .a2({s3[30:20], c2[21:18]}), .s(s4[19:5]), .co(c4[19:5]));
    
    // Stage 5
    wire [24:0] s5, c5;
    
    // Stage 5 - Layer 0
    setha #(10) s5ha0(.a0({p[15][15], s4[9:1]}), .a1({c3[35], c4[8:0]}),
                      .s({s5[24], s5[8:0]}), .co({c5[24], c5[8:0]}));
    setfa #(15) s5fa0(.a0({s3[35], s4[23:10]}), .a1(c4[23:9]), 
                      .a2(c3[34:20]), .s(s5[23:9]), .co(c5[23:9]));  
    
    // Stage 6 - Final adder (25 bits)
    wire [31:0] abs_out;
    KSA25 laststage(.A({1'b0, s5[24:1]}), .B(c5), .Cin(1'b0), 
                    .Sum(abs_out[31:7]), .Cout());
    assign abs_out[6:0] = {s5[0], s4[0], s3[0], s2[0], s1[0], s0[0], p[0][0]};
    
    // Apply sign correction
    wire [31:0] nextinp;
    inv32bits inv0(.i(abs_out), .sign(sign), .o(nextinp));
    KSA32 lastadder(.A(nextinp), .B(32'b0), .Cin(sign), .Sum(out), .Cout());
endmodule

// ============================================================================
// FULL ADDER ARRAY MODULE
// ============================================================================
module setfa #(parameter N = 13)(
    input  [N-1:0] a0, a1, a2,
    output [N-1:0] s, co
);
    genvar i;
    generate 
        for (i = 0; i < N; i = i + 1) begin : fa_array
            fa fa0(.a(a0[i]), .b(a1[i]), .c(a2[i]), .s(s[i]), .ca(co[i]));
        end      
    endgenerate
endmodule

// ============================================================================
// HALF ADDER ARRAY MODULE
// ============================================================================
module setha #(parameter N = 13)(
    input  [N-1:0] a0, a1,
    output [N-1:0] s, co
);
    genvar i;
    generate 
        for (i = 0; i < N; i = i + 1) begin : ha_array
            ha ha0(.a(a0[i]), .b(a1[i]), .s(s[i]), .ca(co[i]));
        end      
    endgenerate
endmodule

// ============================================================================
// HALF ADDER
// ============================================================================
module ha(
    input  a, b,
    output s, ca
);
    assign s = a ^ b;
    assign ca = a & b;
endmodule

// ============================================================================
// FULL ADDER
// ============================================================================
module fa(
    input  a, b, c,
    output s, ca
);
    wire x1;
    assign x1 = a ^ b;
    assign s = x1 ^ c;
    
    wire a0, a1, a2;
    assign a0 = a & b;
    assign a1 = b & c;
    assign a2 = a & c;
    assign ca = a0 | a1 | a2;
endmodule

// ============================================================================
// 32-BIT INVERTER WITH SIGN CONTROL
// ============================================================================
module inv32bits(
    input  [31:0] i,
    input         sign,
    output [31:0] o
);
    genvar x;
    generate 
        for (x = 0; x < 32; x = x + 1) begin : inv_gen
            assign o[x] = i[x] ^ sign;
        end
    endgenerate
endmodule

// ============================================================================
// 25-BIT KOGGE-STONE ADDER WRAPPER
// ============================================================================
module KSA25(
    input  [24:0] A, B,
    input         Cin,
    output [24:0] Sum,
    output        Cout
);
    KoggeStoneAdder #(.WIDTH(25)) ksa25 (
        .A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout)
    );
endmodule

// ============================================================================
// 32-BIT KOGGE-STONE ADDER WRAPPER
// ============================================================================
module KSA32(
    input  [31:0] A, B,
    input         Cin,
    output [31:0] Sum,
    output        Cout
);
    KoggeStoneAdder #(.WIDTH(32)) ksa32 (
        .A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout)
    );
endmodule

// ============================================================================
// KOGGE-STONE ADDER (PARAMETERIZED)
// ============================================================================
module KoggeStoneAdder #(parameter WIDTH = 32)(
    input  [WIDTH-1:0] A, B,
    input              Cin,
    output [WIDTH-1:0] Sum,
    output             Cout
);
    // Function to compute log2 ceiling
    function integer clog2;
        input integer value;
        integer i;
        begin
            clog2 = 0;
            for (i = value-1; i > 0; i = i >> 1)
                clog2 = clog2 + 1;
        end
    endfunction

    localparam LEVELS = clog2(WIDTH);

    // Step 1: Generate and Propagate signals
    wire [WIDTH-1:0] g, p;
    assign g = A & B;
    assign p = A ^ B;

    // Step 2: Carry prefix computation
    wire [WIDTH-1:0] G [0:LEVELS];
    wire [WIDTH-1:0] P [0:LEVELS];

    // Initialize level 0
    assign G[0] = g;
    assign P[0] = p;

    genvar level, i;
    generate
        for (level = 1; level <= LEVELS; level = level + 1) begin : prefix_level
            for (i = 0; i < WIDTH; i = i + 1) begin : prefix_bit
                if (i < (1 << (level-1))) begin
                    assign G[level][i] = G[level-1][i];
                    assign P[level][i] = P[level-1][i];
                end else begin
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

