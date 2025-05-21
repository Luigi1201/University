module mux2to1(x,s,y);
     input [1:0]x;
     input s;
     output y;

     assign y = s ? x[1] : x[0];

endmodule

