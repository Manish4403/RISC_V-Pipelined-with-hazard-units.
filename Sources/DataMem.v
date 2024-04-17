`timescale 1ns/1ps

module DataMem(WD, A, clk, WE, RD, RD1);
    input [13:0] A;  // because this sofware doesn't support 32 bit size address line.
    input [31:0] WD;  //WD - write Data
    input clk;
    input WE;  //write enable
    output [31:0]RD,RD1;
    
    integer i;
    reg [31:0] datamem[0:31];
    reg [31:0] datamem_next;
//    wire [31:0]adr;
//    assign adr = {A[31:2], 2'b00}; // address is 0, 4 , 8 ... each data is 4 bytes long.
    assign RD = datamem[A];   // Async read 
    assign RD1 = datamem[5]; // check for the datat to be stored.
    always @(posedge clk)    // Sync write
    begin
//        if(rst)begin
//                for(i = 0; i <16384; i =i+1)begin
//                    datamem[i] <= 32'b0;
//                end
//        end    
//        else
            datamem[A] <= datamem_next;   // Store the previous value
    end
    
    always@ (*)begin
        if(WE)
            datamem_next = WD;
        else
            datamem_next = datamem[A];
            
    end
    initial   // initializing some values (with a gap of 4)
        begin
            datamem[0] = 32'h9F5D4A6E;
            datamem[4] = 32'he;
            datamem[8] = 32'h0000000a;
            datamem[12] = 32'h0000000a;
            datamem[31] = 32'h00000056;
//            datamem[8192] = 32'h0000000a;
//            datamem[760] = 32'h0000000d;
//              $readmemb("data.mem", datamem);
        end
endmodule