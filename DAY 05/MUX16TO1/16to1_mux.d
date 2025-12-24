//design 
module mux_16to1(input [15:0]d,input [3:0]s,output reg y);
always @(*) begin
case (s)
4'd0  : y = d[0];
4'd1  : y = d[1];
4'd2  : y = d[2];
4'd3  : y = d[3];
4'd4  : y = d[4];
4'd5  : y = d[5];
4'd6  : y = d[6];
4'd7  : y = d[7];
4'd8  : y = d[8];
4'd9  : y = d[9];
4'd10 : y = d[10];
4'd11 : y = d[11];
4'd12 : y = d[12];
4'd13 : y = d[13];
4'd14 : y = d[14];
4'd15 : y = d[15];
default: y = 1'b0;
endcase
end
endmodule
