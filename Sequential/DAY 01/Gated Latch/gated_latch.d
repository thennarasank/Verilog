//design
module gated_latch(input d,input enable,output reg q);
always @(d or enable) begin
if (enable)
q <= d;
end
endmodule

