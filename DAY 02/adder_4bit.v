//design
module adder_4bit
(input [3:0] a,
input [3:0] b,
input cin,
output [3:0] sum,
output cout );
wire c1, c2, c3;
assign {c1, sum[0]} = a[0] + b[0] + cin;
assign {c2, sum[1]} = a[1] + b[1] + c1;
assign {c3, sum[2]} = a[2] + b[2] + c2;
assign {cout, sum[3]} = a[3] + b[3] + c3;
endmodule
//test bench
module tb_adder_4bit;
reg [3:0] a;
reg [3:0] b;
reg cin;
wire [3:0] sum;
wire cout;
//dut
adder_4bit dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin 
$monitor(" |  a=%b  |  b=%b  |  cin=%b  |  sum=%b  |  cout=%b  |  time=%0t    ",a,b,cin,sum,cout,$time);
$dumpfile("adder_4bit vcd");
$dumpvars();

a=4'b0000;   b=4'b0001;   cin=0; 
#10
a=4'b1100;   b=4'b0011;   cin=1;
#10
a=4'b0110;   b=4'b0111;   cin=0;
#10
a=4'b1001;   b=4'b1111;   cin=1;
#10
a=4'b0011;   b=4'b1001;   cin=0;
#10
a=4'b1111;   b=4'b0110;   cin=1;
#10
$finish;
end
endmodule
