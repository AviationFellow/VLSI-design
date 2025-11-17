module M_register (Q,clk,rst,Data);
  input [15:0]Data;
  input clk,rst;
  output [15:0]Q;
  
  genvar i;
  generate 
    for (i=0; i<16; i=i+1) begin
      d_ff d_ureg0(Q[i],,clk,rst,Data[i]);
    end
    endgenerate
endmodule
