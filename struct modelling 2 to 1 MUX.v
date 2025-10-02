module s_2to1_MUX(in,sel,out);
    input[1:0]in;
    input sel;
    output out;
    wire t1,t2,t3;
    not G1(t1,sel);
    and G2(t2,in[0],t1);
    and G3(t3,in[1],sel);
    or G4(out,t2,t3);
    
endmodule


module 4to1_MUX(in,sel,out);
input[3:0]in;
    input[1:0] sel;
    output out;
    wire[1:0]t;
    s_2to1_MUX M0(in[1:0],sel[0],t[0]);
    s_2to1_MUX M1(in[3:2],sel[0],t[1]);
    s_2to1_MUX M2(t,sel[1],out);
    
endmodule
