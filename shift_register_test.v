`timescale 1ns / 1ps


module shift_register_test;

	// Inputs
	reg data;
	reg reset;
	reg clk;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	shift_register uut (
		.data(data), 
		.reset(reset), 
		.clk(clk), 
		.out(out)
	);
	
	always
	#10 clk = ~clk;

	initial begin
		// Initialize Inputs
		data = 0;
		reset = 1;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#20;
		
		reset = 0;
		data = 1;
		#100;
		
		data = 0;
		#100 $finish;
		
        
		// Add stimulus here

	end
      
endmodule

