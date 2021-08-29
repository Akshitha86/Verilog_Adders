`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//Assignment Number: 1
//Problem number: 2c
//Group Number: 12
//Names of group members: K Sai Santhoshi Niharika(19CS10037),Surkanti Akshitha(19CS30049)

//////////////////////////////////////////////////////////////////////////////////

`include "CLA_4bit.v"

module CLA_16bit(
    output [15:0] sum,
	 output Cout,PG,GG,
	 input [15:0] A,B,
	 input c0
	);
	
	wire c1,c2,c3,c4,c5,c6;
	wire [3:0] p,g;
 
	CLA_4bit clA1 (.A(A[3:0]),.B(B[3:0]),.Cin(c0),.S(sum[3:0]),.Cout(c1),.PG(p[0]),.GG(g[0]));
	assign c4= g[0] | (p[0]&c0);
	CLA_4bit clA2 (.A(A[7:4]),.B(B[7:4]),.Cin(c4),.S(sum[7:4]),.Cout(c2),.PG(p[1]),.GG(g[1]));
	assign c5= g[1] | (g[0]&p[1]) |( p[0]&p[1]&c0);
	CLA_4bit clA3 (.A(A[11:8]),.B(B[11:8]),.Cin(c5),.S(sum[11:8]),.Cout(c3),.PG(p[2]),.GG(g[2]));
	assign c6= g[2]| (g[1]&p[2])|(g[0]&p[1]&p[2])|( p[0]&p[1]&p[2]&c0);
	CLA_4bit clA4 (.A(A[15:12]),.B(B[15:12]),.Cin(c6),.S(sum[15:12]),.Cout(cout),.PG(p[3]),.GG(g[3]));
	CLA_4bit clA5 (.A(p),.B(g),.Cin(c0),.S(c1),.Cout(Cout),.PG(PG),.GG(GG));

endmodule

//////////////////////////////////////////////////////////////////////////////////

//Delay:               5.215ns (Levels of Logic = 9)
//  Source:            B<15> (PAD)
//  Destination:       Cout (PAD)

//  Data Path: B<15> to Cout
//                                Gate     Net
//    Cell:in->out      fanout   Delay   Delay  Logical Name (Net Name)
//    ----------------------------------------  ------------
//     IBUF:I->O             2   0.001   0.945  B_15_IBUF (B_15_IBUF)
//     begin scope: 'clA4:B<3>'
//     LUT6:I0->O            1   0.124   0.939  GG<3>_SW0 (N01)
//     LUT6:I0->O            2   0.124   0.945  GG<3> (GG)
//     end scope: 'clA4:GG'
//     begin scope: 'clA5:B<3>'
//     LUT6:I0->O            1   0.124   0.939  GG<3>_SW0 (N01)
//     LUT6:I0->O            2   0.124   0.427  GG<3> (GG)
//     LUT3:I2->O            1   0.124   0.399  Cout1 (Cout)
//     end scope: 'clA5:Cout'
//     OBUF:I->O                 0.000          Cout_OBUF (Cout)
//    ----------------------------------------
//    Total                      5.215ns (0.621ns logic, 4.594ns route)
//                                       (11.9% logic, 88.1% route)


//////////////////////////////////////////////////////////////////////////////////