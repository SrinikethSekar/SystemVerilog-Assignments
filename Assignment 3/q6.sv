//Is it possible to override a constraint defined in the base class in the derived class and if so how?

class base;

	rand int x;

	constraint a_x{x inside {[1:10]};}

endclass

class derived extends base;

	function void post_randomize();

		this.a_x.constraint_mode(0);

	endfunction

	constraint a1_x{x inside {[20:30]};}

endclass

module q2;

	base dv;

	initial begin
	
		dv=new();
		dv.randomize();
		$display("Value of the x=%0d",dv.x);

	end

endmodule



	
