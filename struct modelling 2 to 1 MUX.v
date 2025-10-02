module s_2to1_MUX(in,sel,out);
    input[1:0]in;
    input sel;
    output out;
    wire t1,t2,t3;
    NOT G1(t1,sel);
    AND G2(t2,in[0],t1);
    AND G3(t3,in[1],sel);
    OR G4(out,t2,t3);
    
endmodule
