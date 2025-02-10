module jk_flipflop(
    input j,k,
    input clock,
    output reg Q,Qb
    );
    
    always @(posedge clock)
    begin
        if(j==0 && k==0)begin
            Q<=Q;end
        else if(j==0 && k==1)begin
            Q<=1'b0;end
        else if(j==1 && k==0)begin
            Q<=1'b1;end
        else if(j==1 && k==1)begin
            Q<=~Q;end
    Qb<=~Q;
    end
endmodule
