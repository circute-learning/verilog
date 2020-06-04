`timescale 1ns / 1ps


module reg_reset_test;

	// Inputs
	reg [7:0] in;
	reg clk;
	reg reset;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	register uut (
		.in(in), 
		.clk(clk), 
		.reset(reset), 
		.out(out)
	);
	
	always
	#10 clk = ~clk;
	
	initial begin
		// Initialize Inputs
		in = 0;
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		in = 8'b11110000;
		reset = 0;
		#100;
		
		in = 8'b11110000;
		reset = 1;
		#100 $finish;
        
		// Add stimulus here

	end
      
endmodule

