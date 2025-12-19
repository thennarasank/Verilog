//fulladder design
module full_adder(input a,b,cin, output sum,cout);
assign sum = a^b^cin ;
assign carry = (a&b)|(b&cin)|(cin&a) ;
endmodule
//design
module ripple_carry_adder (input [3:0]a,input [3:0]b,input cin,output [3:0]sum,output cout);
wire c1, c2, c3;
full_adder f_a0 (.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(c1));
full_adder f_a1 (.a(a[1]), .b(b[1]), .cin(c1),  .sum(sum[1]), .cout(c2));
full_adder f_a2 (.a(a[2]), .b(b[2]), .cin(c2),  .sum(sum[2]), .cout(c3));
full_adder f_a3 (.a(a[3]), .b(b[3]), .cin(c3),  .sum(sum[3]), .cout(cout));
endmodule
//testbench
module tb_ripple_carry_adder;
reg [3:0]a;
reg [3:0]b;
reg cin;
wire [3:0]sum;
wire cout;
ripple_carry_adder dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin
$monitor("   a=%b   |   b=%b   |   cin=%b   |   sum=%b   |   cout=%b   |   time=%0t   ",a,b,cin,sum,cout,$time);
$dumpfile("ripple_carry_adder.vcd");
$dumpvars();
a=4'b0000;b=4'b1111;cin=1;#10;
a=4'b0001;b=4'b1110;cin=0;#10;
a=4'b0010;b=4'b1101;cin=1;#10;
a=4'b0011;b=4'b1100;cin=0;#10;
a=4'b0100;b=4'b1011;cin=1;#10;
a=4'b0101;b=4'b1010;cin=0;#10;
a=4'b0110;b=4'b1001;cin=1;#10;
a=4'b0111;b=4'b1000;cin=0;#10;
a=4'b1000;b=4'b0111;cin=1;#10;
a=4'b1001;b=4'b0110;cin=0;#10;
a=4'b1010;b=4'b0101;cin=1;#10;
a=4'b1011;b=4'b0100;cin=0;#10;
a=4'b1100;b=4'b0011;cin=1;#10;
a=4'b1101;b=4'b0010;cin=0;#10;
a=4'b1110;b=4'b0001;cin=1;#10;
a=4'b1111;b=4'b0000;cin=0;#10;
$finish;
end
endmodule
