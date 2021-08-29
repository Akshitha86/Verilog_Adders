module CLA_16bit_b;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg c0;

	// Outputs
	wire [15:0] sum;
	wire Cout;
	wire PG;
	wire GG;

	// Instantiate the Unit Under Test (UUT)
	CLA_16bit uut (
		.sum(sum), 
		.Cout(Cout), 
		.PG(PG), 
		.GG(GG), 
		.A(A), 
		.B(B), 
		.c0(c0)
	);

	initial begin
		// Initialize Inputs
		A = 16'b0000001011101011;
		B = 16'b0101010101010101;
		 c0= 1'b0;
		$monitor("time=",$time,, "\tA=%b\tB=%b\tCin=%b : Sum=%b\tCout=%b\tPG=%b\tGG=%b",A,B,c0,sum,Cout,PG,GG);
		// Wait 100 ns for global reset to finish
		#1 $finish;
        
		// Add stimulus here

	end
      
endmodule