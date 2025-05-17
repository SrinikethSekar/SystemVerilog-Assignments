class parent;

	rand bit [8:0] nit;

	constraint c{nit inside{[1:34],127,[129:156],[192:202],[257:260]};}

endclass

module child;

	parent p;

	initial begin

		p=new();

		repeat(10)begin

		if(p.randomize())
			$display("Values of the nit are %0d",p.nit);
		else
			$display("Randomization Failed");
		end
	end

endmodule

// Values of the nit are 134
// Values of the nit are 9
// Values of the nit are 21
// Values of the nit are 150
// Values of the nit are 8
// Values of the nit are 5
// Values of the nit are 202
// Values of the nit are 135
// Values of the nit are 21
// Values of the nit are 195
