//design
module full_sub(input a,b,cin, output diff,borrow);
assign diff   = a ^ b ^ cin;
assign borrow = ( ~a&b | b&cin | ~a&cin );
endmodule
//test bench
module tb_full_sub;
reg a,b,cin;
wire diff,borrow;
//dut
full_sub dut(.a(a),.b(b),.cin(cin),.diff(diff),.borrow(borrow));
initial begin 
	$display(" ======FULL_SUBTRACTOR====== ");
	$monitor(" | a=%b | b=%b | cin=%b | diff=%b | borrow=%b | time=%0t ",a,b,cin,diff,borrow,$time);
       $dumpfile("full_sub.vcd");
       $dumpvars();       

       a=0; b=0; cin=0;
       #10
       a=0; b=0; cin=1;
       #10
       a=0; b=1; cin=0;
       #10
       a=0; b=1; cin=1;
       #10
       a=1; b=0; cin=0;
       #10
       a=1; b=0; cin=1;
       #10
       a=1; b=1; cin=0;
       #10
       a=1; b=1; cin=1;
       #10
       $finish;
       end
       endmodule
