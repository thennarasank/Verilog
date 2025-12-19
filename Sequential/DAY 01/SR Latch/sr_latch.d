//design
module sr_latch (input s,input r,output reg q,output qbar);
assign qbar = ~q;
always @ (s or r) begin
if (s == 1'b0 && r == 1'b0)
q <= q;    
else if (s == 1'b0 && r == 1'b1)
q <= 1'b0;   
else if (s == 1'b1 && r == 1'b0)
q <= 1'b1;    
else
q <= 1'bx;    
end
endmodule
