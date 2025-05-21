`timescale 10ns/1ns

module tb_circ();
    reg a1,b1,c1;
    wire y1;

    circ c(.a(a1), .b(b1), .c(c1), .y(y1));

    initial begin
        $dumpfile("esout.vcd");
        $dumpvars;
        a1 = 0; b1 = 0; c1 = 0; #1;
        a1 = 0; b1 = 0; c1 = 1; #1;
        a1 = 0; b1 = 1; c1 = 0; #1;
        a1 = 0; b1 = 1; c1 = 1; #1;
        a1 = 1; b1 = 0; c1 = 0; #1;
        a1 = 1; b1 = 0; c1 = 1; #1;
        a1 = 1; b1 = 1; c1 = 0; #1;
        a1 = 1; b1 = 1; c1 = 1; #1;
    end

endmodule
