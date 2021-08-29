`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////

//Assignment Number: 1
//Problem number: 2c
//Group Number: 12
//Names of group members: K Sai Santhoshi Niharika(19CS10037),Surkanti Akshitha(19CS30049)

//////////////////////////////////////////////////////////////////////////////////

`include "CLA_4bit.v"

module CLA_ripple(a,b, cin, sum,cout);
input [15:0] a,b;
input cin;
output [15:0] sum;
output cout;
wire c1,c2,c3;
 
CLA_4bit clA1 (.A(a[3:0]), .B(b[3:0]), .Cin(cin), .S(sum[3:0]), .Cout(c1));
CLA_4bit cla2 (.A(a[7:4]), .B(b[7:4]), .Cin(c1), .S(sum[7:4]), .Cout(c2));
CLA_4bit cla3 (.A(a[11:8]), .B(b[11:8]), .Cin(c2), .S(sum[11:8]), .Cout(c3));
CLA_4bit cla4 (.A(a[15:12]), .B(b[15:12]), .Cin(c3), .S(sum[15:12]), .Cout(cout));
 
endmodule

//////////////////////////////////////////////////////////////////////////////////

//Delay  :  7.232ns (Levels of Logic = 14)
//7.232ns (0.993ns logic, 6.239ns route)(13.7% logic, 86.3% route)

//////////////////////////////////////////////////////////////////////////////////