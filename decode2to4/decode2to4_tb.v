`timescale 1ns/1ns
module decode2to4_tb (Y);
	output[3:0] Y;
	wire [3:0] Y;
	reg Ena, A1, A2;
	
	initial
	begin
		Ena = 1'b0; A1 = 1'b0; A2 = 1'b0;
		#500 Ena = 1;
		#100 A1 = 1'b0; A2 = 1'b1;
		#100 A1 = 1'b1; A2 = 1'b0;
		#100 A1 = 1'b1; A2 = 1'b1;
		#500 Ena = 0;
		#500 $stop;
	end
	
	decode2to4 m0(.Y(Y), .Ena(Ena), .A1(A1), .A2(A2));

endmodule
