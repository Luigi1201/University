module ha(a,b,sum,carry);
    input a,b;
    output sum,carry;

    xor(sum,a,b);
    and(carry,a,b);
endmodule

module fa(a,b,cin,sum,carry);
    input a,b,cin;
    output sum,carry;

    wire s1,c1,c2;
    ha ha1(.a(a),.b(b),.sum(s1),.carry(c1));
    ha ha2(.a(s1),.b(cin),.sum(sum),.carry(c2));
    or(carry,c1,c2);
endmodule


