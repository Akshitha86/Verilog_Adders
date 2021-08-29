`timescale 1ns / 1ps

/////////////////////////////////////////////////////////////////////////////////

//Assignment Number: 1
//Problem number: 1a
//Group Number: 12
//Names of group members: K Sai Santhoshi Niharika(19CS10037),Surkanti Akshitha(19CS30049)

//////////////////////////////////////////////////////////////////////////////////

module RCA_32bit_b;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg c0;

	// Outputs
	wire [31:0] s;
	wire c;

	// Instantiate the Unit Under Test (UUT)
	RCA_32bit uut (.a(a), .b(b), .c0(c0), .s(s), .c(c));

	initial begin
		// Initialize Inputs
		a = 32'b00000010111010110000001011101011;
		b = 32'b01010101010101010000001011101011;
		c0 = 1'b0;
		
		$monitor($time,"\ta=%b\tb=%b\tc0=%b\ts=%b\tc=%b",a,b,c0,s,c);

		// Wait 100 ns for global reset to finish
		#10 $finish;
        
		// Add stimulus here

	end
      
endmodule