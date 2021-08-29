`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////

//Assignment Number: 1
//Problem number: 1a
//Group Number: 12
//Names of group members: K Sai Santhoshi Niharika(19CS10037),Surkanti Akshitha(19CS30049)

//////////////////////////////////////////////////////////////////////////////////
module half_adder(a,b,s,c);
	input  a;
	input  b;
   output s;
   output c;
 
   assign s   = a ^ b; 
   assign c = a & b; 


endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////

//Delay:               1.066ns (Levels of Logic = 3)
//  Source:            a (PAD)
//  Destination:       s (PAD)

//  Data Path: a to s
//                                Gate     Net
//    Cell:in->out      fanout   Delay   Delay  Logical Name (Net Name)
//    ----------------------------------------  ------------
//     IBUF:I->O             2   0.001   0.542  a_IBUF (a_IBUF)
//     LUT2:I0->O            1   0.124   0.399  c1 (c_OBUF)
//     OBUF:I->O                 0.000          c_OBUF (c)
//    ----------------------------------------
//    Total                      1.066ns (0.125ns logic, 0.941ns route)
//                                       (11.7% logic, 88.3% route)

////////////////////////////////////////////////////////////////////////////////////////////////////