`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
//problem no.:2
//semester:5
//group no.:12
//names of group members:K Sai Santhoshi Niharika, Surkanti Akshitha
//
//////////////////////////////////////////////////////////////////////////////////
module mul_3_detector(
			input x,clk,reset,
			output reg y
    );
	 reg [1:0] cst,nst;
	 parameter s0=2'b00,s1=2'b01,s2=2'b10;
	 
    // -----------------------------------
    // Input |      0      |      1      |
    // -----------------------------------
    //   PS  |  NS  |  Out |  NS  |  Out |
    // -----------------------------------
    //  	00  |  00  |   1  |  01  |  1   |
    //   01  |  10  |   0  |  00  |  1   |
    //   10  |  01  |   0  |  10  |  0   |
    // -----------------------------------
	 
	 always@(cst or x) begin
		if(cst==s0) begin
			if(~x) begin
				y=1;
				nst=cst;
			end
			else begin 
				y=0;
				nst=s1;
			end
		end
		else if(cst==s1) begin
			if(~x) begin
				y=0;
				nst=s2;
			end
			else begin 
				y=1;
				nst=s0;
			end
		end
		else begin
			if(~x) begin
				y=0;
				nst=s1;
			end
			else begin 
				y=0;
				nst=s2;
			end
		end
		end
		
		always@(posedge clk) begin
			if(reset) //current state pointing to intial state
				cst <= s0;
			else			//current state updated to next state
				cst <= nst;
		end
		//assign y=(cst==s0);


endmodule

