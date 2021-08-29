`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//Assignment Number: 1
//Problem number: 2a
//Group Number: 12
//Names of group members: K Sai Santhoshi Niharika(19CS10037),Surkanti Akshitha(19CS30049)

//////////////////////////////////////////////////////////////////////////////////

module CLA_4bit(
	output [3:0] S,
	output Cout,PG,GG,
	input [3:0] A,B,
	input Cin
	);
	wire [3:0] G,P,C;
	//G[0]=A[0]&B[0] P[0]= A[0]^B[0]
	//G[1]=A[1]&B[1] P[1]= A[1]^B[1]
	//G[2]=A[2]&B[2] P[2]= A[2]^B[2]
	//G[3]=A[3]&B[3] P[3]= A[3]^B[3]
 
   assign G = A & B; //Generate
   assign P = A ^ B; //Propagate
   assign C[0] = Cin;
   assign C[1] = G[0] | (P[0] & C[0]);
   assign C[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & C[0]);
   assign C[3] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & C[0]);
   assign Cout = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) |(P[3] & P[2] & P[1] & P[0] & C[0]);
   assign S = P ^ Cin;
   
   assign PG = P[3] & P[2] & P[1] & P[0];
   assign GG = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]);

endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////

//Delay:               3.083ns (Levels of Logic = 5)
//  Source:            B<3> (PAD)
//  Destination:       Cout (PAD)

//  Data Path: B<3> to Cout
//                                Gate     Net
//    Cell:in->out      fanout   Delay   Delay  Logical Name (Net Name)
//    ----------------------------------------  ------------
//     IBUF:I->O             2   0.001   0.945  B_3_IBUF (B_3_IBUF)
//     LUT6:I0->O            1   0.124   0.939  GG<3>_SW0 (N2)
//     LUT6:I0->O            2   0.124   0.427  GG<3> (GG_OBUF)
//     LUT3:I2->O            1   0.124   0.399  Cout1 (Cout_OBUF)
//     OBUF:I->O                 0.000          Cout_OBUF (Cout)
//    ----------------------------------------
//    Total                      3.083ns (0.373ns logic, 2.710ns route)
//                                       (12.1% logic, 87.9% route)

////////////////////////////////////////////////////////////////////////////////////////////////////