module d_flipflop(
    input d_in,reset,clock,
    output reg Q_out, Qb_out
    );
    always @(posedge clock)
    begin
        if(reset)
        begin
            Q_out<=1'b0;
        end
        else
        begin
            Q_out<=d_in;
        end
    end
assign Qb_out=~Q_out;
endmodule
