`timescale 1ns/1ps


module InstMemory(A, RD);
    input [31:0] A;
    output [31:0] RD;
    // input [31:0] inst;
    reg [31:0] instmem[0:31];
    
//    assign adr =  A;
//    generate
//        for (i)
//    endgenerate
    // always@(*) begin
    //     instmem[0] = inst; // input as a instruction.
    // end
   initial   // initializing some values (with a gap of 4)
       begin
//            instmem[0] = 32'h0062e233; //or
//            instmem[16] = 32'h4010d313; //srai
//            instmem[20] = 32'h00c48413;
//            instmem[8] = 32'h01429ba3;
//            instmem[4] = 32'h0064a423; //sw
//            instmem[8] = 32'hfe420ae3; //beq
//            instmem[4] = 32'h01fa0a03; 
           instmem[0] = 32'hffa9a983;  //lw
//            instmem[12] = 32'h12345697; // auipc
//            instmem[12] = 32'hfe420ae3; //or
           instmem[4] = 32'h01498933; //add
////            instmem[16] = 32'hcb9c1263; b
//            instmem[16]=32'h8cdefab7; //lui
//            instmem[20] = 32'h7f8a60ef; // jal
//              $readmemh("instructions.mem", instmem);
       end
    assign RD = instmem[A];
endmodule
