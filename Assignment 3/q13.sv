class unique_values;

	rand bit [3:0] a,b,c;

	constraint c{unique{a,b,c};}

endclass
