`timescale 1ns / 1ps

module tb_1;
reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;

design_1 uut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

initial begin
$monitor("Time=0t A=%0b B=%0b Cin=%0b || Sum=%0b Cout=%0b",$time,a,b,cin,sum,cout);

a=4'd3 ; b=4'd4 ; cin=1'd0 ; #10;
a=4'd4 ; b=4'd1 ; cin=1'd1 ; #10;
a=4'd5 ; b=4'd8 ; cin=1'd0 ; #10;
a=4'd6 ; b=4'd9 ; cin=1'd1 ; #10;
$finish;
end

endmodule
