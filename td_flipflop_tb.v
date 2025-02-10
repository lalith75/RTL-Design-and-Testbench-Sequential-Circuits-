module t_flipflop_tb();
    wire Q, Qb;
    reg T;
    reg clock;

    // Instantiate the T flip-flop
    td_flipflop DUT(
        .T(T),
        .clock(clock),
        .Q(Q),
        .Qb(Qb)
    );

    // Clock generation
    initial begin
        clock = 0;
        forever #5 clock = ~clock;  // Toggle clock every 5 time units
    end

    // Initial values and test cases
    initial begin
        T = 0;
        #10;  // Wait for a few clock cycles

        // Apply various test inputs to T
        T = 1;
        #20;  // Wait 2 clock cycles
        T = 0;
        #20;  // Wait 2 clock cycles
        T = 1;
        #20;  // Wait 2 clock cycles
        T = 0;
        #20;  // Wait 2 clock cycles
        
        // Toggle T input several times
        repeat(5) begin
            T = 1;
            #10;  // 1 clock cycle
            T = 0;
            #10;  // 1 clock cycle
        end

        $finish;  // End the simulation
    end

    // Monitor output values
    initial 
        $monitor("Time=%0t | T=%b | clock=%b | Q=%b | Qb=%b", 
                 $time, T, clock, Q, Qb);
endmodule
