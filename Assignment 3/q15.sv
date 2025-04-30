//Inside the class two random variables are there A & B that A should be greater than B externally you have to write a condition for this
class parent;

	rand bit [3:0]a,b;

endclass

module q11;

	parent p;

	initial begin

		p=new();
	
		if(p.randomize() with {a>b;})begin
         		 $display("Value of a=%0d| Value of b=%d",p.a,p.b);
			end 
		
		else begin 	
			$display("Randomization Failed");
		end
	end

endmodule

// Value of a=10| Value of b= 8



