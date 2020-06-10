`timescale 1ns / 1ps



module counter_test;

	// Inputs
	reg clk;
	reg reset;
	reg up;
	reg en;

	// Outputs
	wire [2:0] out;

	// Instantiate the Unit Under Test (UUT)
	up_down_counter uut (
		.clk(clk), 
		.reset(reset),
		.up(up),
		.en(en),
		.out(out)
	);
	
	always
	#10 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		up = 1;
		en = 1;

		// Wait 100 ns for global reset to finish
		#30;
		reset = 0;
		
		#50;
		en = 0;
		
		#50;
		en = 1;
		
		#200;
		reset = 1;
		up = 0;
		
		#30;
		reset = 0;
		
		#200 $finish;
        
		// Add stimulus here

	end
      
endmodule

