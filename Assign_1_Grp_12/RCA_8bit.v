`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////

//Assignment Number: 1
//Problem number: 1c
//Group Number: 12
//Names of group members: K Sai Santhoshi Niharika(19CS10037),Surkanti Akshitha(19CS30049)

//////////////////////////////////////////////////////////////////////////////////

`include "full_adder.v"

module RCA_8bit(a,b,c0,s,c);
	input [7:0] a;
	input [7:0] b;
	input c0;
	output [7:0]s;
	output c;

	wire[8:0] w;
	assign w[0]=c0;
	
	genvar i;
	generate
		for(i=0;i<8;i=i+1) begin : full_add
				full_adder f(.a(a[i]),.b(b[i]),.c0(w[i]),.s(s[i]),.c(w[i+1]));
		end
	endgenerate
	
	assign c=w[8];

endmodule




////////////////////////////////////////////////////////////////////////////////////////////////////

//Delay:               5.908ns (Levels of Logic = 18)
//  Source:            b<0> (PAD)
//  Destination:       s<7> (PAD)

//  Data Path: b<0> to s<7>
//                                Gate     Net
//    Cell:in->out      fanout   Delay   Delay  Logical Name (Net Name)
//    ----------------------------------------  ------------
//     IBUF:I->O             2   0.001   0.722  b_0_IBUF (b_0_IBUF)
//     begin scope: 'full_add[0].f:b'
//     LUT3:I0->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[0].f:c'
//     begin scope: 'full_add[1].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[1].f:c'
//     begin scope: 'full_add[2].f:c0'
//	    LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[2].f:c'
//     begin scope: 'full_add[3].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[3].f:c'
//     begin scope: 'full_add[4].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[4].f:c'
//     begin scope: 'full_add[5].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[5].f:c'
//     begin scope: 'full_add[6].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[6].f:c'
//     begin scope: 'full_add[7].f:c0'
//     LUT3:I1->O            1   0.124   0.399  c1 (c)
//     end scope: 'full_add[7].f:c'
//     OBUF:I->O                 0.000          c_OBUF (c)
//     ----------------------------------------
//     Total                      5.908ns (0.993ns logic, 4.915ns route)
//                                     (16.8% logic, 83.2% route)


////////////////////////////////////////////////////////////////////////////////////////////////////