//design
module odd_parity(input [3:0]a ,input parity,output error);
assign error = ~(a[0]^a[1]^a[2]^a[3]^parity);
endmodule
