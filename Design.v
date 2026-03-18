`timescale 1ns / 1ps

module design_1(
input [3:0] a,b,
input cin,
output reg [3:0] sum,
output reg cout
    );
    
    reg [4:0] temp;
    
    always @(*) begin
    temp = a+b+cin;
    if(temp>9) begin
    temp = temp+6;
    cout = 1'b1;
    end
    else
    cout = 1'b0;
    sum = temp[3:0];
    end 
    
    
endmodule
