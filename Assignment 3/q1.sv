//For a variable rand bit [31:0] addr,write a constraint to generate the address range between 0-20 and 4020-4075?
class parent;

	rand bit [31:0] addr;
	
	constraint a1{addr inside {[0:20],[4020:4075]};}

endclass

module q1;

	parent pr;

	initial begin

		pr=new();
		pr.randomize();
		$display("Value of the addr:%0d",pr.addr);

	end

endmodule

