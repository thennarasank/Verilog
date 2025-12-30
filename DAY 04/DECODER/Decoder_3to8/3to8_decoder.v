//test bench
module tb_decoder_3to8; 
reg[2:0] in;
wire[7:0] out;
//dut
 decoder_3to8 dut
 (in,out); 
 initial begin
	 $monitor("time=%0t  | in=%b | out=%b |",$time,in,out);
	 $dumpfile("decoder_3to8.vcd");
	 $dumpvars();

	 in = 3'b000 ;
	 #10
	 in = 3'b001 ;
	 #10
	 in = 3'b010 ;
	 #10
	 in = 3'b011 ;
	 #10
	 in = 3'b100 ;
	 #10
	 in = 3'b101 ;
	 #10
	 in = 3'b110 ;
	 #10
	 in = 3'b111 ;
	 #10
	 $finish;
 end
 endmodule
