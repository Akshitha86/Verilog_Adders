`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////

//Assignment Number: 1
//Problem number: 1b
//Group Number: 12
//Names of group members: K Sai Santhoshi Niharika(19CS10037),Surkanti Akshitha(19CS30049)

//////////////////////////////////////////////////////////////////////////////////

module full_adder(a, b, c0, s, c);

	input a;

	input b;

	input c0;

	output s;

	output c;

	assign s=(a^b^c0);

	assign c=((a&b)|(b&c0)|(a&c0));

endmodule



////////////////////////////////////////////////////////////////////////////////////////////////////

//	 Delay:               1.246ns (Levels of Logic = 3)
//  Source:            a (PAD)
//  Destination:       s (PAD)

// Data Path: a to s
//                               Gate     Net
//    Cell:in->out      fanout   Delay   Delay  Logical Name (Net Name)
//    ----------------------------------------  ------------
//     IBUF:I->O             2   0.001   0.722  a_IBUF (a_IBUF)
//     LUT3:I0->O            1   0.124   0.399  s1 (s_OBUF)
//     OBUF:I->O                 0.000          s_OBUF (s)
//    ----------------------------------------
//    Total                      1.246ns (0.125ns logic, 1.121ns route) (10.0% logic, 90.0% route)

////////////////////////////////////////////////////////////////////////////////////////////////////