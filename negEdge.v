module negEdge(i,o);

input i;
output o;

reg o;

always@(negedge i)

	
	begin
		o = 1;
	end

endmodule