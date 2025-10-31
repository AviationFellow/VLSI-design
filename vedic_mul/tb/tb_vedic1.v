module tb_vedic1;
reg [15:0] a,b;
wire [31:0]out;

vedic1 DUT(.a(a),.b(b),.c(out));

initial begin
	$dumpfile("vedic_mul.vcd");
	$dumpvars(0, tb_vedic1);

	a=16'd0;b=16'd0;#20;
	a=16'd4556; b=16'd44852;#20;
	a=16'd8569; b=16'd56897;#20;
	a=16'd854; b=16'd753;#20;
 	a=16'd1; b=16'd65535;#20;

	$finish; 
end


endmodule
