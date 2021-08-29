`timescale 1ns / 1ps

module RCA_4bit_b;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Cin;

	// Outputs
	wire [3:0] S;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	RCA_4bit uut (.a(A), .b(B), .c0(Cin), .s(S), .c(Cout));

	initial begin
		// Initialize Inputs
		A=4'b0001;B=4'b0000;Cin=1'b0;
		$monitor("time=",$time,, "\tA=%b\tB=%b\tCin=%b :\tSum=%b\tCout=%b",A,B,Cin,S,Cout);
		#1; A=4'b1000;B=4'b0011;Cin=1'b0;
		#1; A=4'b1101;B=4'b1010;Cin=1'b1;
      #1; A=4'b1110;B=4'b1001;Cin=1'b0;
      #1; A=4'b1111;B=4'b1010;Cin=1'b1; 
		#1 $finish;
        
        
		// Add stimulus here

	end
      
endmodule
