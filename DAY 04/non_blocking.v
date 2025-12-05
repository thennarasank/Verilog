//design
module non_blocking;
reg a, b, c;
initial begin
a = 1;
b <= a;  
a = 0;
c <= b;
b = 1;
a <= c;  
end
endmodule
// Testbench
module tb_non_blocking;
reg a, b, c;
//dut
non_blocking dut();
  initial begin
        $monitor("time=%0t | a=%b | b=%b | c=%b",$time, dut.a, dut.b, dut.c);
        #10; 
        $finish;
    end
endmodule
