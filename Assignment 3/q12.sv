class parent;

	rand logic [15:0] a, b, c;

	constraint c_abc {
    			a < c;
    			b == a;
    			c < 30;
    			b > 25;
                        }

endclass


module q12;

	parent p;

	initial begin

		p=new();

		p.randomize();

      $display("Value of A=%0d B=%0d C=%0d",p.a,p.b,p.c);

	end

endmodule

// Value of A=27 B=27 C=28
