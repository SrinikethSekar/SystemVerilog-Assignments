module Q1;
  
  int arr[];
  
  initial begin
    
    arr = new[10];
    
    arr = { 10, 5, 5, 7, 8, 9, 4, 6, 1, 2 };
    
    $display( "%p",arr );
    
    arr.sort();
    
    $display( "%p",arr );
    
  end  
  
endmodule


// # '{10, 5, 5, 7, 8, 9, 4, 6, 1, 2}
// # '{1, 2, 4, 5, 5, 6, 7, 8, 9, 10}
