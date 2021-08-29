`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////

//Assignment Number: 1
//Problem number: 1a
//Group Number: 12
//Names of group members: K Sai Santhoshi Niharika(19CS10037),Surkanti Akshitha(19CS30049)

//////////////////////////////////////////////////////////////////////////////////

module RCA_64bit_b;

	// Inputs
	reg [63:0] a;
	reg [63:0] b;
	reg c0;

	// Outputs
	wire [63:0] s;
	wire c;

	// Instantiate the Unit Under Test (UUT)
	RCA_64bit uut (.a(a),.b(b), .c0(c0), .s(s), .c(c));

	initial begin
		// Initialize Inputs
		a = 64'b0000001011101011000000101110101100000010111010110000001011101011;
		b = 64'b0101010101010101000000101110101100000010111010110000001011101011;
		c0 = 1'b0;
		$monitor($time,"\ta=%b\tb=%b\tc0=%b\ts=%b\tc=%b",a,b,c0,s,c);
		
		#1 $finish;
        
		// Add stimulus here

	end
      
endmodule