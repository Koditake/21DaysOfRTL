module day2_tb ();

    logic   clk;
    logic   reset;

    logic   d_i;

    logic   q_norst_o;
    logic   q_syncrst_o;
    logic   q_asyncrst_o;

    day2 DAY2 (.*);

    // Define clock characteristics
    always begin : clock
        clk = 1'b1;
        // wait 5 time units
        #5;
        clk = 1'b0;
        #5;
    end

    // D-FF test
    initial begin : unit_test
        // reset to 1
        reset = 1'b1;

        // D-FF input to 0
        d_i = 1'b0;

        // reset to 0 at next pos clk edge
        @(posedge clk);
        reset = 1'b0;

        //D-FF input to 1 at next pos clk edge
        @(posedge clk);
        d_i = 1'b1;

        // Change nothing next 2 clk
        @(posedge clk);
        @(posedge clk);

        // reset to 1 at next pos clk edge
        @(negedge clk);
        reset = 1'b1;

        // wait 1 clk
        @(posedge clk);

        // reset to 0 at next pos clk edge
        @(posedge clk);
        reset = 1'b0;

        // change nothing next 2 clk
        @(posedge clk);
        @(posedge clk);

        //end simulation
        $finish();
    end

endmodule