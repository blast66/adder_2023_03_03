module decoder(x0,x1,e,y0,y1,y2,y3);
input x0,x1,e;
output reg y0,y1,y2,y3;

always @(x0 or x1 or e)
	if(e == 1) begin
		y0=0; y1=0; y2=0; y3=0;
	end
	else begin
		if(x0 == 0 & x1 ==0) begin
			y0=1; y1=0; y2=0; y3=0;
		end
		
		else if(x0 == 0 & x1 == 1) begin
			y0=0; y1=1; y2=0; y3=0;
		end
		
		else if(x0 == 1 & x1 == 0) begin
			y0=0; y1=0; y2=1; y3=0;
		end
		
		else if(x0 == 1 & x1 == 1) begin
			y0=0; y1=0; y2=0; y3=1;
		end
	end

endmodule