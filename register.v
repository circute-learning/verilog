`timescale 1ns / 1ps

module register #(parameter w=8)(
input [w-1:0]in,
input clk,reset,
output reg [w-1:0]out
    );
/*
D_flip_flop ff1(in[3],clk,out[3]);
D_flip_flop ff2(in[2],clk,out[2]);
D_flip_flop ff3(in[1],clk,out[1]);
D_flip_flop ff4(in[0],clk,out[0]);
*/

always @(posedge clk)
begin
	if (reset==1)
		out = 0;
	else
		out = in;
end

endmodule
