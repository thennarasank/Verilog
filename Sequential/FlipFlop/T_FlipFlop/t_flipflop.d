//design 
module t_flipflop ( input wire t,input wire rst, input wire clk, output reg q );
always @(posedge clk)begin
if (rst)
q <= 1'b0;
else if (t)
q <= ~q;
end
endmodule
