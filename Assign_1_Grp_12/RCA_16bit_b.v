`timescale 1ns / 1ps

/////////////////////////////////////////////////////////////////////////////////

//Assignment Number: 1
//Problem number: 1a
//Group Number: 12
//Names of group members: K Sai Santhoshi Niharika(19CS10037),Surkanti Akshitha(19CS30049)

//////////////////////////////////////////////////////////////////////////////////

module RCA_16bit_b;

	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	reg c0;

	// Outputs
	wire [15:0] s;
	wire c;

	// Instantiate the Unit Under Test (UUT)
	RCA_16bit uut (.a(a), .b(b), .c0(c0), .s(s), .c(c));

	initial begin
		// Initialize Inputs
		a = 16'b0000001011101011;
		b = 16'b0101010101010101;
		c0 = 1'b0;
		
		$monitor($time,"\ta=%b\tb=%b\tc0=%b\ts=%b\tc=%b",a,b,c0,s,c);

		#1 $finish;

	end
      
endmodule