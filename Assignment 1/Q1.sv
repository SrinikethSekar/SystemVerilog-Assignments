module dynarrsort;
  
  int arr[];
  
  initial begin
    
    arr = new[10];
    
    arr = { 10, 5, 5, 7, 8, 9, 4, 6, 1, 2 };
    
    $display( "%p",arr );
    
    arr.sort();
    
    $display( "%p",arr );
    
  end  
  
endmodule
