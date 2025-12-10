//Design
module simple_circuit(input a,b,c,d,e, output m,n,o,p);
assign m = a & b & c;
assign n = d & e ;
assign o = m | ~n ;
assign p = ~(o | ~n);
endmodule
//Test Bench
module tb_simple_circut;
reg a,b,c,d,e;
wire m,n,o,p;
//dut
simple_circuit dut(.a(a),.b(b),.c(c),.d(d),.e(e),.m(m),.n(n),.o(o),.p(p));
initial begin
$monitor("| a=%b | b=%b | c=%b | d=%b | e=%b | m=%b | n=%b | o=%b | p=%b |   time=%0t ",a,b,c,d,e,m,n,o,p,$time);
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
