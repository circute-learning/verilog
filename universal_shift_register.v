`timescale 1ns / 1ps

module universal_shift_register #(parameter w=4)(
input [w-1:0]in,
input msb,lsb,reset,clk,
input [1:0]s,
output reg [w-1:0]out
    );

always @ (posedge clk)
begin
	if (reset==1)
		out = 0;
	else
	begin
		case(s)
		2'b00: out = out; //nit chnage
		2'b01: out = {msb,out[w-1:1]}; //shift right
		2'b10: out = {out[w-2:0],lsb}; //shift left
		2'b11: out = in; //parallel load
		endcase
	end
end

endmodule
