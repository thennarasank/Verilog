//test bench
module tb_carry_look_adder;
reg [3:0]a;
reg [3:0]b;
reg cin;
wire [3:0]sum;
wire cout;
carry_look_adder dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin
$monitor("   a=%b   |   b=%b   |   cin=%b   |   sum=%b   |   cout=%b   |   time=%0t   ",a,b,cin,sum,cout,$time);
$dumpfile("carry_look_adder.vcd");
$dumpvars();
a=4'b0000;b=4'b0000;cin=0;#10;
a=4'b0001;b=4'b1000;cin=1;#10;
a=4'b0011;b=4'b1100;cin=0;#10;
a=4'b0111;b=4'b1110;cin=1;#10;
a=4'b1111;b=4'b1111;cin=0;#10;
a=4'b0111;b=4'b1110;cin=1;#10;
a=4'b0011;b=4'b1100;cin=0;#10;
a=4'b0001;b=4'b1000;cin=1;#10;
a=4'b0000;b=4'b0000;cin=0;#10;
$finish;
end
endmodule
