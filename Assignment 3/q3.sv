// class ABC;
// rand int length;
// rand byte SA;
// constraint c_length { length inside [1:64];}
// constraint c_sa {SA inside [1:16];}
// endclass
// ABC abc = new();
// abc.c_length.constraint_mode(0)

class parent;
  
  rand int length;
  rand byte sa;
  
  constraint c_length {length inside {[1:64]};}
  constraint c_sa { sa inside {[1:16]};}
  
endclass

module q3;
  
  parent pr;
  
  initial begin
    
    pr=new();
    pr.randomize();
    pr.c_length.constraint_mode(0);
    $display("value of length=%0d",pr.length);
    $display("value of sa=%0d",pr.sa);
    
  end
  
endmodule
 
// value of length=14
// value of sa=16
