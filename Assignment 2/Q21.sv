// Declare a 5 by 31 multi-dimensional unpacked array, my_array1. Each
// element of the unpacked array holds a 4-state value.
// a. Which of the following assignments are legal and not
// out-of-bounds?
// i. my_array1[4][30] = 1'b1;
// ii. my_array1[29][4] = 1'b1;
// iii. my_array1[4] = 31'b1;
// b. Draw my_array1 after the legal assignments are
// complete.

module Q11;
    // Declare a 5x31 multi-dimensional unpacked array
    logic my_array1[5][31];

    initial begin
   
  //      $display("Array after assignments:");
        for (int i = 0; i < 5; i++) begin
            $write("Row %0d: ", i);
            for (int j = 0; j < 31; j++)
                $write("%b ", my_array1[i][j]);
            $write("\n");
        end
    end
endmodule

// # Row 0: x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x 
// # Row 1: x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x 
// # Row 2: x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x 
// # Row 3: x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x 
// # Row 4: x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x x 
