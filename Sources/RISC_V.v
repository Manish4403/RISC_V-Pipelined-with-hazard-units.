`timescale 1ns/1ps

module RISC_V(clk, rst, resultW);
            

    
    input clk, rst;
            // input[31:0] inst; // user's input instruction.
//    wire RegwriteE, MemwriteE, alusrcE,
//                RegwriteM, MemwriteM,
//                RegwriteW;
//    wire [31:0] srcA, srcB,  resultWD_mux;
//    wire [2:0] ResultSrcE, LoadSrcE,
//           ResultSrcM, LoadSrcM,
//           ResultSrcW, LoadSrcW;
           
//    wire [1:0]  StoreSrcE;
//    wire [3:0]  AluControlSrcE;
            
//Datapath wires (Pipeline)
//    wire [4:0]  Rs1D, Rs2D, RdD, 
//            Rs1E, Rs2E, RdE,
//            RdM,
//            RdW;
            
            
    wire [2:0] LoadSrcD, ResultSrcD;
    wire [3:0] AluControlSrcD;
    wire [2:0] funct3, ImmsrcD;
    wire [1:0] pcsrc,StoreSrcD;
    wire [6:0] op;
    wire MemwriteD, alusrcD, RegwriteD, funct7, ALU_branch;
    output [31:0] resultW;
//    wire [31:0] mem_loc, reg_loc;
    
    RISC_DATAPATH DATAPATH(clk, rst, pcsrc, MemwriteD, 
                     AluControlSrcD, alusrcD, ImmsrcD, RegwriteD,
                     ALU_branch, op, funct3, funct7,
                     //only for output
                    resultW,LoadSrcD, ResultSrcD,
                    pcsrc, StoreSrcD);

    
    Controller Contro_Unit(.clk(clk), .rst(rst), .op(op), .funct3(funct3), .funct7(funct7), .branch(ALU_branch), .pcsrc(pcsrc), .resultsrc(ResultSrcD), 
                        .memwrite(MemwriteD), .alucontrol(AluControlSrcD), .alusrc(alusrcD),
                         .immsrc(ImmsrcD), .regwrite(RegwriteD), .load_src(LoadSrcD), .store_src(StoreSrcD));
    
     
endmodule
