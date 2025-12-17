//test bench
module tb_error_detection;
reg [7:0]a;
wire single_error;
wire double_error;
error_detection dut(.a(a),.single_error(single_error),.double_error(double_error));
initial begin 
$display("----------SINGLE ERROR DETECTION AND DOUBLE ERROR DETECTION----------");
$monitor("   a=%b   |   single_error=%b   |   double_error=%b   |   time=%0t   ",a,single_error,double_error,$time);
a=8'b00001111;
#10;
a=8'b00011111;
#10;
a=8'b00111111;
#10;
$finish;
end
endmodule
