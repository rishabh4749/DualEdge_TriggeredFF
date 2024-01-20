`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2024 19:18:42
// Design Name: 
// Module Name: des
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


module des (
    input clk,
    input d,
    output q
);
    reg q1, q2;
    assign q = clk?q1:q2;
    always @ (posedge clk)
    begin
    q1 <= d;
    end
    always @ (negedge clk)
    begin
    q2 <= d; 
    end

endmodule