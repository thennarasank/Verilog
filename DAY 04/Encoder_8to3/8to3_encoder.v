//design
module encoder_8to3 (input [7:0] in , output[2:0] out);
assign out = (in[0]) ? 3'b000 :
             (in[1]) ? 3'b001 :
             (in[2]) ? 3'b010 :
             (in[3]) ? 3'b011 :
             (in[4]) ? 3'b100 :
             (in[5]) ? 3'b101 :
             (in[6]) ? 3'b110 :
             (in[7]) ? 3'b111 :
	     3'bxxx;
endmodule

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
