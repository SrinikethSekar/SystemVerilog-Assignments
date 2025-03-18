// a. declare a string data type and assign it to“SystemVerilog”
// b. use the getc() method to display the ASCII value of the first
// character of this string
// c. use toupper() method to display the string in capital letter
// d. concatenate the string with string “3.1a” and display
// e. replace the last character in the string with character ‘b’ using
// len() method and display
// f. use substr() method to display substring from 2nd to 5th
// character

module Q10;

string str = "SystemVerilog";

string concat_str;

initial begin
	//ASCII value of first character
	$display("ASCII value of first character--->",str.getc(0));

	//uppercase for the string
	$display("Capital letter of first letter--->",str.toupper());

	concat_str={str,"3.1a"};
	$display("Concatenated string--->%0s",concat_str);

	str.putc(str.len()-1,"b");
	$display("Replaced letter--->%0s",str);

	$display("Substring (2nd to 5th letter)--->%s",str.substr(2,5));

end

endmodule


//OUTPUT

// # ASCII value of first character--->  83
// # Capital letter of first letter--->SYSTEMVERILOG
// # Concatenated string--->SystemVerilog3.1a
// # Replaced letter--->SystemVerilob
// # Substring (2nd to 5th letter)--->stem
