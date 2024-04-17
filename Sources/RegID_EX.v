`timescale 1ns / 1ps



module RegID_EX(
//output
RegwriteE, MemwriteE, alusrcE,resultsrcE, load_srcE,store_srcE,                         
alucontrolE,Rd1E, Rd2E, ImmextE, Pcplus4E, PcE,
Rs1E, Rs2E, RdE,clk, clr, rst,
//input
RegwriteD, MemwriteD, alusrcD,
resultsrcD, load_srcD,
 store_srcD,alucontrolD,
 Rd1D, Rd2D, ImmextD, Pcplus4D, PcD,
 Rs1D, Rs2D, RdD
);
    input clk, clr, rst;
    input RegwriteD, MemwriteD, alusrcD;
    input[2:0] resultsrcD, load_srcD;
    input [1:0] store_srcD;
    input [3:0] alucontrolD;
    input [31:0] Rd1D, Rd2D, ImmextD, Pcplus4D, PcD;
    input [4:0] Rs1D, Rs2D, RdD;
    
    
    output reg RegwriteE, MemwriteE, alusrcE;
    output reg [2:0] resultsrcE, load_srcE;
    output reg [1:0] store_srcE;
    output reg [3:0] alucontrolE;
    output reg [31:0] Rd1E, Rd2E, ImmextE, Pcplus4E, PcE;
    output reg [4:0] Rs1E, Rs2E, RdE;
    
always@(posedge clk or posedge clr)begin
    if(rst || clr) begin
        resultsrcE <= 3'b0;
        load_srcE <= 3'b0;
        store_srcE <= 2'b0;
        RegwriteE <= 1'b0;
        MemwriteE <= 1'b0;
        alusrcE <= 1'b0;
        alucontrolE <= 4'b0;
        Rd1E <= 32'b0;
        Rd2E <= 32'b0;
        ImmextE <= 32'b0;
        Pcplus4E <= 32'b0;
        PcE <= 32'b0;
        Rs1E <= 5'b0;
        Rs2E <= 5'b0;
        RdE <= 5'b0;
    end
    else begin
        resultsrcE <= resultsrcD;
        load_srcE <= load_srcD;
        store_srcE <= store_srcD;
        RegwriteE <= RegwriteD;
        MemwriteE <= MemwriteD;
        alusrcE <= alusrcD;
        alucontrolE <= alucontrolD;
        Rd1E <= Rd1D;
        Rd2E <= Rd2D;
        ImmextE <= ImmextD;
        Pcplus4E <= Pcplus4D;
        PcE <= PcD;
        Rs1E <= Rs1D;
        Rs2E <= Rs2D;
        RdE <= RdD;
    end
end


endmodule
