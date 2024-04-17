`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2024 18:48:34
// Design Name: 
// Module Name: Controller
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Controller(clk,rst, op, funct3, funct7, pcsrc, resultsrc, memwrite, alucontrol, alusrc, immsrc, regwrite, load_src, branch,store_src);
    input [6:0]op;
    input [2:0] funct3;
    input branch,funct7, clk, rst;
    
    output [1:0]pcsrc;
    output reg [1:0] store_src;
    output [2:0] resultsrc;
    output [2:0]immsrc;
    output [3:0] alucontrol;
    output memwrite, alusrc, regwrite;
    output reg [2:0] load_src;
    wire  [1:0]aluop;
    wire jal, jalr, load,store;
    wire [2:0] l_s;
    reg [2:0] l_s_next;
    wire [1:0] s_s;
    reg [1:0] s_s_next;
    //Instatiating the alu decoder
    ALU_decoder ALU_decoder(.funct3(funct3), .ALUOp(aluop), .funct7(funct7), .ALUControl(alucontrol),.op4(op[4]));
    
    // Instatiating the  main decoder
    Main_decoder Main_decoder(.op(op), .resultsrc(resultsrc), .memwrite(memwrite), .alusrc(alusrc), .immsrc(immsrc), .regwrite(regwrite), 
                              .jal(jal), .jalr(jalr) ,.aluop(aluop), .load(load), .funct3(funct3), .funct7(funct7), .store(store));
                              
    // Instantiating the branch module
    store_controller store_controller(.funct3(funct3[1:0]),  .result(s_s));
    
    //Load controller
    load_controller load_controller(.funct3(funct3),  .result(l_s));
    
    assign pcsrc = (jalr) ? 2'b10 : (branch | jal) ? 2'b01 : 2'b00;
    
    
    // Hold load.
    always@(posedge clk) begin
        if(rst)
            load_src <= 3'b000;
        else if(load)
            load_src <= l_s;
        else
            load_src <= l_s_next;
    end
    
    always@(*) begin
        l_s_next = load_src;
    end
    //Hold store
    always@(posedge clk) begin
        if(rst)
            store_src <= 2'b00;
        else if(store)
            store_src <= s_s;
        else
            store_src <= s_s_next;
    end
    
    always@(*) begin
        s_s_next = store_src;
    end
    
endmodule
