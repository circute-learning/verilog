`timescale 1ns / 1ps


module universal_test;

	// Inputs
	reg [3:0] in;
	reg msb;
	reg lsb;
	reg reset;
	reg clk;
	reg [1:0] s;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	universal_shift_register uut (
		.in(in), 
		.msb(msb), 
		.lsb(lsb), 
		.reset(reset), 
		.clk(clk), 
		.s(s), 
		.out(out)
	);
	
	always
	#10 clk = ~clk;
	
	initial begin
		// Initialize Inputs
		in = 0;
		msb = 0;
		lsb = 0;
		reset = 1;
		clk = 0;
		s = 0;
		#100;
		
		reset = 0;
		s = 2'b00;
		in = 4'b1111;
		msb = 1;
		lsb = 1;
		#100;
		
		reset = 1;
		#30;
		
		reset = 0;
		s = 2'b01;
		in = 4'b1111;
		msb = 1;
		lsb = 1;
		#100;
		
		reset = 1;
		#30;
		
		reset = 0;
		s = 2'b10;
		in = 4'b1111;
		msb = 1;
		lsb = 1;
		#100;
		
		reset = 1;
		#30;
		
		reset = 0;
		s = 2'b11;
		in = 4'b1111;
		msb = 1;
		lsb = 1;
		#100 $finish;
        
		// Add stimulus here

	end
      
endmodule

