`timescale 1ns / 1ps

/////////////////////////////////////////////////////////////////////////////////

//Assignment Number: 1
//Problem number: 1a
//Group Number: 12
//Names of group members: K Sai Santhoshi Niharika(19CS10037),Surkanti Akshitha(19CS30049)

//////////////////////////////////////////////////////////////////////////////////

module half_adder_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire s;
	wire c;

	// Instantiate the Unit Under Test (UUT)
	half_adder uut (.a(a), .b(b), .s(s), .c(c));

	initial begin
		
		
		#1; 
		a=1'b0;
		b=1'b0; 
		
		$monitor($time,"\ta=%b\tb=%b\ts=%b\tc=%b",a,b,s,c);

		#1;
		a=1'b0;
		b=1'b1;                        

		#1; 
		a=1'b1;
		b=1'b0;                        

		#1;
		a=1'b1;
		b=1'b1;  
		
		#1 $finish;
     
	end
      
endmodule