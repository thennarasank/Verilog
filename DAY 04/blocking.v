//Design
module blocking;
reg a, b, c;
initial begin
     a = 1;
     b = a;  
     a = 0;   
     c = b;
     a = c;   
end
endmodule
  
//Test Bench
module tb_blocking;
reg a, b, c;
//dut
blocking dut();
initial begin
        $monitor("time=%0t | a=%b | b=%b | c=%b",$time, dut.a, dut.b, dut.c);

        $finish;
    end
endmodule
