class abc;
  rand bit [3:0] data;

  constraint c1 {
    data >= 4;       data <= 12;  
  }
endclass

module tb;
  abc a;
  initial begin
    a = new();
    a.randomize() with { data == 3; };
    $display("a.data = %0d", a.data);
  end
endmodule

//Randomization failed due to constraint conflict.

