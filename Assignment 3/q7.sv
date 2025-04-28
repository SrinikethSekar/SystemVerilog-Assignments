//Without using rand keyword how can we randomize?

module test;

	int x;

	initial begin

		x=$urandom_range(1,10);
		$display("value of x=%0d",x);

	end

endmodule

//value of x=9

