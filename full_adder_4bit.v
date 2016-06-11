`timescale 1ns / 1ps
module full_adder_4bit(
    input [3:0] x,
    input [3:0] y,
    output [3:0] s,
    output cout
    );
	
	wire w1,w2,w3,w4;
	wire [3:0]s_temp;
	assign s = ~s_temp;
	assign cout = ~w4;
	full_adder fa1(x[0],y[0],0, s_temp[0],w1);
	full_adder fa2(x[1],y[1],w1, s_temp[1],w2);
	full_adder fa3(x[2],y[2],w2, s_temp[2],w3);
	full_adder fa4(x[3],y[3],w3, s_temp[3],w4);
	
	
	
endmodule
