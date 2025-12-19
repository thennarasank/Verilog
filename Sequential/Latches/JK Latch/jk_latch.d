//design
module jk_latch (input j,input k,input enable,output reg q);
always @(*) begin
if (enable) begin
case ({j,k})
2'b00: q = q; 
2'b01: q = 1'b0;
2'b10: q = 1'b1; 
2'b11: q = ~q;     
endcase
end
end
endmodule
