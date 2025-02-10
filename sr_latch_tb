module sr_latch_tb();
reg s,r;
reg clock;
wire Q,Qb;
sr_latch DUT(.s(s),.r(r),.clock(clock),.Q(Q),.Qb(Qb));
always
    begin 
        clock=0;
        forever #5 clock=~clock;
    end
initial

begin
#10;s=0;r=0;
#10;s=0;r=1;
#10;s=1;r=0;
#10;s=1;r=1;
#20; $finish;
end
initial
$monitor("The values are clock=%b,s=%b,r=%b,Q=%b,Qb=%b",clock,s,r,Q,Qb);
endmodule
