module associative;
  
  
  int assoc[longint];
  
  longint idx;
 
  
  
  
  initial begin
   longint value=1;
    
    
    for( idx=1;idx<65;idx++)begin
      
      
      assoc[idx]=value;
     value=value<<1; end   
    
      $display("array is : %p",assoc);
    
    if(assoc.first(idx));
    $display("first element : %0d",assoc[idx]);
   idx=5;
    if(assoc.next(idx));
    $display("next to index 5 : %0d",assoc[idx]);
    
    if(assoc.last(idx));
    $display("last element : %0d",assoc[idx]);
    
    idx=5;
    if(assoc.prev(idx));
    $display("element befor index 5 : %0d",assoc[idx]);
    
    
    
  end
endmodule


// ANSWER:

// # KERNEL: array is : '{1:1, 2:2, 3:4, 4:8, 5:16, 6:32, 7:64, 8:128, 9:256, 10:512, 11:1024, 12:2048, 13:4096, 14:8192, 15:16384, 16:32768, 17:65536, 18:131072, 19:262144, 20:524288, 21:1048576, 22:2097152, 23:4194304, 24:8388608, 25:16777216, 26:33554432, 27:67108864, 28:134217728, 29:268435456, 30:536870912, 31:1073741824, 32:-2147483648, 33:0, 34:0, 35:0, 36:0, 37:0, 38:0, 39:0, 40:0, 41:0, 42:0, 43:0, 44:0, 45:0, 46:0, 47:0, 48:0, 49:0, 50:0, 51:0, 52:0, 53:0, 54:0, 55:0, 56:0, 57:0, 58:0, 59:0, 60:0, 61:0, 62:0, 63:0, 64:0}
// # KERNEL: first element : 1
// # KERNEL: next to index 5 : 32
// # KERNEL: last element : 0
// # KERNEL: element befor index 5 : 8
