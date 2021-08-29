`timescale 1ns / 1ps

/////////////////////////////////////////////////////////////////////////////////

//Assignment Number: 1
//Problem number: 1b
//Group Number: 12
//Names of group members: K Sai Santhoshi Niharika(19CS10037),Surkanti Akshitha(19CS30049)

//////////////////////////////////////////////////////////////////////////////////

module full_adder_b;

	// Inputs
	reg a;
	reg b;
	reg c0;

	// Outputs
	wire s;
	wire c;

	// Instantiate the Unit Under Test (UUT)
	full_adder uut (.a(a), .b(b), .c0(c0), .s(s), .c(c));

	initial begin
		// Initialize Inputs
		c0 = 1'b0;
		
		#1; a=1'b0; b=1'b0; 
		
		$monitor($time,"\ta=%b\tb=%b\tc0=%b\ts=%b\tc=%b",a,b,c0,s,c);

		#1; a=1'b0; b=1'b1;                        

		#1; a=1'b1; b=1'b0;                        

		#1; a=1'b1; b=1'b1; 
		
		#1; a=1'b0; b=1'b0; 
		
		c0 =1'b1;

		#1; a=1'b0; b=1'b1;                        

		#1; a=1'b1; b=1'b0;                        

		#1; a=1'b1; b=1'b1;
		
		#1 $finish;
	end
      
endmodule