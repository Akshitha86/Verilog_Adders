`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////
//
//problem no.:3
//Assignment No:6
//semester:5
//group no.:12
//names of group members:K Sai Santhoshi Niharika, Surkanti Akshitha
//
///////////////////////////////////////////////////////////////////////////

module booth_multiplier(
		input clk,
		input reset,
		input load,
		input [7:0] a,
		input [7:0] b,
		output [15:0] out
    );

	reg signed [16:0] A; 		// +ve multiplicand, 
	reg signed [16:0] S;			//-ve multiplicand
	reg signed [16:0] temp;		//temp product,
	reg [7:0] rpli_a, rpli_b;  //Registers for parallel load of input
	reg [3:0] count; 				//count for number of loop
	
	assign out = temp[16:1];
	
	always @(posedge clk or posedge reset) begin // for posedge of clk and reset
		if(reset==1) begin  								// reset everything to 0
			rpli_a <= 0;
			rpli_b <= 0;
			A <= 0;
			S <= 0;
			temp = 0;
			count = 0;
		end
		else if(load==1) begin 	//load data and reset everything else
			rpli_a <= a;
			rpli_b <= b;
			count = 0;
			A <= 0;
			S <= 0;
			temp = 0;
		end
		else if(count==0) begin // assign values to A, S, temp
			A <= rpli_a*2**9;
			S <= -rpli_a*2**9;
			temp = rpli_b*2;
			count = count + 1;
		end
		else if( count <= 8) begin 	// Run the loop for 8 times
			if(temp[0] ^ temp[1] == 0) // If last two significants are the same
				temp = temp/2;
			else if(temp[0]==1) 			// If last 2 significant numbers is 01
				temp = (temp + A)/2;
			else 								// If last 2 significant numbers is 10
				temp = (temp + S)/2;
			temp[16] = temp[15];
			count = count + 1;
		end
	end
	
endmodule