`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
//problem no.:4
//semester:5
//group no.:12
//names of group members:K Sai Santhoshi Niharika, Surkanti Akshitha
//
//////////////////////////////////////////////////////////////////////////////////
module magnitude_comparator_32bit_tb;

	// Inputs
	reg [31:0] x1;
	reg [31:0] x2;

	// Outputs
	wire L;
	wire E;
	wire G;

	// Instantiate the Unit Under Test (UUT)
	magnitude_comparator_32bit uut (
		.x1(x1), 
		.x2(x2), 
		.L(L), 
		.E(E), 
		.G(G)
	);
	initial begin
		//example for x1>x2
	  x1 = 32'b00000000010111011111111000000000;										//giving x1 value
	  x2 = 32'b00000000000000000000000110101010;										//giving x2 value
	  $monitor("%d      %d          %d      %d      %d\n",x1,x2,L,E,G);		//monitor function to get output in  the terminal
	  #20;
	  //example for x1<x2
	  x1 = 32'b00000000000000000000000000000011;										//giving x1 value
	  x2 = 32'b00000000000000000010000001000000;										//giving x2 value
	  #20;
	  //example for x1=x2
	  x1 = 32'b00000100000000000000000001000000;										//giving x1 value
	  x2 = 32'b00000100000000000000000001000000;										//giving x2 value
	  #20;	

	end

      
endmodule

