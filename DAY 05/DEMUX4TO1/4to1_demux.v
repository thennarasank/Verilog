//test bench
module tb_demux_4to1;
reg  a;
reg  [1:0]s;
wire [3:0] out;
demux_4to1 dut
(.a(a),.s(s),.out(out));
initial begin
$display("--------------------DEMUX4TO1--------------------");
$monitor(" | a=%b | s=%b | out=%b |  time=%0t  | ",a,s,out,$time);
$dumpfile("demux_4to1.vcd");
$dumpvars();
repeat (7)begin
a=1; s=$random; #15;
end
$finish;
end
endmodule
