//Write constraints to create a random array of integers such that array size is System Verilog Constraints 20 and the values of array are prime numbers.

class primegenerator;

	rand int rand_primes[20];
	static int prime_list[$];

	function bit  is_prime(int num);

		int i;
		if(num<2)
			return 0;
		for(i=0;i<=num/2;i++) begin
			if(num%i == 0)
				return 0;
		end
		return 1;
		
	endfunction 


	static function void build_prime_list();

		int n;
		for(n=2;n<=100;n++)begin
			if(is_prime(n))begin
				prime_list.push_back(n);
			end
		end 
	endfunction

	constraint c_only_primes {
			foreach(rand_primes[i]) {
			rand_primes[i] inside {prime_list};
			}		
	}

	module q21;

		initial begin
			primegenerator::build_prime_list();
			primegenerator obj=new();

			if(obj.randomize())begin
				$display("Random Prime Array:",);
				foreach(obj.rand_primes[i])
					$write("%0d",obj.rand_primes[i]);
				$display("",);
			end
			else
				$display("Randomization Failed",);
		end
	end 
endmodule
				

	
	endmodule
