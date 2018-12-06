`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2018 20:51:12
// Design Name: 
// Module Name: lab3
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module lab3(
  input      [2:0]  btn_i,
  input      [3:0]  sw_i,
  output reg [3:0]  inc_o,
  output reg [11:0] count
    );
  
  
  
  always @( posedge btn_i[0] or posedge btn_i[1] or posedge btn_i[2])
    begin
      if ( btn_i[2] )
        count <= 12'b0;
      else
        begin
          if ( btn_i[1] )
            inc_o <= sw_i;
          else
            count <= count + inc_o;
        end      
    end
    
endmodule
