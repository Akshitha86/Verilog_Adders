`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////
//
//problem no.:2
//Assignment No:6
//semester:5
//group no.:12
//names of group members:K Sai Santhoshi Niharika, Surkanti Akshitha
//
///////////////////////////////////////////////////////////////////////////

module bit_serial_adder_tb;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg cin;
	reg clk;
	reg load;
	reg reset;
	
	// Outputs
	wire [7:0] sum;
	wire cout;

	// Temp
	reg [4:0] cntr;

	// Instantiate the Unit Under Test (UUT)
	bit_serial_adder uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.clk(clk), 
		.load(load), 
		.reset(reset), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;
		clk = 0;
		load = 0;
		reset = 0;
		cntr = 5'b0;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		// Make load and reset 1
		reset = 1;
		#20;
		
		// Make reset 0, load 1, actual loading happens in PISO shift register 
		reset = 0;
		#20; 
		load = 1; a = 37; b = 49;
		#20;

		end
		
		always
		begin
		
			#50; // Clock cycle of time period 100 ns
			if(cntr == 16) // If clock changes 16 times stop
				$finish;
		
			cntr = cntr + 1; // Increase the number of time clock incresases
			clk = !clk; // Toggle clock
			$monitor("a=%d,b=%d,c_in=%d,sum=%d",a,b,cin,sum);
		end
endmodule

