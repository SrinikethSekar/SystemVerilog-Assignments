//Write constraints to generate elements of a dynamic array (abc as shown in code below) such that each element of the array is less than 10 and the array size is less than 10.

class dynamic_array;
	
	rand  int  unsigned abc[];
	
	constraint c1{abc.size() inside {[0:9]};}

	constraint c2{foreach(abc[i])
			{abc[i]<10;}
	}

endclass

module 	q14;

	dynamic_array p;

	initial begin

		p=new();

		p.randomize();

      $display("Value of abc=%0p",p.abc);

	end

endmodule
                  
//Value of abc='{3, 8, 6, 2, 3, 7}

