//design 
module decoder_2to4(input [1:0]in,output reg [3:0]out);
always @(*) begin
case (in)
2'b00: out = 4'b0001;
2'b01: out = 4'b0010;
2'b10: out = 4'b0100;
2'b11: out = 4'b1000;
default: out = 4'b0000;
endcase
end
endmodule
//testbench
module decoder_2to4_tb;
reg  [1:0]in;
wire [3:0]out;
decoder_2to4 dut(.in(in),.out(out));
initial begin
$monitor("  in=%b  |  out=%b  |  time=%0t  ",in,out,$time);
$dumpfile("decoder_2to4.vcd");
$dumpvars();
in = 2'b00; #10;
in = 2'b01; #10;
in = 2'b10; #10;
in = 2'b11; #10;
$finish;
end
endmodule
