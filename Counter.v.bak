module Counter

#(
  parameter WIDTH = 8
)

(
 input rst_n,
 input load,
 input key,
 input SW,
 input [WIDTH - 1:0] data_load,
 output [13:0] hex_out //выход на первые индикаторы
);

	reg [WIDTH - 1:0] count = 0;

	  always@ ( negedge key or negedge rst_n or negedge load)
     begin
			 
			if (!load) // При установленном сигнале load вводим предустановленное значение счетчика
         count <= data_load;
			
         else if (!rst_n)
         count <= {WIDTH{1'b0}};
				 
         else if (SW && !key) // Инкремент
         count <= count + 1'b1;
				  
			else if (!SW && !key) // Декремент
		   count <= count - 1'b1;
		  
     end

	Segment first
	(
		.in (count [3:0]),
		.decoder_out (hex_out[6:0])
	);
	
	Segment second
	(
		.in (count [7:4]),
		.decoder_out (hex_out[13:7])
	);
  
endmodule 
