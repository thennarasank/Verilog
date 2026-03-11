//design
module demux_8to1(
input wire a,
input wire[2:0] s,
output reg[7:0] out);
always @(*) begin 
out = 8'b0;
out [s] = a;
end
endmodule
