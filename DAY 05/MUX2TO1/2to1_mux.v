//test_bench
module tb_mux_2to1;
reg i0, i1, s ;
wire y ;
mux_2to1 dut (i0,i1,s,y);
initial begin
$monitor("time=%0t | i0=%0b | i1=%0b | s=%0b | y=%0b |",$time,i0,i1,s,y);
$dumpfile("tb_mux_2to1.vcd");
$dumpvars();
s =0; i0 =0; i1 =1;#9
s =0 ;i0 =1; i1 =0;#8
s =1 ;i0 =0; i1 =1;#7
s =1 ;i0 =1; i1 =0;#6
$finish;
end
endmodule
