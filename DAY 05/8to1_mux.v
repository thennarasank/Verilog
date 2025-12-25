//design
module mux_8to1(input [7:0]d,input [2:0]s,output reg y);
always @(*) begin
case (s)
3'b000: y = d[0];
3'b001: y = d[1];
3'b010: y = d[2];
3'b011: y = d[3];
3'b100: y = d[4];
3'b101: y = d[5];
3'b110: y = d[6];
3'b111: y = d[7];
default: y = 1'b0;
endcase
end
endmodule
//testbench
module tb_mux_8to1;
reg [7:0]d;
reg [2:0]s;
wire y;
mux_8to1 dut(.d(d),.s(s),.y(y));
initial begin
$monitor("   d=%b   |   s=%b   |   y=%b   |   time=%0t   ",d,s,y,$time);
$dumpfile("mux_8to1.vcd");
$dumpvars();
d = 8'b1010_1101;
s = 3'b000; #10;
s = 3'b001; #10;
s = 3'b010; #10;
s = 3'b011; #10;
s = 3'b100; #10;
s = 3'b101; #10;
s = 3'b110; #10;
s = 3'b111; #10;
$finish;
end
endmodule
