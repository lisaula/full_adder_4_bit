`timescale 1ns / 1ps
module VGA_LOGIC(
	input clk,
   input red_in,
   input green_in,
   input blue_in,
	output reg red_out,
   output reg green_out,
   output reg blue_out,
	output reg hsync,
	output reg vsync
	);
 reg [9:0]hcount;
 reg [9:0]vcount;
 always @(clk)
 begin
	if(hcount == 799)
	begin
		hcount =0;
		if(vcount ==524)
		begin
			vcount =0;
		end else begin
			vcount = vcount+1;
		end
	end else begin
		hcount = hcount +1;
	end
	
	if(vcount >= 490 && vcount <492) begin
		vsync =0;
	end else begin
		vsync =1;
	end
	
	if(hcount >=656 && hcount <752) begin
		hsync =0;
	end else begin
		hsync =1;
	end
	
	if(hcount < 640 && vcount <480) begin
	red_out =red_in;
   green_out = green_in;
   blue_out=blue_in;
	end else begin
	red_out =1'b0;
   green_out = 1'b0;
   blue_out=1'b0;
	end
 end
endmodule
