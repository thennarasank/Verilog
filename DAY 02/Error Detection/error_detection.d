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
