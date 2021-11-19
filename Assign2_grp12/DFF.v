`timescale 1ns / 1ps


module DFF (
			input x,  
			input clk, 
         input reset,   
         output reg y);  
  
    always @ (posedge clk)  
       if (!reset)  
          y <= 0;  
       else  
          y <= x;  
endmodule  


