//test bench
module tb_odd_parity;
reg [3:0]a;
reg parity;
wire error;
odd_parity dut(.a(a),.parity(parity),.error(error));
initial begin
$display("--------------------ODD PARITY--------------------");
$monitor("   a=%b   |   parity=%b   |   error=%b   |   time%0t   ",a,parity,error,$time);
$dumpfile("odd_parity.vcd");
$dumpvars();
a=4'b0000 ; parity=0 ; #10;
a=4'b0001 ; parity=1 ; #10;
a=4'b0011 ; parity=0 ; #10;
a=4'b0111 ; parity=1 ; #10;
a=4'b1110 ; parity=0 ; #10;
a=4'b1100 ; parity=1 ; #10;
a=4'b1000 ; parity=0 ; #10;
a=4'b0000 ; parity=1 ; #10;
$finish; 
end 
endmodule
