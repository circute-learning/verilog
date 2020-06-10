`timescale 1ns / 1ps

module up_down_counter(
input clk, reset,up,en,
output reg [2:0]out
    );

always @ (posedge clk)
begin
	if (en==1)
	begin
		if (up==1)
		begin
			if (reset==1 || out==3'b111)
				out = 3'b000;
			else 
				out = out + 3'b001;
		end
		
		else if (up==0)//down
		begin
			if (reset==1 || out==3'b000)
				out = 3'b111;
			else 
				out = out - 3'b001;
		end
	end
	
end

endmodule
