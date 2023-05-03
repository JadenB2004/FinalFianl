module push_available(Clk,state,A0,A1,O,U,push,pop);
input Clk,state;
output A0,A1,O,U,pop,push;

integer cursor;

reg A0,A1,O,U,pop,push;
initial
begin
cursor = 0;
pop = 0;
push = 0;
O = 0;
U= 0;



end

always@(negedge Clk)
		
	begin
		case(cursor)
		0:
			begin
				if(state == 1)
				begin
					cursor = cursor+1;
					A0 = 0;
					A1 = 0;
					push = 1;
					pop = 0;
					U=0;
				end
				else if(state == 0) 
				begin
				cursor = cursor;
				U=1;
				end
			end
		
		1:
			begin
				if(state == 1)
				begin
					cursor = cursor+1;
					A0 = 1;
					A1 = 0;
					push = 1;
					pop = 0;
					
				end
				else if(state == 0) 
				begin
				cursor = cursor-1;
					A0 = 0;
					A1 = 0;
					push = 0;
					pop = 1;
				end
			end
		
		2:
			
			begin
				if(state == 1)
				begin
					cursor = cursor+1;
					A1 = 1;
					A0 = 0;
				
					push = 1;
					pop = 0;
				end
				else if(state == 0) 
				begin
				cursor = cursor-1;
					A1 = 0;
					A0 = 1;
				
					push = 0;
					pop = 1;
				end
			end
		3:
			
			begin
			if(state == 1)
			begin
				cursor = cursor+1;
				A1 = 1;
				A0 = 1;
				
				push = 1;
				pop = 0;
			end
			else if(state == 0) 
			begin
			cursor = cursor-1;
				A1 = 1;
				A0 = 0;
				
				push = 0;
				pop = 1;
			end
			end
			
		4:
			
				
			begin
				if(state == 1)
				begin
					O = 1;
				end
				else if(state == 0) 
				begin
				cursor = cursor-1;
					A1 = 1;
					A0 = 1;
				
					push = 0;
					pop = 1;
					O=0;
				end
			end
			
			
		endcase
	end






endmodule