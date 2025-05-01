class arr;

	rand bit arr[4:0];

	constraint c1{arr inside{[0:40]};  !(arr inside {10,20,30,40});}

endclass
