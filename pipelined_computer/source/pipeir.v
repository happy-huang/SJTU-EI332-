module pipeir(pc4,ins,wpcir,clock,resetn,dpc4,inst);
	input [31:0] pc4, ins;
	input clock, resetn, wpcir;
	
	output [31:0] inst, dpc4;
	
	reg[31:0] dpc4, inst;
	
	always @(posedge clock)
	begin 
		if (~resetn)
			begin
			dpc4 <= 0;
			inst <= 0;
			end
		else
			begin 
			if (wpcir) 
				begin 
				inst <= ins;
				dpc4 <= pc4;
				end
			end
	end
endmodule
		