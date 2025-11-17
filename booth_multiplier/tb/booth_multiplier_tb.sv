`timescale 1ns/1ps

module booth_multiplier_tb();
  wire signed [31:0]op, expected;
  wire read,busy;
  reg signed [15:0]A[0:4];
  reg signed [15:0]B[0:4];
  reg signed [15:0]multiplicand, multiplier;
  reg clk, rst;
  integer i,ini;
  
  booth_multiplier DUT(op, read, busy, multiplicand, multiplier, clk, rst);
  
  assign expected = multiplicand * multiplier;
  
  initial begin
    $dumpfile("booth_multiplier.vcd");
    $dumpvars(0, booth_multiplier_tb);
    rst = 0;
    clk=0;
    i=0;
    ini=0;

  A[0] = 16'h4828;
  A[1] = 16'h5689;
  A[2] = 16'h4253;
  A[3] = 16'hba79;
  A[4] = 16'hdbb9;

  B[0] = 16'h2929;
  B[1] = 16'h2dcb;
  B[2] = 16'hf234;
  B[3] = 16'ha763;
  B[4] = 16'hffe8;

  end
  initial forever #10 clk = ~clk;
  always @ (posedge clk) begin
    if ({read,busy}==2'b00 && ini == 0) begin
      rst = 1;
      ini = 1;
      multiplicand = A[i];
      multiplier = B[i];
      end
    else if ({read,busy}==2'b01)begin
      ini=0;
      end
    else if ({read,busy}==2'b10) begin
      $display("The multiplication of A:%d (0x%0h), B:%d (0x%0h)from Booth_Multipler: %d (0x%0h):: Expected : %d",multiplicand,multiplicand,multiplier,multiplier,op,op,expected);
      i=i+1;
      rst=0;
      end
    if (i == 5) $finish;  
  end
endmodule

