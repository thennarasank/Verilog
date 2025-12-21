//design
module t_latch(input t,input enable,output reg q);
always @(*) begin
if (enable) begin
if (t)
q = ~q; 
else
q = q; 
end
end
endmodule
