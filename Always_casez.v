/*
A priority encoder is a combinational circuit that, when given an input bit vector, outputs the position of the first 1 bit in the vector. For example, a 
8-bit priority encoder given the input 8'b10010000 would output 3'd4, because bit[4] is first bit that is high.

Build a 8-bit priority encoder. For this problem, if none of the input bits are high (i.e., input is zero), output zero. Note that a
 4-bit number has 16 possible combinations.
*/

module top_module (
    input [7:0] in,
    output reg [2:0] pos  );
    always@(*)
        begin
            casez(in)
                8'bzzzz_zzz1:pos = 3'd0;
                8'bzzzz_zz10:pos = 3'd1;
                8'bzzzz_z100:pos = 3'd2;
                8'bzzzz_1000:pos = 3'd3;
                8'bzzz1_0000:pos = 3'd4;
                8'bzz10_0000:pos = 3'd5;
                8'bz100_0000:pos = 3'd6;
                8'b1000_0000:pos = 3'd7;
             	default: pos = 3'd0;
            endcase
        end
endmodule