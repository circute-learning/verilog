`timescale 1ns / 1ps

module shift_register #(parameter w=8)(
input data,reset,clk,
output reg [w-1:0]out
    );
	 
always @ (posedge clk)
begin
	if (reset==1)
		out = 0;
	else
		out = {out[w-2:0],data}; //shift left
end


endmodule
