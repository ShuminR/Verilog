/*
Suppose you're building a circuit to process scancodes from a PS/2 keyboard for a game. Given the last two bytes of scancodes received, you need to 
indicate whether one of the arrow keys on the keyboard have been pressed. This involves a fairly simple mapping, which can be implemented as a case 
statement (or if-elseif) with four cases.
*/

module top_module (
    input [15:0] scancode,
    output reg left,
    output reg down,
    output reg right,
    output reg up  ); 
    parameter left_a	= 16'he06b;
    parameter down_a 	= 16'he072;
    parameter right_a 	= 16'he074;
    parameter up_a 		= 16'he075;
    always@(*)
        begin
            up		=0;
            down	=0;
            right	=0;
            left	=0;
            case(scancode)
                left_a	:left  = 1'b1;
                down_a	:down  = 1'b1;
                right_a	:right = 1'b1;
            	up_a	:up	   = 1'b1;
              
           endcase
        end
endmodule
