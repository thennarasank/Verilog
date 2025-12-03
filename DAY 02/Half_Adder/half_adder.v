//design

module half_adder(input a,b,output s,c);
xor xor_gate(s,a,b);
and and_gate(c,a,b);
endmodule

//test_bench

module half_adder_tb();
reg a,b;
wire s,c;

//dut

half_adder dut(a,b,s,c);
initial begin
        $monitor("time=%0t,a=%b,b=%b,s=%b,c=%b",$time,a,b,s,c);
        $dumpfile("half_adder.vcd");
        $dumpvars(0, half_adder_tb);
        a=0;b=0;
        #5 a=0;b=1;
        #5 a=1;b=0;
        #5 a=1;b=1;
        #10;
        $finish;
        end
endmodule
