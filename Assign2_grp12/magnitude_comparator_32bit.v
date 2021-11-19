`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
//problem no.:1
//semester:5
//group no.:12
//names of group members:K Sai Santhoshi Niharika, Surkanti Akshitha
//
//////////////////////////////////////////////////////////////////////////////////

module magnitude_comparator_32bit(
			input [31:0] x1,x2,
			output reg L,E,G
    );
	integer i;
	reg flag;
	always@(x1 or x2) begin
		flag=1'b0;
		for(i=31;i>=0;i=i-1) begin
			if(x1[i]>x2[i]) begin //if x1[i]>x2[i] then G=1,L=0,E=0
				G=1'b1;
				L=1'b0;
				E=1'b0;
				flag=1'b1;			//if x1 and x2 emters if condition assigning flag value as 1
				disable check_equal;
			end
			if(x1[i]<x2[i]) begin //if x1[i]<x2[i] then G=0,L=1,E=0
				G=1'b0;
				L=1'b1;
				E=1'b0;
				flag=1'b1;			//if x1 and x2 emters if condition assigning flag value as 1
				disable check_equal;
			end

		end
		begin:check_equal
			if(~flag) begin	//if flag=0 that means it doesn't go through the above steps then G=0,L=0,E=1
					G=1'b0;
					L=1'b0;
					E=1'b1;	
			end
		end
	end
	
endmodule

