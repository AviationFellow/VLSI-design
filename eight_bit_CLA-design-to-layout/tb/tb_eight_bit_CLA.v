`timescale 1ns/1ps
module tb_eight_bit_CLA;
  reg [7:0] A, B;
  reg Cin;
  wire [7:0] Y;
  wire Cout;

  eb_adder_top UUT (.A(A), .B(B), .Cin(Cin), .VDD(1'b1), .VSS(1'b0), .Y(Y), .Cout(Cout));

  initial begin
    $dumpfile("eight_bit_CLA.vcd");
    $dumpvars(0, tb_eight_bit_CLA);

    A = 8'd0; B = 8'd0; Cin = 0; #10;
    A = 8'd1; B = 8'd2; Cin = 0; #10;
    A = 8'd15; B = 8'd15; Cin = 1; #10;
    A = 8'd100; B = 8'd50; Cin = 0; #10;

    $finish;
  end
endmodule

