//design
// SR Flip-Flop (Positive edge triggered)
module sr_flipflop(input clk,input s,input r,output reg q);
always @(posedge clk) begin
case ({s, r})
2'b00: q <= q;     
2'b01: q <= 1'b0;  
2'b10: q <= 1'b1;   
2'b11: q <= 1'bx;
endcase
end
endmodule
//testbench
module tb_sr_flipflop;
reg clk;
reg s, r;
wire q;
sr_flipflop dut(.clk(clk),.s(s),.r(r),.q(q));
always #5 clk = ~clk;
initial begin
$monitor("  s=%b  |  r=%b  |  q=%b  |  clk=%b  |  time=%0t  ",s,r,q,clk,$time);
clk = 0;
s = 0; r = 0;#10; 
s = 1; r = 0;#10;
s = 0; r = 0;#10;
s = 0; r = 1;#10;
s = 0; r = 0;#10;
s = 1; r = 1;#10;
s = 1; r = 0;#10;
$finish;
end
endmodule
