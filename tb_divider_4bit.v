`timescale 1ns/1ps
module tb_divider_4bit;
    reg  [3:0] dividend;
    reg  [3:0] divisor;
    wire [3:0] quotient;
    wire [3:0] remainder;

    divider_4bit uut (
        .dividend(dividend),
        .divisor(divisor),
        .quotient(quotient),
        .remainder(remainder)
    );

    initial begin
        $dumpfile("output.vcd");
        $dumpvars(0, tb_divider_4bit);

        // Test cases
        dividend = 4'd10; divisor = 4'd2; #10;
        dividend = 4'd15; divisor = 4'd4; #10;
        dividend = 4'd9;  divisor = 4'd3; #10;
        dividend = 4'd7;  divisor = 4'd5; #10;
        dividend = 4'd8;  divisor = 4'd0; #10; // Division by zero case

        $finish;
    end
endmodule
