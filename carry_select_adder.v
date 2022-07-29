module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0]sum_low;
    wire cout;
    wire [15:0] sum_high0;
    wire [15:0] sum_high1;
	
    add16 add16_low_inst(
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(1'b0),
        .cout(sum_low),
        .sum(cout)
 	);
    add16 add16_high0_inst(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b0),
        .cout(),
        .sum(sum_high0)
 	);
    add16 add16_high1_inst(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b1),
        .cout(),
        .sum(sum_high1)
 	);
    assign sum = (cout)? {sum_high1,sum_low}:{sum_high0,sum_low};
endmodule