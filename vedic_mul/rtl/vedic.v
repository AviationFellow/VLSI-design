// TOP MODULE - Remove VDD/VSS ports
module vedic1(
    input  [15:0] a, b,
    output [31:0] c
);
    wire sign;
    wire [31:0] unsign;
    assign sign = a[15] ^ b[15];

    // Absolute values (16-bit)
    wire [15:0] abs_a, abs_b;
    assign abs_a = a[15] ? (~a + 16'd1) : a;
    assign abs_b = b[15] ? (~b + 16'd1) : b;
    
    // Core multiplier
    vedic16x16 v0(.a(abs_a), .b(abs_b), .c(unsign));
    
    // Invert if needed
    wire [31:0] nextinp;
    inv32bits inv0(.i(unsign), .sign(sign), .o(nextinp));
    
    // Final adder - ignore carry out
    KSA32 lastadder(.A(nextinp), .B(32'b0), .Cin(sign), .Sum(c), .Cout());
endmodule

// VEDIC 16x16 - Remove VDD/VSS
module vedic16x16(
    input  [15:0] a, b,
    output [31:0] c
);
    wire [15:0] q0, q1, q2, q3, q4;
    wire [23:0] q5, q6;
    wire [15:0] temp1;
    wire [23:0] temp2, temp3, temp4;
    
    // 4x 8x8 multipliers
    vedic_8X8 z1(.a(a[7:0]),   .b(b[7:0]),   .c(q0));
    vedic_8X8 z2(.a(a[15:8]),  .b(b[7:0]),   .c(q1));
    vedic_8X8 z3(.a(a[7:0]),   .b(b[15:8]),  .c(q2));
    vedic_8X8 z4(.a(a[15:8]),  .b(b[15:8]),  .c(q3));

    // Stage 1 adders
    assign temp1 = {8'b0, q0[15:8]};
    KoggeStoneAdder #(16) z5(.A(q1), .B(temp1), .Cin(1'b0), .Sum(q4), .Cout());
    
    assign temp2 = {8'b0, q2};
    assign temp3 = {q3, 8'b0};
    KoggeStoneAdder #(24) z6(.A(temp2), .B(temp3), .Cin(1'b0), .Sum(q5), .Cout());
    
    assign temp4 = {8'b0, q4};
    
    // Stage 2 adder
    KoggeStoneAdder #(24) z7(.A(temp4), .B(q5), .Cin(1'b0), .Sum(q6), .Cout());
    
    // Final output
    assign c[7:0]   = q0[7:0];
    assign c[31:8]  = q6[23:0];
endmodule

// VEDIC 2x2 - Remove VDD/VSS
module vedic_2_x_2(
    input  [1:0] a, b,
    output [3:0] c
);
    wire [3:0] temp;
    
    // Stage 1: Vedic multiplication
    assign c[0]    = a[0] & b[0]; 
    assign temp[0] = a[1] & b[0];
    assign temp[1] = a[0] & b[1];
    assign temp[2] = a[1] & b[1];
    
    // Stage 2: Half adders
    ha z1(.a(temp[0]), .b(temp[1]), .s(c[1]), .ca(temp[3]));
    ha z2(.a(temp[2]), .b(temp[3]), .s(c[2]), .ca(c[3]));
endmodule

// VEDIC 4x4 - Remove VDD/VSS
module vedic_4_x_4(
    input  [3:0] a, b,
    output [7:0] c
);
    wire [3:0] q0, q1, q2, q3, q4, temp1;
    wire [5:0] q5, q6, temp2, temp3, temp4;
    
    // 4x 2x2 multipliers
    vedic_2_x_2 z1(.a(a[1:0]), .b(b[1:0]), .c(q0));
    vedic_2_x_2 z2(.a(a[3:2]), .b(b[1:0]), .c(q1));
    vedic_2_x_2 z3(.a(a[1:0]), .b(b[3:2]), .c(q2));
    vedic_2_x_2 z4(.a(a[3:2]), .b(b[3:2]), .c(q3));
    
    // Stage 1 adders
    assign temp1 = {2'b0, q0[3:2]};
    KoggeStoneAdder #(4) z5(.A(q1), .B(temp1), .Cin(1'b0), .Sum(q4), .Cout());
    
    assign temp2 = {2'b0, q2};
    assign temp3 = {q3, 2'b0};
    KoggeStoneAdder #(6) z6(.A(temp2), .B(temp3), .Cin(1'b0), .Sum(q5), .Cout());
    
    assign temp4 = {2'b0, q4};
    
    // Stage 2 adder
    KoggeStoneAdder #(6) z7(.A(temp4), .B(q5), .Cin(1'b0), .Sum(q6), .Cout());
    
    // Final output
    assign c[1:0] = q0[1:0];
    assign c[7:2] = q6[5:0];
endmodule

// VEDIC 8x8 - Remove VDD/VSS
module vedic_8X8(
    input  [7:0]  a, b,
    output [15:0] c
);
    wire [7:0]  q0, q1, q2, q3, q4, temp1;
    wire [11:0] q5, q6, temp2, temp3, temp4;
    
    // 4x 4x4 multipliers
    vedic_4_x_4 z1(.a(a[3:0]), .b(b[3:0]), .c(q0));
    vedic_4_x_4 z2(.a(a[7:4]), .b(b[3:0]), .c(q1));
    vedic_4_x_4 z3(.a(a[3:0]), .b(b[7:4]), .c(q2));
    vedic_4_x_4 z4(.a(a[7:4]), .b(b[7:4]), .c(q3));

    // Stage 1 adders
    assign temp1 = {4'b0, q0[7:4]};
    KoggeStoneAdder #(8) z5(.A(q1), .B(temp1), .Cin(1'b0), .Sum(q4), .Cout());
    
    assign temp2 = {4'b0, q2};
    assign temp3 = {q3, 4'b0};
    KoggeStoneAdder #(12) z6(.A(temp2), .B(temp3), .Cin(1'b0), .Sum(q5), .Cout());
    
    assign temp4 = {4'b0, q4};
    
    // Stage 2 adder
    KoggeStoneAdder #(12) z7(.A(temp4), .B(q5), .Cin(1'b0), .Sum(q6), .Cout());
    
    // Final output
    assign c[3:0]  = q0[3:0];
    assign c[15:4] = q6[11:0];
endmodule

// KOGGE-STONE ADDER - Remove VDD/VSS
module KoggeStoneAdder #(parameter WIDTH = 32)(
    input  [WIDTH-1:0] A, B,
    input              Cin,
    output [WIDTH-1:0] Sum,
    output             Cout
);
    // [Keep your existing KSA logic - just remove VDD/VSS ports]
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

    wire [WIDTH-1:0] g, p;
    assign g = A & B;
    assign p = A ^ B;

    wire [WIDTH-1:0] G [0:LEVELS];
    wire [WIDTH-1:0] P [0:LEVELS];

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

    wire [WIDTH:0] C;
    assign C[0] = Cin;

    generate
        for (i = 1; i <= WIDTH; i = i + 1) begin : carry_gen
            assign C[i] = G[LEVELS][i-1] | (P[LEVELS][i-1] & Cin);
        end
    endgenerate

    assign Sum = p ^ C[WIDTH-1:0];
    assign Cout = C[WIDTH];
endmodule

// HALF ADDER - Remove VDD/VSS
module ha(
    input  a, b,
    output s, ca
);
    assign s = a ^ b;
    assign ca = a & b;
endmodule

// KSA32 Wrapper - Remove VDD/VSS
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

// INV32BITS - Remove VDD/VSS
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

