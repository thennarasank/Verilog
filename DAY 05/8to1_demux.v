//design
module demux_8to1(
input wire a,
input wire[2:0] s,
output reg[7:0] out);
always @(*) begin 
out = 8'b0;
out [s] = a;
end
endmodule
//test bench
module tb_demux_8to1;
reg  a;
reg  [2:0]s;
wire [7:0] out;
demux_8to1 dut
(.a(a),.s(s),.out(out));
initial begin
$display("--------------------DEMUX8TO1--------------------");
$monitor(" | a=%b | s=%b | out=%b |  time=%0t  | ",a,s,out,$time);
$dumpfile("demux_8to1.vcd");
$dumpvars();
repeat (10)begin
a=1; s=$random; #10;
end
$finish;
end
endmodule
