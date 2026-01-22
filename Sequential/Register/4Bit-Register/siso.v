//design
module siso (
    input  wire clk,
    input  wire reset,
    input  wire serial_in,
    output wire serial_out
);
reg [3:0] shift_reg;
always @(posedge clk or posedge reset) begin
if (reset)
shift_reg <= 4'b0000;
else
shift_reg <= {shift_reg[2:0], serial_in};
end
assign serial_out = shift_reg[3];
endmodule
//testbench
`timescale 1ns/1ps

module tb_siso;

    reg clk;
    reg reset;
    reg serial_in;
    wire serial_out;

    // Instantiate the DUT
    siso dut (
        .clk(clk),
        .reset(reset),
        .serial_in(serial_in),
        .serial_out(serial_out)
    );

    // Clock generation (10 ns period)
    always #5 clk = ~clk;

    initial begin
        // Initialize signals
        clk = 0;
        reset = 1;
        serial_in = 0;

        // Apply reset
        #10;
        reset = 0;

        // Apply serial data
        #10 serial_in = 1;
        #10 serial_in = 0;
        #10 serial_in = 1;
        #10 serial_in = 1;
        #10 serial_in = 0;

        // Finish simulation
        #40;
        $finish;
    end

    // Monitor values
    initial begin
        $monitor("Time=%0t | reset=%b | serial_in=%b | serial_out=%b",
                  $time, reset, serial_in, serial_out);
    end

endmodule

