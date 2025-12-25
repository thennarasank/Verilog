//testbench
module tb_mux_8to1;
reg [7:0]d;
reg [2:0]s;
wire y;
mux_8to1 dut(.d(d),.s(s),.y(y));
initial begin
$monitor("   d=%b   |   s=%b   |   y=%b   |   time=%0t   ",d,s,y,$time);
$dumpfile("mux_8to1.vcd");
$dumpvars();
d = 8'b1010_1101;
s = 3'b000; #10;
s = 3'b001; #10;
s = 3'b010; #10;
s = 3'b011; #10;
s = 3'b100; #10;
s = 3'b101; #10;
s = 3'b110; #10;
s = 3'b111; #10;
$finish;
end
endmodule
