`include "full_adder.v"

module RCA_16bit(a,b,c0,s,c);
	input [15:0] a;
	input [15:0] b;
	input c0;
	output [15:0]s;
	output c;

	wire[16:0] w;
	assign w[0]=c0;
	
	genvar i;
	generate
		for(i=0;i<16;i=i+1) begin : full_add
				full_adder f(.a(a[i]),.b(b[i]),.c0(w[i]),.s(s[i]),.c(w[i+1]));
		end
	endgenerate
	
	assign c=w[16];

endmodule




////////////////////////////////////////////////////////////////////////////////////////////////////

//Delay:               11.236ns (Levels of Logic = 34)
//  Source:            b<0> (PAD)
//  Destination:       s<15> (PAD)

//  Data Path: b<0> to s<15>
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
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[2].f:c'
//     begin scope: 'full_add[3].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[3].f:c'
//     begin scope: 'full_add[4].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//    end scope: 'full_add[4].f:c'
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
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[10].f:c'
//     begin scope: 'full_add[11].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[11].f:c'
//     begin scope: 'full_add[12].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[12].f:c'
//     begin scope: 'full_add[13].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[13].f:c'
//     begin scope: 'full_add[14].f:c0'
//     LUT3:I1->O            2   0.124   0.542  c1 (c)
//     end scope: 'full_add[14].f:c'
//     begin scope: 'full_add[15].f:c0'
//     LUT3:I1->O            1   0.124   0.399  c1 (c)
//     end scope: 'full_add[15].f:c'
//     OBUF:I->O                 0.000          c_OBUF (c)
//   ----------------------------------------
//    Total                     11.236ns (1.985ns logic, 9.251ns route)
//                                       (17.7% logic, 82.3% route)

////////////////////////////////////////////////////////////////////////////////////////////////////