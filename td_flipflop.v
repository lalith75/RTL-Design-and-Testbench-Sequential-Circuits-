module dflipflop(D,clock,Q,Qb);
input D;
input clock;
output reg Q;
output reg Qb;
always @(posedge clock)
begin
    Q<=D;
    Qb<=~D;
end
endmodule

module td_flipflop(Q,T,clock,Qb);
input T;
input clock;
output Q,Qb;
wire w1;
assign w1=T^Q;
dflipflop D1(.D(w1),.clock(clock),.Q(Q),.Qb(Qb));
endmodule
