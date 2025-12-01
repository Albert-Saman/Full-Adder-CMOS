module XOR_gate_tb;
    reg a, b;
    wire y;

    XOR_gate uut(a, b, y);

    initial begin
        $dumpfile("dump.vcd"); $dumpvars;
        a = 0; b = 0;
        #1 $display("%b XOR %b = %b", a, b, y);
        
        a = 0; b = 1;
        #1 $display("%b XOR %b = %b", a, b, y);
        
        a = 1; b = 0;
        #1 $display("%b XOR %b = %b", a, b, y);
        
        a = 1; b = 1;
        #1 $display("%b XOR %b = %b", a, b, y);
    end
endmodule
