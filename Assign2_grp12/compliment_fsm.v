`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
//problem no.:2
//semester:5
//group no.:12
//names of group members:K Sai Santhoshi Niharika, Surkanti Akshitha
//
//////////////////////////////////////////////////////////////////////////////////

module compliment_fsm(
			input x,clk,reset,
			output reg y
    );
	 reg cst,nst;
	 parameter s0=1'b0,s1=1'b1;

    // -----------------------------------
    // Input |      0      |      1      |
    // -----------------------------------
    //   PS  |  NS  |  Out |  NS  |  Out |
    // -----------------------------------
    //    0  |   0  |   0  |   1  |   1  |
    //    1  |   1  |   1  |   1  |   0  |
    // -----------------------------------
	 
	 always@(cst or x) begin
		if(cst==s0) begin
			if(~x) begin
				y=0;
				nst=cst;
			end
			else begin 
				y=1;
				nst=s1;
			end
		end
		else begin
			if(~x) begin
				y=1;
				nst=s1;
			end
			else begin 
				y=0;
				nst=s1;
			end
		end
		end
		
		always@(posedge clk) begin
			if(reset) //current state => intial stage
				cst <= s0;
			else 		 //current state updated to next state
				cst <= nst;
		end


endmodule
