
//testbench
module tb_siso;
reg clk;
reg reset;
wire serial_out;
siso dut (.clk(clk),.reset(reset),.serial_in(serial_in),.serial_out(serial_out));
always #5 clk = ~clk;
initial begin
clk = 0;
reset = 1;
serial_in = 0;#10;
reset = 0;#10;
serial_in = 1;#10; 
serial_in = 0;#10;
serial_in = 1;#10;
serial_in = 1;#10; 
serial_in = 0;#10;
$finish;
end
initial begin
$monitor("Time=%0t | reset=%b | serial_in=%b | serial_out=%b",$time, reset, serial_in, serial_out);
end
endmodule

