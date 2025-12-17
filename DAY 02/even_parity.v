//design
module even_parity(input [3:0]a,input parity, output error);
assign error = a[0]^a[1]^a[2]^a[3]^parity;
endmodule
//testbench
module tb_even_parity;
reg [3:0]a;
reg parity;
wire error;
even_parity dut(.a(a),.parity(parity),.error(error));
initial begin
$display("----------EVEN PARITY----------");
$monitor("   a=%b   |   parity=%b   |   error=%b   |   time=%0t  ",a,parity,error,$time);
$dumpfile("even_parity.vcd");
$dumpvars();
a=4'b0000; parity=0; #10;
a=4'b0001; parity=0; #10;
a=4'b0011; parity=1; #10;
a=4'b0111; parity=1; #10;
a=4'b1111; parity=0; #10;
$finish;
end 
endmodule
