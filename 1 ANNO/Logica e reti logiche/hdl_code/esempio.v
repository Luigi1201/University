module circ(a,b,c,y);
    input a,b,c;
    output y;
    
    wire n1,a1;

    not(n1,b);
    and(a1,a,n1);
    xor(y,a1,c);
endmodule
