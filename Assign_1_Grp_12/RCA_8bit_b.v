`timescale 1ns / 1ps

/////////////////////////////////////////////////////////////////////////////////

//Assignment Number: 1
//Problem number: 1a
//Group Number: 12
//Names of group members: K Sai Santhoshi Niharika(19CS10037),Surkanti Akshitha(19CS30049)

//////////////////////////////////////////////////////////////////////////////////

module RCA_8bit_b;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg cin;

	// Outputs
	wire [7:0] s;
	wire c;

	// Instantiate the Unit Under Test (UUT)
	RCA_8bit uut (.a(a), .b(b), .c0(cin), .s(s), .c(c));

	initial begin
		#1; a=8'b00000001;b=8'b00000001;cin=1'b0;
		
		$monitor($time,"\ta=%b\tb=%b\tc0=%b\ts=%b\tc=%b",a,b,cin,s,c);

		#1; a=8'b00000001;b=8'b00000001;cin=1'b1;

		#1; a=8'b00000010;b=8'b00000011;cin=1'b0;

		#1; a=8'b10000001;b=8'b10000001;cin=1'b0;

		#1; a=8'b00011001;b=8'b00110001;cin=1'b0;

		#1; a=8'b00000011;b=8'b00000011;cin=1'b1;

		#1; a=8'b11111111;b=8'b00000001;cin=1'b0;

		#1; a=8'b11111111;b=8'b00000000;cin=1'b1;

		#1; a=8'b11111111;b=8'b11111111;cin=1'b0;
		
		#1 $finish ;

	end
      
endmodule