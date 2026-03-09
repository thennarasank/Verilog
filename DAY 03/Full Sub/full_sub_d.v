//design
module full_sub(input a,b,cin, output diff,borrow);
assign diff   = a ^ b ^ cin;
assign borrow = ( ~a&b | b&cin | ~a&cin );
endmodule
