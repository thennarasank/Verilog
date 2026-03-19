module tb_scalar_vector;
reg a;
reg [3:0]b;
wire sum;
wire [3:0] out;
//dut
 scalar_vector dut(a,b,sum,out);
 initial begin
	 a = 1;
         #15;
         b = 4'b0111;
         #15;
	 $display(" a=%b  b=%b | sum=%b  out=%b ",a,b,sum,out);
	 a = 0;
	 #15;
	 b = 4'b1111;
	 #15;
	 $display(" a=%b  b=%b | sum=%b  out=%b ",a,b,sum,out);
	 $finish;
 end
 endmodule
