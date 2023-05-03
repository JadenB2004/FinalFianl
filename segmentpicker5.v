module segmentpicker(L0,L1,L2,L3,A0,A1,E,Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8,Y9,Y10,Y11,Y12,Y13,Y14,Y15,Clr0,Clr1,Clr2,Clr3);
input L0,L1,L2,L3,A0,A1,E;
output Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8,Y9,Y10,Y11,Y12,Y13,Y14,Y15,Clr0,Clr1,Clr2,Clr3;
reg Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8,Y9,Y10,Y11,Y12,Y13,Y14,Y15,Clr0,Clr1,Clr2,Clr3;
initial
begin
Clr0 = 1;
Clr1 = 1;
Clr2 = 1;
Clr3 = 1;
end

always@(A0||A1||E)

		
	if(E == 1)
	begin
	begin
		if(A1 ==0 & A0 == 0) begin
			Y0 = L0;
			Y1 = L1;
			Y2 = L2;
			Y3 = L3;
			Clr0 = 0;
			Clr1 = 1;
			Clr2 = 1;
			Clr3 = 1;
			
		end else if(A1 ==0 & A0 == 1) begin 
			Y4 = L0;
			Y5 = L1;
			Y6 = L2;
			Y7 = L3;
			Clr0 = 0;
			Clr1 = 0;
			Clr2 = 1;
			Clr3 = 1;
			
		end else if(A1 ==1 & A0 == 0)begin 
			Y8 = L0;
			Y9 = L1;
			Y10 = L2;
			Y11 = L3;
			Clr0 = 0;
			Clr1 = 0;
			Clr2 = 0;
			Clr3 = 1;
			
		end else if(A1 ==1 & A0 == 1)begin 
			Y12 = L0;
			Y13 = L1;
			Y14 = L2;
			Y15 = L3;
			Clr0 = 0;
			Clr1 = 0;
			Clr2 = 0;
			Clr3 = 0;
			
		
		end
	end
	end





endmodule