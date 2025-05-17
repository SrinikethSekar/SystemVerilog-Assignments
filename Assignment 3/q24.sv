class parent;

	rand bit [31:0] data;

	constraint one_count{ $countones(data) == 14;	}  //its a input function which will count the one and return the output with the spec

	constraint non_con_one{
		foreach(data[i])
			if(i<31)
			!(data[i]&&data[i+1]);
	}

endclass

module child;

	initial begin

		parent p =new();
		
		repeat(5)begin
		if(p.randomize())
			$display("value of the data=%b",p.data);
		else
			$display("Randomization failed");

		end

	end

endmodule 


// value of the data=10010101010010101010101010100001
// value of the data=10101001010101010100010101010001
// value of the data=01010100101001010010100101010101
// value of the data=10100100101010010100101001010101
// value of the data=10101010000010101010101010101001
