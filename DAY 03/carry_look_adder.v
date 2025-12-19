//design
module carry_look_adder(input [3:0]a,input [3:0]b,input cin,output [3:0]sum,output cout);
wire [3:0] g, p;
wire c1, c2, c3;
assign g = a & b;
assign p = a ^ b;
assign c1 = g[0] | (p[0] & cin);
assign c2 = g[1] | (p[1] & g[0]) | (p[1] & p[0] & cin);
assign c3 = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & cin);
assign cout = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & cin);
assign sum[0] = p[0] ^ cin;
assign sum[1] = p[1] ^ c1;
assign sum[2] = p[2] ^ c2;
assign sum[3] = p[3] ^ c3;
endmodule
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
