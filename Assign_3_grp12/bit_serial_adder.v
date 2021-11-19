`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////
//
//problem no.:2
//Assignment No:6
//semester:5
//group no.:12
//names of group members:K Sai Santhoshi Niharika, Surkanti Akshitha
//
///////////////////////////////////////////////////////////////////////////

module FA(
		input a,b,cin,
		output s,cout
	);
	assign {cout, s} = a + b + cin;

endmodule

// D - flip flop
module DFF(
		input clk,reset,D,cin, 
		output reg Q
	);
	
	always @(posedge clk or posedge reset) // If rst = 0, normal functioning ; else assign the intial carry in
	begin
		if(reset)
			Q=cin;
		else
			Q=D;
	end
endmodule

// parallel in serial out shift register
module PISO(
	input [7:0] a,
	input clk,load,reset,
	output reg [7:0] out
	);

	always @(posedge clk or posedge reset or load)
	begin
		// if reset = 1, then out = 0
		if(reset==1)
			out=8'b0;
		// if reset = 0, load =1, then out = input
		else if(load==1)
			out=a;
		else // if reset =, load =0, shifting
			out = out/2;
	end
endmodule

// Serial in parallel out shift register
module SIPO(
	input clk,reset,a,
	output reg [7:0] sum
	);

	// flip flop
	always @(posedge clk or posedge reset)
	begin
		if(reset)
			sum=8'b0;
		else
			sum = {a, sum[7:1]};
	end
endmodule

module bit_serial_adder(
		input [7:0] a,b,
		input cin,clk,load,reset,
		output [7:0] sum,
		output cout
    );
	 wire [7:0] w1,w2;
	 wire cst, nst, temp_s;
	 
	 
	 // Serialize the input
	 PISO a1(.a(a),.clk(clk),.load(load),.reset(reset),.out(w1));
	 PISO b1(.a(b),.clk(clk),.load(load),.reset(reset),.out(w2));
	 
	 // pass it to the adder
	 FA f1(.a(w1[0]),.b(w2[0]),.cin(cst),.s(temp_s),.cout(nst));
	 //assign {nst,temp_s} = w1[0]+w2[0]+cst;
	 
	 // Remember the carry 
	 DFF D1(.clk(clk),.reset(reset),.D(nst),.cin(cin),.Q(cst));
	 
	 // Send the output to SIPO module, so that sum can be generated
	 SIPO X(.clk(clk),.reset(reset),.a(temp_s),.sum(sum));
	 
endmodule
