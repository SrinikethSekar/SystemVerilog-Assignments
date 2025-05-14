//Take a rand variable with array size 10,need to get unique values in each location without using unique keyword and for any of 2 locations we need to get same value?

class parent;

	rand int arr[10];
	rand int dup_id1,dup_id2;
	rand int uniq_val[9];

	constraint c1 {
	dup_id1 inside {[0:9]};
	dup_id2 inside {[0:9]};
	dup_id1 != dup_id2;	
	
	}
	
	constraint c2 {
		foreach(uniq_val[i]){
			foreach (uniq_val[j]){
					if(i !=j)
						uniq_val[i] != uniq_val[j];

				}
			}
		}
	

	//filling the arr

	constraint c3 {
	int k=0;
	foreach (arr[i]){
		if(i== dup_id1 || i == dup_id2)
			arr[i] == uniq_val[0];
		else {
			arr[i] == uniq_val[k+1];
			k++;
			}
	}	
	}

endclass : parent

module q22;

	initial begin
		 parent p =new();
		 if(p.randomize())begin
		 	$display(" randomized array",);
		 		foreach(p.arr[i])
		 			$display("arr[%0d]=%0d",i,p.arr[i]);
		 		$display("Duplicate value: %0d at indices %0d and %0d",p.arr[p.dup_id1], p.dup_id1, p.dup_id2);
   		end

	    else
	      $display("Randomization failed.");
	  	end




endmodule
