module Full_Adder_tb;
    reg a, b, cin;
    wire s, cout;

    Full_Adder uut(a, b, cin, s, cout);

    initial begin
        $dumpfile("dump.vcd"); $dumpvars;
        
        // 0 + 0 + 0
        a = 0; b = 0; cin = 0;
        #1 $display("%b + %b + %b = %b%b", a, b, cin, cout, s);
        
        // 0 + 0 + 1
        a = 0; b = 0; cin = 1;
        #1 $display("%b + %b + %b = %b%b", a, b, cin, cout, s);
        
        // 0 + 1 + 0
        a = 0; b = 1; cin = 0;
        #1 $display("%b + %b + %b = %b%b", a, b, cin, cout, s);
        
        // 0 + 1 + 1
        a = 0; b = 1; cin = 1;
        #1 $display("%b + %b + %b = %b%b", a, b, cin, cout, s);
        
        // 1 + 0 + 0
        a = 1; b = 0; cin = 0;
        #1 $display("%b + %b + %b = %b%b", a, b, cin, cout, s);
        
        // 1 + 0 + 1
        a = 1; b = 0; cin = 1;
        #1 $display("%b + %b + %b = %b%b", a, b, cin, cout, s);
        
        // 1 + 1 + 0
        a = 1; b = 1; cin = 0;
        #1 $display("%b + %b + %b = %b%b", a, b, cin, cout, s);
        
        // 1 + 1 + 1
        a = 1; b = 1; cin = 1;
        #1 $display("%b + %b + %b = %b%b", a, b, cin, cout, s);
    end
endmodule
