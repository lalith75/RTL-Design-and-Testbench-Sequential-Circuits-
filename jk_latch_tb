module jk_flipflop_tb();
reg j,k;
reg clock;
wire Q,Qb;

jk_flipflop DUT(.j(j),.k(k),.clock(clock),.Q(Q),.Qb(Qb));
initial
begin
    clock=0;
    forever #5 clock=~clock;
end

initial
begin
j=0;k=0;

end

initial
begin
    #10;j=0;k=0;
    #10;j=0;k=1;
    #10;j=1;k=0;
    #10;j=1;k=1;
    #60 $finish;
end
initial 
$monitor("The values are Time=%0t|clock=%b,j=%b,k=%b,Q=%b;Qb=%b",$time,clock,j,k,Q,Qb);
endmodule
