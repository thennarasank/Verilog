//design
module demux_4to1(
input wire a,
input wire[1:0] s,
output reg[3:0] out);
always @(*) begin 
out = 4'b0;
out [s] = a;
end
endmodule
