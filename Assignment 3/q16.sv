class dyn_array_test;
    rand bit [7:0] arr[]; 

    constraint c1 {
        arr.size() == 5;              
        foreach (arr[i]) {
            arr[i] inside {[10:50]};   
        }
    }
endclass

module tb;
    dyn_array_test obj;

    initial begin
        obj = new();
        if (obj.randomize())
            $display("Randomized array = %p", obj.arr);
        else
            $display("Randomization failed");
    end
endmodule

