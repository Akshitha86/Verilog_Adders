`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
//
//problem no.:1
//semester:5
//group no.:12
//names of group members:K Sai Santhoshi Niharika, Surkanti Akshitha
//
//////////////////////////////////////////////////////////////////////////////////


module LSFR_4bit_tb;

	// Inputs
	reg [3:0] seed;
	reg clk;
	reg reset;
	reg sel;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	LSFR_4bit uut (
		.seed(seed), 
		.clk(clk), 
		.reset(reset), 
		.sel(sel), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		seed = 0;
		clk = 0;
		reset = 1;		// Reset to 1
		sel = 1;		// Slection to 1, as the seed is to be inputted

		#100;

		#15
		reset = 0;
		
		seed = 4'b1111;	// Giving input seed value to 1111
		
		#10 sel = 0;


		// After 15 cycles, the input output again cycles
		#150;
		end
      
	always
		begin
		  #5 clk = !clk;		// Clock that has the half cycle time of 5 ns , i.e. CCT of 10 ns
		end
      
endmodule

