`timescale 1ns / 1ps


module register_test;

	// Inputs
	reg [3:0] in;
	reg clk;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	register uut (
		.in(in), 
		.clk(clk), 
		.out(out)
	);
	
	always
	#10 clk = ~clk;

	initial begin
		// Initialize Inputs
		in = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		in = 4'b1010;
		#100;
		
		in = 4'b1100;
		#100 $finish;
        
		// Add stimulus here

	end
      
endmodule

