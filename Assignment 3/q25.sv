//write a constraint to generate a variable with 31 bits should be 1 and 32-61 bits should be 0

class parent;

  rand bit[61:0]data;

	constraint one{
	foreach(data[i]){
		if(i>=0 && i<=30)
			data[i]==1;
      else if(i>=31 && i<=61)
			data[i]==0;
	          }
	}
      

endclass

module child;
	
	initial begin

		parent p = new();
		
		if(p.randomize())
			$display("Value of the data=%b",p.data);
		else
			$display("Randomization Failed");

	end

endmodule
      
//Value of the data=00000000000000000000000000000001111111111111111111111111111111

