`timescale 1ns/1ps

module RISC_V_tb();
    reg clk, rst;
    wire [31:0] resultW;
        
     
    
    RISC_V dut (clk, rst, resultW);
    
    always #5 clk = ~clk;
    
    initial begin
        clk = 1'b0;
        rst = 1'b0;
        #2
        rst = 1'b1;
        #5
        rst = 1'b0;
        #4000 $finish;
    end
    
endmodule