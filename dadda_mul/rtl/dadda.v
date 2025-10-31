// ============================================================================
// TOP MODULE - Dadda Tree 16x16 Signed Multiplier
// ============================================================================
module dadda1(
    input  [15:0] a, b,
    output [31:0] out
);
    wire sign;
    assign sign = a[15] ^ b[15];

    // Absolute values (16-bit) - two's complement
    wire [15:0] abs_a, abs_b;
    assign abs_a = a[15] ? (~a + 16'd1) : a;
    assign abs_b = b[15] ? (~b + 16'd1) : b;
    
    // Partial products (16x16 = 256 AND gates)
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
    
    // Stage 0 - Dadda tree reduction (16 → 13)
    wire [11:0] s0, c0;
    setfa #(6) s0fa0(
        .a0({p[3][15], p[2][15], p[1][15], p[0][15:13]}),
        .a1({p[4][14], p[3][14], p[2][14], p[1][14:12]}),
        .a2({p[5][13], p[4][13], p[3][13], p[2][13:11]}),
        .s(s0[5:0]), .co(c0[5:0])
    );
    setfa #(4) s0fa1(
        .a0({p[5][12], p[4][12], p[3][12:11]}),
        .a1({p[6][11], p[5][11], p[4][11:10]}),
        .a2({p[7][10], p[6][10], p[5][10:9]}),
        .s(s0[9:6]), .co(c0[9:6])
    );
    setfa #(2) s0fa2(
        .a0({p[7][9], p[6][9]}),
        .a1({p[8][8], p[7][8]}),
        .a2({p[9][7], p[8][7]}),
        .s(s0[11:10]), .co(c0[11:10])
    );
    
    // Stage 1 - Dadda tree reduction (13 → 9)
    wire [43:0] s1, c1;
    setfa #(14) s1fa0(
        .a0({p[7][15], p[6][15], p[5][15], c0[5], s0[5:0], p[0][12:9]}),
        .a1({p[8][14], p[7][14], p[6][14], p[4][15], c0[4:0], p[3][10], p[1][11:8]}),
        .a2({p[9][13], p[8][13], p[7][13], p[5][14], c0[9], s0[9:6], p[4][9], p[2][10:7]}),
        .s(s1[13:0]), .co(c1[13:0])
    );
    setfa #(12) s1fa1(
        .a0({p[9][12], p[8][12], p[6][13:12], c0[8:6], p[6][8], p[5][8], p[3][9:7]}),
        .a1({p[10][11], p[9][11], p[7][12:11], c0[11], s0[11:10], p[7][7], p[6][7], p[4][8:6]}),
        .a2({p[11][10], p[10][10], p[8][11:9], c0[10], p[9][6], p[8][6], p[7][6], p[5][7:5]}),
        .s(s1[25:14]), .co(c1[25:14])
    );
    setfa #(10) s1fa2(
        .a0({p[11][9], p[9][10:8], p[10][6:5], p[9][5], p[8][5], p[6][6], p[6][5]}),
        .a1({p[12][8], p[10][9:7], p[11][5:4], p[10][4], p[9][4], p[7][5:4]}),
        .a2({p[13][7], p[11][8:6], p[12][4:3], p[11][3], p[10][3], p[8][4:3]}),
        .s(s1[35:26]), .co(c1[35:26])
    );
    setfa #(8) s1fa3(
        .a0({p[12][7:5], p[13][3:2], p[12][2], p[11][2], p[9][3]}),
        .a1({p[13][6:4], p[14][2:1], p[13][1], p[12][1], p[10][2]}),
        .a2({p[14][5:3], p[15][1:0], p[14][0], p[13][0], p[11][1]}),
        .s(s1[43:36]), .co(c1[43:36])
    );
    
    // Stage 2 - Dadda tree reduction (9 → 6)
    wire [53:0] s2, c2;
    setfa #(20) s2fa0(
        .a0({p[10][15], p[9][15], c1[13], s1[13:0], p[0][8:6]}),
        .a1({p[11][14], p[10][14], p[8][15], c1[12:0], p[3][6], p[1][7:5]}),
        .a2({p[12][13], p[11][13], p[9][14], c1[25], s1[25:14], p[4][5], p[2][6:4]}),
        .s(s2[19:0]), .co(c2[19:0])
    );
    setfa #(18) s2fa1(
        .a0({p[12][12], p[10][13:12], c1[24:14], p[6][4], p[5][4], p[3][5:4]}),
        .a1({p[13][11], p[11][12:11], c1[35], s1[35:26], p[7][3], p[6][3], p[4][4:3]}),
        .a2({p[14][10], p[12][11:9], c1[34:26], p[9][2], p[8][2], p[7][2], p[5][3], p[5][2]}),
        .s(s2[37:20]), .co(c2[37:20])
    );
    setfa #(8) s2fa2(
        .a0({p[13][10:8], c1[43], s1[43:41], p[6][2]}),
        .a1({p[14][9:6], c1[42:40], p[7][1]}),
        .a2({p[15][8:2], p[8][0]}),
        .s({s2[53:47], s2[38]}), .co({c2[53:47], c2[38]})
    );
    setha #(8) s2ha0(
        .a0({s1[40:36], p[10][1], p[9][1], p[8][1]}),
        .a1({c1[39:36], p[12][0], p[11][0], p[10][0], p[9][0]}),
        .s(s2[46:39]), .co(c2[46:39])
    );
    
    // Stage 3 - Dadda tree reduction (6 → 4)
    wire [45:0] s3, c3;
    setfa #(24) s3fa0(
        .a0({p[12][15], c2[19], s2[19:0], p[0][5], p[0][4]}),
        .a1({p[13][14], p[11][15], c2[18:0], p[3][3], p[1][4], p[1][3]}),
        .a2({p[14][13], p[12][14], c2[37], s2[37:20], p[4][2], p[2][3], p[2][2]}),
        .s(s3[23:0]), .co(c3[23:0])
    );
    setfa #(19) s3fa1(
        .a0({p[13][13:12], c2[36:21], p[3][2]}),
        .a1({p[14][12:11], c2[53], s2[53:39], p[4][1]}),
        .a2({p[15][11:9], c2[52:38], p[5][0]}),
        .s({s3[45:28], s3[24]}), .co({c3[45:28], c3[24]})
    );
    setha #(3) s3ha0(
        .a0({c2[20], p[6][1], p[5][1]}),
        .a1({s2[38], p[7][0], p[6][0]}),
        .s(s3[27:25]), .co(c3[27:25])
    ); 
    
    // Stage 4 - Dadda tree reduction (4 → 3)
    wire [25:0] s4, c4;
    setfa #(26) s4fa0(
        .a0({p[13][15], s3[23:0], p[0][3]}),
        .a1({c3[23:0], p[3][1], p[1][2]}),
        .a2({p[14][14], c3[45], s3[45:24], p[4][0], p[2][1]}),
        .s(s4), .co(c4)
    );
    
    // Stage 5 - Dadda tree reduction (3 → 2)
    wire [27:0] s5, c5;
    setfa #(25) s5fa0(
        .a0({c4[25], s4[25:3], p[0][2]}),
        .a1({p[14][15], c4[24:2], p[1][1]}),
        .a2({p[15][14:12], c3[44:24], p[2][0]}),
        .s({s5[27:4], s5[0]}), .co({c5[27:4], c5[0]})
    );
    setha #(3) s5ha0(
        .a0(s4[2:0]),
        .a1({c4[1:0], p[3][0]}),
        .s(s5[3:1]), .co(c5[3:1])
    );
    
    // Stage 6 - Final 32-bit addition
    wire [31:0] s6;
    KSA32 finaladder32bit(
        .A({1'b0, p[15][15], s5, p[0][1:0]}),
        .B({1'b0, c5, 1'b0, p[1][0], 1'b0}),
        .Cin(1'b0),
        .Sum(s6),
        .Cout()
    );
    
    // Apply sign correction
    wire [31:0] nextinp;
    inv32bits inv0(.i(s6), .sign(sign), .o(nextinp));
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

