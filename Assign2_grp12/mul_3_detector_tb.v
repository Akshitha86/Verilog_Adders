`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
//problem no.:3
//semester:5
//group no.:12
//names of group members:K Sai Santhoshi Niharika, Surkanti Akshitha
//
//////////////////////////////////////////////////////////////////////////////////
module mul_3_detector_tb;

	// Inputs
	reg x;
	reg clk;
	reg reset;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mul_3_detector uut (
		.x(x), 
		.clk(clk), 
		.reset(reset), 
		.y(y)
	);
	reg [15:0] ip;
	integer i=0;

	initial begin
		ip=16'b1011001010110101;   //giving the reverse of input value
		reset=1; #20;					//setting clk count for reset=1
		reset=0; #170;					//setting clk count for reset=0
		
	end
	initial begin
		clk=0;							//giving clk value 0
		forever begin
			#10;							//the half cycle time of 10 ns , i.e. CCT of 20 ns
			clk=~clk;					//changing the sign of clk signal
		end
	end
	always@(posedge clk) begin
		x=ip>>i;							//shifting the input by i units
		i=i+1;							//increment of i
	end
      
endmodule
//x=1010110101001101
//y=0000100001110110
