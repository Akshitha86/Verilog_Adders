`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////
//
//problem no.:1
//Assignment No:6
//semester:5
//group no.:12
//names of group members:K Sai Santhoshi Niharika, Surkanti Akshitha
//
///////////////////////////////////////////////////////////////////////////

module bidirectional_barrel_shifter_tb;

	// Inputs
	reg [7:0] in;
	reg [2:0] shamt;
	reg dir;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	bidirectional_barrel_shifter uut (
		.in(in), 
		.shamt(shamt), 
		.dir(dir), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		shamt = 0;
		in=0;
		dir=0;
		// Wait 100 ns for global reset to finish
		#10;
		
		// Add stimulus here
		$monitor("in = %b \tshamt=%d \tdir=%d \tout=%b\n", in, shamt, dir, out);
		#10 in = 49; shamt = 3; dir = 0;
		#10 in = 49; shamt = 3; dir = 1;
		#10 in = 37; shamt = 2; dir = 0;
		#10 in = 37; shamt = 2; dir = 1;
		#10 in = 53; shamt = 4; dir = 0;
		#10 in = 53; shamt = 4; dir = 1;
		#10 $finish;
	end
      
endmodule

