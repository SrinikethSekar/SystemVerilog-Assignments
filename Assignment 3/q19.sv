module random;

	int a , b;

	initial begin

		if(std::randomize(a,b)with {a<b;a>10;b<100;})
			$display("Value of the A=%0d B=%0d",a,b);
		else
			$display("Randmoization Failed");
	end

endmodule
