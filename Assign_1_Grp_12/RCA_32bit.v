`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////

//Assignment Number: 1
//Problem number: 1a
//Group Number: 12
//Names of group members: K Sai Santhoshi Niharika(19CS10037),Surkanti Akshitha(19CS30049)

//////////////////////////////////////////////////////////////////////////////////

`include "full_adder.v"

module RCA_32bit(a,b,c0,s,c);
	input [31:0] a;
	input [31:0] b;
	input c0;
	output [31:0]s;
	output c;

	wire[32:0] w;
	assign w[0]=c0;
	
	genvar i;
	generate
		for(i=0;i<32;i=i+1) begin : full_add
				full_adder f(.a(a[i]),.b(b[i]),.c0(w[i]),.s(s[i]),.c(w[i+1]));
		end
	endgenerate
	
	assign c=w[32];


endmodule



//////////////////////////////////////////////////

//Delay:               21.892ns (Levels of Logic = 66)
//  Source:            b<0> (PAD)
//  Destination:       s<31> (PAD)

//  Data Path: b<0> to s<31>
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
//    begin scope: 'full_add[2].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//    end scope: 'full_add[2].f:c'
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
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[7].f:c'
//     begin scope: 'full_add[8].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[8].f:c'
//     begin scope: 'full_add[9].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[9].f:c'
//     begin scope: 'full_add[10].f:c0'
///     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[10].f:c'
//     begin scope: 'full_add[11].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[11].f:c'
//    begin scope: 'full_add[12].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[12].f:c'
//     begin scope: 'full_add[13].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[13].f:c'
//     begin scope: 'full_add[14].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[14].f:c'
//     begin scope: 'full_add[15].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[15].f:c'
//     begin scope: 'full_add[16].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[16].f:c'
//     begin scope: 'full_add[17].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[17].f:c'
//     begin scope: 'full_add[18].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[18].f:c'
//     begin scope: 'full_add[19].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[19].f:c'
//     begin scope: 'full_add[20].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[20].f:c'
//     begin scope: 'full_add[21].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[21].f:c'
//     begin scope: 'full_add[22].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[22].f:c'
//     begin scope: 'full_add[23].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[23].f:c'
//     begin scope: 'full_add[24].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[24].f:c'
//     begin scope: 'full_add[25].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[25].f:c'
//     begin scope: 'full_add[26].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//    end scope: 'full_add[26].f:c'
//     begin scope: 'full_add[27].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[27].f:c'
//     begin scope: 'full_add[28].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[28].f:c'
//     begin scope: 'full_add[29].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[29].f:c'
//     begin scope: 'full_add[30].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[30].f:c'
//     begin scope: 'full_add[31].f:c0'
//     LUT3:I1->O            1   0.124   0.399  c1 (c)
//     end scope: 'full_add[31].f:c'
//     OBUF:I->O                 0.000          c_OBUF (c)
//    ----------------------------------------
//    Total                     21.892ns (3.969ns logic, 17.923ns route)
//                                       (18.1% logic, 81.9% route)

//////////////////////////////////////////////////