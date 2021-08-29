`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////

//Assignment Number: 1
//Problem number: 1c
//Group Number: 12
//Names of group members: K Sai Santhoshi Niharika(19CS10037),Surkanti Akshitha(19CS30049)

//////////////////////////////////////////////////////////////////////////////////

`include "full_adder.v"

module RCA_4bit(a,b,c0,s,c);
	input [3:0] a;
	input [3:0] b;
	input c0;
	output [3:0]s;
	output c;

	wire[4:0] w;
	assign w[0]=c0;
	
	genvar i;
	generate
		for(i=0;i<4;i=i+1) begin : full_add
				full_adder f(.a(a[i]),.b(b[i]),.c0(w[i]),.s(s[i]),.c(w[i+1]));
		end
	endgenerate
	
	assign c=w[4];

endmodule

//////////////////////////////////////////////////////////////////////////////////

//Delay:               3.244ns (Levels of Logic = 10)

//    Total                      3.244ns (0.497ns logic, 2.747ns route)
//                                       (15.3% logic, 84.7% route)

	 
//////////////////////////////////////////////////////////////////////////////////