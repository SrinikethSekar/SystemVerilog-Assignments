//Inside the class two random variables are there A & B that A should be greater than B externally you have to write a condition for this

class base;

	rand bit [3:0]a,b;


endclass

module q10;

	base br;

	initial begin
		 br=new();
      if(br.randomize()  with {a > b;})
		
			$display("Value of the a=%0d,b=%0d",br.a,br.b);
		else
			$display("Randomization Failed");


	end
endmodule

// Value of the a=11,b=1
