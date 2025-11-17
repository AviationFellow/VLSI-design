module d_ff(Q,Qb,clk,rst,D);
	input clk,rst,D;
	output reg Q,Qb;
	initial begin
		Q<=0;
		Qb<=1;
	end

	always @(negedge clk or negedge rst)
	begin
		if(~rst) begin
			Q<=0;
			Qb<=1;
		end
		else begin
			Q<=D;
			Qb<=~D;
		end
	end
endmodule

