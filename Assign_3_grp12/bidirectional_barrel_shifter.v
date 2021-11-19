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
module bidirectional_barrel_shifter(
	input [7:0] in,
	input [2:0] shamt,
	input dir,
	output [7:0] out
	);

	 reg [7:0] x2,x3,x1;
	 wire [7:0] y1,y2;
	 always @* begin
	 	if(dir==1)
			x1={in[3:0],4'b0};
	   else
			x1={4'b0,in[7:4]};
	 end
	 mux m1(.d1(in),.d0(x1),.s(shamt[2]),.out(y1));
	 
	 always @* begin
	 	if(dir==1)
			x2={y1[5:0],2'b0};
	   else
			x2={2'b0,y1[7:2]};
	 end
	 mux m2(.d1(y1),.d0(x2),.s(shamt[1]),.out(y2));
	 
	 always @* begin
	 	if(dir==1)
			x3={y2[6:0],1'b0};
	   else
			x3={1'b0,y2[7:1]};
	 end
	 mux m3(.d1(y2),.d0(x3),.s(shamt[0]),.out(out));
	 
endmodule

module mux(
    input [7:0] d1,
    input [7:0] d0,
    input s,
    output [7:0] out
    );
	 
	 assign out=s?d0:d1;

endmodule

