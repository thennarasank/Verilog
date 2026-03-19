//design 
module scalar_vector(
	input a,
	input [3:0]b,
	output sum,
	output[3:0]out);
assign sum = a&b[0] ;
assign out = ~b ;
endmodule
