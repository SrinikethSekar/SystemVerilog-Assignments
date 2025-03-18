// Write a test bench to test the dynamic array data type and its predefined
// methods by using the following statements
// a. declare two dynamic arrays d1, d of type int
// b. initialize d array elements with (9,1,8,3,4,4)
// c. allocate six elements in array d1
// d. initialize array d1 with index as its value
// e. display d1 and its size
// f. delete array d1
// g. reverse, sort, reverse sort, and shuffle the array d

module Q6;

	int d1[];
	int d[]='{9,1,8,3,3,4};

	initial begin

		d1=new[6];

		foreach(d1[i]) begin
			d1[i]=i;
			
		end
		$display("d1 elements : %p",d1);
		$display("size of d1 : %0d ",d1.size());


		d1.delete();

		$display("size of d1 after the deletion :%0d",d1.size());


		d.reverse();
		$display("Reverse of D: %0p",d);

		d.sort();
		$display("Sorted D: %0p",d);

		d.rsort();
		$display("Reverse Sorted D: %0p",d);

		d.shuffle();
		$display("Suffled D: %0p",d);

		$finish;




	end

endmodule

// # d1 elements : '{0, 1, 2, 3, 4, 5}
// # size of d1 : 6 
// # size of d1 after the deletion :0
// # Reverse of D: 4 3 3 8 1 9
// # Sorted D: 1 3 3 4 8 9
// # Reverse Sorted D: 9 8 4 3 3 1
// # Suffled D: 3 1 8 3 9 4
