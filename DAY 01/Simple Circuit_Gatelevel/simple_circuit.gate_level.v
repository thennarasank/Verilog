//Design
module simple_circuit(input a,b,c,d,e, output p);
wire m,n,o,n1;
and (m, a, b, c);
and (n, d, e);
not (n1,n);
or  (o, m, n1);
xor (p, o, n1);
endmodule
//Test Bench
module tb_simple_circut;
reg a,b,c,d,e;
wire p;
//dut
simple_circuit dut(.a(a),.b(b),.c(c),.d(d),.e(e),.p(p));
initial begin
$monitor("| a=%b | b=%b | c=%b | d=%b | e=%b | p=%b |  time=%0t ",a,b,c,d,e,p,$time);
$dumpfile("simple_circuit.vcd");
$dumpvars();
a=1;#10;
b=0;#10;
c=0;#10;
d=1;#10;
e=0;#10;
$finish;
end
endmodule
