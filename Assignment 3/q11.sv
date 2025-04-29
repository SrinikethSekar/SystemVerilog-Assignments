class constraint_example;

	rand bit [3:0] a;

	constraint hard_constraint{a>5;}

	constraint soft_constraint {a soft == 15;}

endclass

module q15;

	constraint_example c;

	initial begin

		c=new();

		c.randomize();

		$display("Value of the a=%0d",c.a);

	end

endmodule
