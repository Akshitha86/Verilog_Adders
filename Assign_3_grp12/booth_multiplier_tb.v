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

module booth_multiplier_tb;

	// Inputs
	reg clk;
	reg rst;
	reg load;
	reg signed [7:0] a;
	reg signed [7:0] b;

	// Outputs
	wire signed [15:0] product;

	// Instantiate the Unit Under Test (UUT)
	booth_multiplier uut (
		.clk(clk), 
		.reset(rst), 
		.load(load), 
		.a(a), 
		.b(b), 
		.out(product)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		load = 0;
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
      
		a = 37;
		b = 49;

		#20
		rst = 0;
		load = 1;
		
		#10
		load = 0;
		
		// Add stimulus here
		$monitor("\tclk = %d \trst = %d \tload = %d \ta=%d \tb=%d \tproduct=%d",clk,rst,load,a,b,product);
		#100 $finish;
	end

	always
		#5 clk = !clk;		
      
endmodule

