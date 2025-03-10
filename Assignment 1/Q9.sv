module tqtq;
  
  int q[$];
  int tq[$];
  int f[$:6];
  int d[];
  
  int sum ;
  int product = 1 ;
  
  int x[$],y[$]; 
  int z[$];
  int dd[$];
  
  initial begin
    
   
    f = '{ 1, 6, 2, 6, 8, 6 };
    d = '{ 9, 1, 8, 3, 4, 4 };
    q = '{ 1, 3, 5, 7 };
    
    foreach( q[i] ) begin
      sum = sum + q[i];
      product = product * q[i]; 
      
    end
    $display( "sum = %0d , product = %0d",sum,product );
    
    x = q.min();
    y = q.max();
    
    $display( "min = %p",x );
    $display( "max = %p",y );
    
    z = f;
    z = z.unique();
    
    $display( " unique = %p " , z );
    
    dd = d.find()with(item > 3);
    $display( " item > 3 = %p ", dd );
    
    dd = d.find_index()with(item > 3);
    $display( " item_index > 3 = %p ", dd );
    
    dd = d.find()with(item > 99);
    $display( " item > 99 = %p ", dd );
    
    dd = d.find_last_index()with(item == 4);
    $display( " item == 4 = %p ", dd );
    
    dd = d.find_first_index()with(item == 8);
    $display( " item == 8 = %p ", dd );
    
    dd = d.find_last()with(item == 4);
    $display( " item == 4 = %p ", dd );
    
    dd = d.find()with(item > 7);
    $display( " item > 7 = %p ", dd );
    
    sum = 0;
    
    foreach( dd[i] )
      sum = sum + dd[i];
    $display( " sum item > 7 = %p ", sum );
    
    dd = d.find()with((item > 7)*item);
    sum = 0;
    foreach( dd[i] )
      sum = sum + dd[i];
    $display( " sum item > 7*7 = %p ", sum );
    
    
    
    dd = d.find()with(item < 8);
    sum = 0;
    foreach( dd[i] )
      sum = sum + dd[i];
    $display( " sum item < 8 = %p ", sum );;
    
    dd = d.find()with((item < 8) ? item : 0);
    sum = 0;
    foreach( dd[i] )
      sum = sum + dd[i];
    $display( " sum item <8? = %p ", sum );
    
    
    
    
  end
  
  
endmodule
