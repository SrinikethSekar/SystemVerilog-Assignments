module q7;
  
  int j[];
  int q[$];
  
  initial begin
    
    j = new[3];
    
    j = {1};
    q = {0,2,5};
    
    q.insert(1,j[0]);
    $display(" q insert = %p " , q);
    
    q.delete(1);
    $display(" q delete = %p " , q);
    
    q.push_front(7);
    $display(" q push 7 = %p " , q);
    
    q.push_back(9);
    $display(" q back 9 = %p " , q);
    
    q.pop_back();
    $display(" q back pop = %p " , q);
    
    q.pop_front();
    $display(" q push pop = %p " , q);
    
    q.reverse();
    $display(" q reverse = %p " , q);
    
    q.rsort();
    $display(" q rsort = %p " , q);
    
    q.shuffle();
    $display(" q shuffle = %p " , q);
    
  end
  
endmodule
