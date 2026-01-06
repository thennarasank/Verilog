//testbench
module tb_encoder_2to4;
reg [1:0]d;
wire [3:0]q;
encoder_2to4 dut(.d(d),.q(q));
initial begin 
$monitor("  d=%b  |  q=%b  |  time=%0t  ",d,q,$time);
$dumpfile("encoder_2to4.vcd");
$dumpvars();
d = 2'b00;#10;
d = 2'b01;#10;
d = 2'b10;#10;
d = 2'b11;#10;
$finish;
end
endmodule
