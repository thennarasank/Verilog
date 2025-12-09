//design
module memory;
reg [3:0] reg_a [0:2];  
initial begin
reg_a[0] = 12;
reg_a[1] = 10;
reg_a[2] = 5;
$display("reg_a[0] = %b", reg_a[0]);
$display("reg_a[1] = %d", reg_a[1]);
$display("reg_a[2] = %h", reg_a[2]);
end
endmodule
//test bench
module tb_memory;
reg [3:0] reg_a [0:2];
//dut 
 memory dut();
initial begin
reg_a[0] = 12;
reg_a[1] = 10;
reg_a[2] = 5;
$display("reg_a[0] = %b", reg_a[0]);
$display("reg_a[1] = %d", reg_a[1]);
$display("reg_a[2] = %h", reg_a[2]);
$dumpfile("memory.vcd");
$dumpvars();
#10;
$finish;
end 
endmodule
