class array_abc;
    rand  int unsigned myarray[];
    
    constraint c_abc_val {
        myarray.size inside { [10:16] };             // Array size: 10 to 16
        foreach (myarray[i])
            if (i > 0) myarray[i] < myarray[i-1];     // Strictly decreasing order
    }
endclass

module q1;
  
  array_abc pr;
  
  initial begin
    pr=new();
    pr.randomize();
    $display("Values inside myarray=%0p",pr.myarray);
  end
  
endmodule


// Values inside myarray='{'hffff4cd1, 'hfffe7f34, 'hff10ca1d, 'hff0b9bfe, 'hfebd4f6a, 'hef4680e9, 'he2bfefdc, 'he04f2167, 'hddf302fe, 'hc6eb0012, 'hb36931a2} 
