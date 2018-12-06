`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2018 20:58:45
// Design Name: 
// Module Name: tb_lab3
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


module tb_lab3;

localparam MAX_COUNT = 65;

integer i;

reg  [2:0]  btn_i;
reg  [3:0]  sw_i;
wire [3:0]  inc_o;
reg  [11:0] previous_count;
wire [11:0] count;
  
lab3 uut (
  .btn_i(btn_i),
  .count(count),
  .inc_o(inc_o),
  .sw_i(sw_i)
);

  initial 
    begin
     btn_i[2] = 1;
     #10
     btn_i[2] = 0;
      
      for( i = 0; i < MAX_COUNT; i = i + 1 )
        begin
          previous_count <= count;
          sw_i = $urandom%10;
          btn_i[1] = 1;
          #10
          btn_i[1] = 0;
          #10
          btn_i[0] = 1;
          #10
          btn_i[0] = 0;
          #5
          if ( count != previous_count + inc_o )
            $display ( "Error,time: %d" , $time );   
        end 
      
    end

endmodule
