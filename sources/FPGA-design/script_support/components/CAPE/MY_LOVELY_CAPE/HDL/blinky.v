`timescale 1ns/100ps
module blinky(
input    clk,
input    resetn,
output   blink
);


reg [22:0] counter;

assign blink = counter[22];

always@(posedge clk or negedge resetn)
begin
    if(~resetn)
        begin
            counter <= 23'h0;
        end
    else
        begin
            counter <= counter + 23'b1;
        end
end
endmodule
