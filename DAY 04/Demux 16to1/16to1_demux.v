//design
module demux_16to1(
input wire a,
input wire[3:0] s,
output reg[15:0] out);
always @(*) begin 
out = 16'b0;
out [s] = a;
end
endmodule
//test bench
module tb_demux_16to1;
reg  a;
reg  [3:0]s;
wire [15:0] out;
//dut
demux_16to1 dut
(.a(a),.s(s),.out(out));
initial begin
$display("------------------------------------------------------------------");
$monitor(" | a=%b | s=%b | out=%b |  time=%0t  | ",a,s,out,$time);
$dumpfile("demux_16to1.vcd");
$dumpvars();
repeat (20)begin
a=1; s=$random; #10;
end
$finish;
end
endmodule
