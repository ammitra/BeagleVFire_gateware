//
// See https://www.fpga4fun.com/QuadratureDecoder.html for explanations.
//

module rotary_encoder
(
  input clk,
  input reset_n,
  input in_a,
  input in_b,
  output reg [31:0] count
);

  reg [2:0] in_a_sync, in_b_sync;
  always @(posedge clk) in_a_sync <= {in_a_sync[1:0], in_a};
  always @(posedge clk) in_b_sync <= {in_b_sync[1:0], in_b};
  
  wire count_enable = in_a_sync[1] ^ in_a_sync[2] ^ in_b_sync[1] ^ in_b_sync[2];
  wire count_direction = in_a_sync[1] ^ in_b_sync[2];
  
  always @(posedge clk)
  if(!reset_n)
    begin
        count <= 0;
    end
  else
    begin
      if(count_enable)
      begin
        if(count_direction) count<=count+1; else count<=count-1;
      end
    end

endmodule
