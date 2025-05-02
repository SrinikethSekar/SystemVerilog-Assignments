class parent;

  rand bit [15:0] r,s,t;

  constraint c{r<t; s==r; t>30; s>25; r<=100; t<=100; }

endclass


module child;

	parent pr;

	initial begin

		pr=new();

		if(pr.randomize())
          $display("Value of the R=%0d S=%0d T=%0d",pr.r,pr.s,pr.t);
		else
			$display("Randomization Failed");

	end

endmodule

//Value of the R=40 S=40 T=57
