`timescale 10ns/1ns

module tb_adder();
    reg a,b,cin;
    wire sum,carry;

    fa fa1(.a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));

    initial begin
        $dumpfile("esfa.vcd");
        $dumpvars;
        a = 0; b = 0; cin = 0; #1;
        a = 0; b = 0; cin = 1; #1;
        a = 0; b = 1; cin = 0; #1;
        a = 0; b = 1; cin = 1; #1;
        a = 1; b = 0; cin = 0; #1;
        a = 1; b = 0; cin = 1; #1;
        a = 1; b = 1; cin = 0; #1;
        a = 1; b = 1; cin = 1; #1;
    end

endmodule
