//testbench
module tb_ones_complement;
reg [3:0]in;
wire [3:0]out;
ones_complement dut(.in(in),.out(out));
initial begin
$monitor("   in=%b   |   out=%b   |   time=%0t   ",in,out,$time);
$dumpfile("ones_complement.vcd");
$dumpvars();
in = 4'b0000; #10;
in = 4'b0001; #10;
in = 4'b0011; #10;
in = 4'b0111; #10;
in = 4'b1111; #10;
$finish;
end
endmodule
