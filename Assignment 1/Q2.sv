module qinq;
  
  int q1[$];
  int q2[$];
  
  initial begin
    
    q1 = { 2 , 4 , 6 , 8 };
    q2 = { 1 , 3 , 5 , 7 };
  	
    $display( "q1 = %p" , q1 );
    $display( "q2 = %p" , q2 );
    
   // q1 = {q1,q2};
    
   //$display( "q1 = %p" , q1 );
    
    foreach(q2[i]) begin
      q1.push_back(q2[i]);
    end
    
    $display( "q1 = %p" , q1 );
    
  end
  
endmodule
