//design
module demux_16to1(
input wire a,
input wire[3:0] s,
output reg[15:0] out);
always @(*) begin 
out = 16'b0;
out [s] = a;
end
endmodule
