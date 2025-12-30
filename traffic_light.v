//design
module traffic_light(input wire clk,input wire rst, output reg Red,output reg Yellow,output reg Green);
parameter red    = 2'd0;
parameter yellow = 2'd1;
parameter green  = 2'd2;
reg [1:0] state, next_state;
reg [3:0] timer;
always @(posedge clk or posedge rst) begin
if (rst) begin
state <= red;
timer <= 4'd0;
end else begin
state <= next_state;
timer <= timer + 1'b1;
end
end
always @(*) begin 
next_state = state;
case (state)
red: begin
if(timer == 4'd10)
next_state = green;
end
green: begin
if(timer == 4'd5)
next_state = yellow;
end
yellow: begin
if(timer == 4'd4)
next_state = red;
end
default: next_state = red;
endcase
end
always @(posedge clk) begin
if (state != next_state)
timer <= 4'd0;
end
always @(*) begin
Red    = 1'b0;
Yellow = 1'b0;
Green  = 1'b0;
case (state)
red:    Red    = 1'b1;
green:  Green  = 1'b1;
yellow: Yellow = 1'b1;
endcase
end
endmodule

//testbench
module tb_traffic_light;
reg clk;
reg rst;
wire Red;
wire Yellow;
wire Green;
traffic_light dut(.clk(clk),.rst(rst),.Red(Red),.Yellow(Yellow),.Green(Green));
always #3 clk = ~clk;
initial begin
$monitor("  clk=%b  |  rst=%b  |  Red=%b  |  Yellow=%b  |  Green=%b  |  time%0t  ",clk,rst,Red,Yellow,Green,$time);
$dumpfile("traffic_light.vcd");
$dumpvars();
end
initial begin
clk = 0;
rst = 1;#10;
rst = 0;#500;
$finish;
end
endmodule
