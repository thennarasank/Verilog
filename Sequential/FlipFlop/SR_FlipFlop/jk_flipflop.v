//design
module jk_flipflop (input clk,input reset,input j,input k,output reg q);
always @(posedge clk or posedge reset) begin
if (reset)
q <= 1'b0;
else begin
case ({j, k})
2'b00: q <= q;      
2'b01: q <= 1'b0; 
2'b10: q <= 1'b1;  
2'b11: q <= ~q;  
endcase
end
end
endmodule
//testbench
module tb_jk_flipflop;
reg clk;
reg reset;
reg j, k;
wire q;
jk_flipflop dut(.clk(clk),.reset(reset),.j(j),.k(k),.q(q));
always #5 clk = ~clk;
initial begin
$monitor("  j=%b  |  k=%b  |  q=%b  |  clk=%b  |  time=%0t  ",j,k,q,clk,$time);
clk = 0;
reset = 1;
j = 0;
k = 0;
reset = 0;#10;
j = 0; k = 0;#10;
j = 0; k = 1;#10;
j = 1; k = 0;#10;
j = 1; k = 1;#10;
j = 1; k = 1;#20;
$finish;
end
endmodule
