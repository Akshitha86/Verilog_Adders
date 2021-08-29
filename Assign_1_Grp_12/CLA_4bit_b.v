`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////

//Assignment Number: 1
//Problem number: 2a
//Group Number: 12
//Names of group members: K Sai Santhoshi Niharika(19CS10037),Surkanti Akshitha(19CS30049)

//////////////////////////////////////////////////////////////////////////////////

module CLA_4bit_b;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Cin;

	// Outputs
	wire [3:0] S;
	wire Cout;
	//wire PG;
	//wire GG;

	// Instantiate the Unit Under Test (UUT)
	CLA_4bit uut (.S(S), .Cout(Cout), .A(A), .B(B), .Cin(Cin));

	initial begin
		// Initialize Inputs
		#1  A=4'b0001;B=4'b0000;Cin=1'b0;
		$monitor("time=",$time,, "\tA=%b\tB=%b\tCin=%b :\tSum=%b\tCout=%b",A,B,Cin,S,Cout);
		#1; A=4'b1000;B=4'b0011;Cin=1'b0;
		#1; A=4'b1101;B=4'b1010;Cin=1'b1;
      #1; A=4'b1110;B=4'b1001;Cin=1'b0;
      #1; A=4'b1111;B=4'b1010;Cin=1'b1; 
		#1 $finish;
        
		// Add stimulus here

	end
      
endmodule