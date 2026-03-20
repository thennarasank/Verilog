//design
module d_latch(input d, enable, output reg q);
always@(d or enable)begin
if(enable)
q=d;
end
endmodule
