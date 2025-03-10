module test;
  
  int arr[longint];
  
  longint idx;
  
 
  
  initial begin
    
    longint iidx = 1;
    
    for(idx=0;idx<65;idx++) begin
    
      arr[idx] = iidx;
     
      iidx = iidx << 1;
    
    end
    
    $display( "%p" , arr );
    
  end
  
  
endmodule
