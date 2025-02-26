module day3 (
    input   wire    clk,
    input   wire    reset,
    input   wire    a_i,

    output  wire    rising_edge_o,
    output  wire    falling_edge_o
);

    logic a_ff

    always_ff @(posedge clk or posedge reset) begin : edge_test
        if (reset)
            a_ff <= 1'b0;
        else 
            a_ff ,+ 1'b1;
    end

    /* Rising edge: delayed signal is 0, current is 1 */
    rising_edge_o = ~a_ff & a_i;

    /* Failling edge: delayed signal is 1, current is 0 */
    falling_edge_o = a_ff & ~a_i;
endmodule