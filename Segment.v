module Segment

(
input [3:0] in,
output reg [6:0] decoder_out
);

	always @ (*)

		begin

			decoder_out = 0;

		 begin
 
			case (in)

			 4'b0000 : decoder_out = 7'b1000000;
			 4'b0001 : decoder_out = 7'b1111001;
			 4'b0010 : decoder_out = 7'b0100100;
			 4'b0011 : decoder_out = 7'b0110000;
			 4'b0100 : decoder_out = 7'b0011001;
			 4'b0101 : decoder_out = 7'b0010010;
			 4'b0110 : decoder_out = 7'b0000010;
			 4'b0111 : decoder_out = 7'b1111000;
			 4'b1000 : decoder_out = 7'b0000000;
			 4'b1001 : decoder_out = 7'b0010000;
			 4'b1010 : decoder_out = 7'b0001000;
			 4'b1011 : decoder_out = 7'b0000011;
			 4'b1100 : decoder_out = 7'b1000110;
			 4'b1101 : decoder_out = 7'b0100001;
			 4'b1110 : decoder_out = 7'b0000110;
			 4'b1111 : decoder_out = 7'b0001110;

		
			endcase
 
		end
 
	end

endmodule
