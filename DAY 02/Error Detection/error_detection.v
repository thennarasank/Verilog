//design
module error_detection(input [7:0]a, output single_error,double_error);
wire s1,s2,s3;
wire[2:0]s;
wire overall_parity;
assign s1 = a[0]^a[2]^a[4]^a[6];
assign s2 = a[1]^a[2]^a[5]^a[6];
assign s3 = a[3]^a[4]^a[5]^a[6];
assign s = {s3,s2,s1};
assign overall_parity = ^a;
assign single_error = (s != 3'b000)&&(overall_parity == 1'b1);
assign double_error = (s != 3'b000)&&(overall_parity == 1'b0);
endmodule
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
