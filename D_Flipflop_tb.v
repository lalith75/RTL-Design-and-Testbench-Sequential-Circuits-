module d_flipflop_tb();
reg d_in;
reg clock;
reg reset;
wire Q_out,Qb_out;
parameter CYCLE=10;
d_flipflop DUT(.d_in(d_in),.clock(clock),.reset(reset),.Q_out(Q_out),.Qb_out(Qb_out));

always
begin
    #(CYCLE/2);
    clock=1'b0;
    #(CYCLE/2);
    clock=~clock;
end

task rst_DUT();
begin
    reset=1'b1;
    #10;
    reset=1'b0;
end
endtask

task din_DUT(input i);
    begin
        @(negedge clock)
        d_in=i;
    end
endtask
    
initial
begin
    rst_DUT();
    din_DUT(0);
    din_DUT(1);
    din_DUT(1);
    din_DUT(0);
    rst_DUT();
    din_DUT(0);
    din_DUT(1);
    din_DUT(0);
    din_DUT(1);
    #20
    #20 $finish;
end
initial
$monitor("The Output is d_in=%d,reset=%d,Q_out=%d,Qb_out=%d",d_in,reset,Q_out,Qb_out);    

endmodule
