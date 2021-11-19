`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
//problem no.:1
//semester:5
//group no.:12
//names of group members:K Sai Santhoshi Niharika, Surkanti Akshitha
//
//////////////////////////////////////////////////////////////////////////////////
`include "DFF.v"
`include "mux.v"

module LSFR_4bit(
		input [3:0] seed,
		input clk, reset, sel,
		output reg [3:0] out
    );

	reg [4:0] W;			// Represents PS
	wire [3:0] Wint;		// Represents NS

	// All the regs, wires have the same naming conventions as in the problem statement

	// Next State Combintational Logic
	mux M1(seed[3], W[0], sel, Wint[0]);
	mux M2(seed[2], W[1], sel, Wint[1]);
	mux M3(seed[1], W[2], sel, Wint[2]);
	mux M4(seed[0], W[3], sel, Wint[3]);

	// FLIP FLOP For State Changing
	always @ (posedge clk) begin
		if (~reset) begin
				W[4] <= Wint[3];
				W[3] <= Wint[2];
				W[2] <= Wint[1];
				W[1] <= Wint[0];
		end	
		else
			W[4:1] <= 0;
	end


	// Next State Combintational Logic other than the gates used above
	always @ (*)
		begin
			W[0] = W[3] ^ W[4]; // XOR
		end

	// Output Combintational Logic
	always @ (*)
		begin
		// Output is the present state (W{5:2]) but in the reverse orber of bits
			out[3] = W[1];
			out[2] = W[2];
			out[1] = W[3];
			out[0] = W[4];
		end

endmodule