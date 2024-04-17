`timescale 1ns / 1ps



module RegMM_WB(clk, rst,regwriteM,rdM,aluresultM, readDataM, auipcM,
                 immextM, pcplus4M,resultsrcM, loadsrcM,
                 //output
                 regwriteW,rdW,aluresultW, readDataW, auipcW,
                 immextW, pcplus4W,resultsrcW, loadsrcW
                 );
    input clk, rst; 
    
    input regwriteM;
    input [2:0] resultsrcM, loadsrcM;
    input [4:0] rdM;
    input [31:0] aluresultM, readDataM, auipcM,
                 immextM, pcplus4M;
    
    output reg regwriteW;
    output reg [2:0] resultsrcW, loadsrcW;
    output reg [4:0] rdW;
    output reg [31:0] aluresultW, readDataW, auipcW,
                 immextW, pcplus4W;
    
    always@(posedge clk) begin
        if(rst) begin
            regwriteW <= 1'b0;
            rdW <= 5'b0;
            aluresultW  <= 32'b0;
            readDataW  <= 32'b0;
            auipcW <= 32'b0;
            immextW <= 32'b0;
            pcplus4W <= 32'b0;
            resultsrcW <= 32'b0;
            loadsrcW <= 3'b0;
        end
        else begin
            regwriteW <= regwriteM;
            rdW <= rdM;
            aluresultW  <= aluresultM;
            readDataW  <= readDataM;
            auipcW <= auipcM;
            immextW <= immextM;
            pcplus4W <= pcplus4M;
            resultsrcW <= resultsrcM;
            loadsrcW <= loadsrcM;
        end
    end
               
endmodule
