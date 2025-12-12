//design
module excess_3(input [3:0]a, output [3:0]excess3);
assign excess3 = a + 4'b0011;
endmodule
//test bench
module tb_excess_3;
reg [3:0] a;
wire [3:0] excess3;
//dut
excess_3 dut (.a(a),.excess3(excess3));
initial begin
$display("____----____EXCESS3____----____");
$monitor("  a=%b  |  excess3=%b  |  time=0%t  ",a,excess3,$time);
$dumpfile("excess_3.vcd");
$dumpvars();

a=4'b0000;#10;
a=4'b0001;#10;
a=4'b0010;#10;
a=4'b0011;#10;
a=4'b0100;#10;
a=4'b0101;#10;
a=4'b0110;#10;
a=4'b0111;#10;
a=4'b1000;#10;
a=4'b1001;#10;
a=4'b1010;#10;
a=4'b1011;#10;
a=4'b1100;#10;
a=4'b1101;#10;
a=4'b1110;#10;
a=4'b1111;#10;
$finish;
end
endmodule
