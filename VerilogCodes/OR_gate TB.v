module OR_gate_tb;
    reg a, b;
    wire y;

    OR_gate uut(a, b, y);

    initial begin
        $dumpfile("dump.vcd"); $dumpvars;
        a = 0; b = 0;
        #1 $display("%b OR %b = %b", a, b, y);
        
        a = 0; b = 1;
        #1 $display("%b OR %b = %b", a, b, y);
        
        a = 1; b = 0;
        #1 $display("%b OR %b = %b", a, b, y);
        
        a = 1; b = 1;
        #1 $display("%b OR %b = %b", a, b, y);
    end
endmodule
