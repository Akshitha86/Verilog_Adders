`timescale 1ns / 1ps

module mux(
		input d0,d1,sel,
		output y
);

assign y=(sel)?d1:d0;

endmodule
