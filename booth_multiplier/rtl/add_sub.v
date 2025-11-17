module add_sub(a,b,add_sub,out);
input [15:0]a,b;
input add_sub;
output [15:0]out;
wire [15:0]b_f;
genvar i;
generate 
	for (i=0;i<16;i=i+1) begin
		xor u_xor0 (b_f[i],b[i],add_sub);
	end
endgenerate

kogge_stone_adder add_sub_module (
  .a(a), 
  .b(b_f), 
  .cin(add_sub),  // Explicitly connect cin
  .sum(out), 
  .cout()         // Leave cout unconnected
);

endmodule
