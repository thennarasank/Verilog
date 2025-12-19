//design
module sr_latch (input s,input r,output reg q,output qbar);
assign qbar = ~q;
always @ (s or r) begin
if (s == 1'b0 && r == 1'b0)
q <= q;    
else if (s == 1'b0 && r == 1'b1)
q <= 1'b0;   
else if (s == 1'b1 && r == 1'b0)
q <= 1'b1;    
else
q <= 1'bx;    
end
endmodule
//testbench
module tb_sr_latch;
reg s;
reg r;
wire q;
wire qbar;
sr_latch dut (.s(s),.r(r),.q(q),.qbar(qbar));
initial begin
$monitor("   s=%b   |   r=%b   |   q=%b   |   qbar=%b   |   time=%0t   ",s,r,q,qbar,$time);
$dumpfile("sr_latch.vcd");
$dumpvars();
s = 0; r = 1; #10;
s = 1; r = 1; #10;
s = 0; r = 0; #10;  
s = 1; r = 0; #10;  
s = 0; r = 1; #10; 
s = 1; r = 1; #10;  
$finish;
end
endmodule

