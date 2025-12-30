//test bench
module tb_encoder_8to3;
reg [7:0] in ;
wire [2:0] out ;
//dut
encoder_8to3 dut 
(in ,out);
initial begin
$monitor("$time=%t  | in=%b | out=%b |",$time,in,out);
$dumpfile( "encoder_8to3.vcd");
$dumpvars (0, tb_encoder_8to3);
in = 8'b00000001; #10;
in = 8'b00000010; #10;
in = 8'b00000100; #10;
in = 8'b00001000; #10;
in = 8'b00010000; #10;
in = 8'b00100000; #10;
in = 8'b01000000; #10;
in = 8'b10000000; #10;
$finish;
end
endmodule
