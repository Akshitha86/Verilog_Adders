`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////

//Assignment Number: 1
//Problem number: 1a
//Group Number: 12
//Names of group members: K Sai Santhoshi Niharika(19CS10037),Surkanti Akshitha(19CS30049)

//////////////////////////////////////////////////////////////////////////////////

`include "full_adder.v"

module RCA_64bit(a,b,c0,s,c);
	input [63:0] a;
	input [63:0] b;
	input c0;
	output [63:0]s;
	output c;

	wire[64:0] w;
	assign w[0]=c0;
	
	genvar i;
	generate
		for(i=0;i<64;i=i+1) begin : full_add
				full_adder f(.a(a[i]),.b(b[i]),.c0(w[i]),.s(s[i]),.c(w[i+1]));
		end
	endgenerate
	
	assign c=w[64];

endmodule


//////////////////////////////////////////////////

//Delay:               43.204ns 
//Total                     43.204ns (7.937ns logic, 35.267ns route)
//                                       (18.4% logic, 81.6% route)
//////////////////////////////////////////////////