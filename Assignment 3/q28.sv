class array;

	rand bit [7:0]arr[][];

	constraint c1{
		arr.size() inside {[5:10]};
		foreach (arr[i]){
			arr[i].size()==5;
		}
	}

endclass

module tb;

	array obj;

	initial begin

		obj = new();

		  if (obj.randomize()) begin
     			 $display("Randomization successful!");
      			 $display("First dimension size: %0d", obj.arr.size());

      			foreach (obj.arr[i]) begin
        		$display("Row %0d (Size = %0d): %p", i, obj.arr[i].size(), obj.arr[i]);
     		 end
   		 end else begin
     			 $display("Randomization failed.");
    			  end
 	 end
endmodule
