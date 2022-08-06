/*
A "population count" circuit counts the number of '1's in an input vector. Build a population count circuit for a 3-bit input vector.
*/
module top_module( 
    input [2:0] in,
    output [1:0] out );
    reg [1:0]	out_reg;
    integer i;
    always@(*)begin
      	out_reg = 2'd0;    
        for(i=0;i<3;i=i+1)
                begin
                out_reg = out_reg+in[i];
           	 	end
        end
    assign out = out_reg;
endmodule