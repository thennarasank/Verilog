//design
module blocking (
output reg a,
output reg b,
output reg c
);
always @(*) begin
a = 0;
b = a;
a = b;
c = 1;
end
endmodule
