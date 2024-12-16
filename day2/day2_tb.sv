module day2_tb ();

    logic   clk;
    logic   reset;

    logic   d_i;

    logic   q_norst_o;
    logic   q_syncrst_o;
    logic   q_asyncrst_o;

    day2 DAY2 (.*);

    // Generate clock pattern
    always begin : clock
        clk = 1'b1;
        #5;
        clk = 1'b0;
        #5;
    end

    // D-FF test
    initial begin : unit_test
        reset = 1'b1;
        d_i = 1'b0;
        @(posedge clk);
        reset = 1'b0;
        @(posedge clk);
        d_i = 1'b1;
        @(posedge clk);
        @(posedge clk);
        @(negedge clk);
        reset = 1'b1;
        @(posedge clk);
        @(posedge clk);
        reset = 1'b0;
        @(posedge clk);
        @(posedge clk);
        $finish();
    end

endmodule