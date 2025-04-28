class packet;

  rand bit [31:0] addr;
	constraint c{addr inside {[0:100]};}
endclass

module okay;

	packet pk;

	initial begin
		pk=new();
		pk.c.constraint_mode(0);
		pk.randomize with {addr >200;};

      $display("value of addr=%0d",pk.addr);

	end
endmodule

//value of addr=2596104342
