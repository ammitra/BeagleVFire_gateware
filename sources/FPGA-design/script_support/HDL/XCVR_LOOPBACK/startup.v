module STARTUP(
    tx_clk_i,
    pattern_gen_n_i,		
    pattern_chk_n_i,		
    start_gen_o
);

input tx_clk_i;
input pattern_gen_n_i;
input pattern_chk_n_i;
output start_gen_o;

reg start_gen_d1, start_gen_d2, start_gen_d3, start_gen_d4, start_gen_d5, start_gen_d6, start_gen_d7, start_gen_d8, start_gen_d9;

always @ (posedge tx_clk_i or negedge pattern_gen_n_i or negedge pattern_chk_n_i)
begin
    if ((pattern_gen_n_i == 1'b0) || (pattern_chk_n_i == 1'b0))
    begin
        start_gen_d1 <= 1'b0;
        start_gen_d2 <= 1'b0;
        start_gen_d3 <= 1'b0;
        start_gen_d4 <= 1'b0;
        start_gen_d5 <= 1'b0;
        start_gen_d6 <= 1'b0;
        start_gen_d7 <= 1'b0;
        start_gen_d8 <= 1'b0;
        start_gen_d9 <= 1'b0;
    end
    else
    begin
        start_gen_d1 <= 1'b1;
        start_gen_d2 <= start_gen_d1;
        start_gen_d3 <= start_gen_d2;
        start_gen_d4 <= start_gen_d3;
        start_gen_d5 <= start_gen_d4;
        start_gen_d6 <= start_gen_d5;
        start_gen_d7 <= start_gen_d6;
        start_gen_d8 <= start_gen_d7;
        start_gen_d9 <= start_gen_d8;
    end
end

assign start_gen_o = start_gen_d9;

endmodule
