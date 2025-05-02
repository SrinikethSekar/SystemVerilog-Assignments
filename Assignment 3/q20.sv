class parent;
    rand bit [16:0] a[10]; 

    constraint range_c {
        a.size() == 10;                      
        foreach (a[i]) a[i] inside {[1000:2000]}; 
        unique {a};                          
    }
endclass

module child;
    parent pr;

    initial begin
        pr = new();
        if (pr.randomize())
            foreach (pr.a[i])
                $display("a[%0d] = %0d", i, pr.a[i]);
        else
            $display("Randomization Failed");
    end
endmodule

