module dff#(parameter DATA_WIDTH=32) (input clk,
				      input reset_n,
				      input [DATA_WIDTH-1:0] d,
				      output reg [DATA_WIDTH-1:0] q
				      );
				  
	always @(posedge clk,negedge reset_n)
	begin
		if(!reset_n)
		q <= 32'b0;
		else
		q <= d;
	end	
			  
endmodule
