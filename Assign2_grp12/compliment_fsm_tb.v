`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
//problem no.:2
//semester:5
//group no.:12
//names of group members:K Sai Santhoshi Niharika, Surkanti Akshitha
//
//////////////////////////////////////////////////////////////////////////////////
module compliment_fsm_tb;

	// Inputs
	reg x;
	reg clk;
	reg reset;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	compliment_fsm uut (
		.x(x), 
		.clk(clk), 
		.reset(reset), 
		.y(y)
	);
	reg [15:0] ip;
	integer i=0;

	initial begin
		ip=16'b1011001010110101; //giving input value
		reset=1; #30;				 //setting clk count for reset=1
		reset=0; #70;				 //setting clk count for reset=0
		
	end
	initial begin
		clk=0;						//giving clk value 0
		forever begin
			#10;						 //the half cycle time of 10 ns , i.e. CCT of 20 ns
			clk=~clk;				//changing the sign of clk signal
		end
	end
	always@(posedge clk) begin
		x=ip>>i;						//shifting the input by i units
		i=i+1;						//increment of i
	end
	
      
endmodule

//x=1011001010110101
//y=0100110101001011

