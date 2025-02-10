module sr_latch(
    input s,r,
    input clock,
    output Q,Qb
    );
    wire w1,w2;
    nand N1(w1,s,clock);
    nand N2(w2,r,clock);
    nand N3(Q,w1,Qb);
    nand N4(Qb,w2,Q);
  
endmodule
