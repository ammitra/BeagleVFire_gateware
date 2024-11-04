module servos#(
   NB_OF_SERVOS=16,
   SERVO_VALUE_WIDTH=15
   )(
   input               pclk,
   input               presetn,
   input               penable,
   input               psel,
   input       [15:0]  paddr,
   input               pwrite,
   input       [31:0]  pwdata,
   output  reg [31:0]  prdata,
   output reg  [15:0]  servos_out
   );

   localparam [11:0] PRESCALLER     = 12'd50;

   localparam [14:0] SERVO_PERIOD   = 15'd20000;
   localparam [14:0] SERVO_MIN         = 15'h0384;
   localparam [14:0] SERVO_MIDPOINT    = 15'h05DC;
   localparam [14:0] SERVO_MAX         = 15'h0834;

   localparam [14:0] SERVO_DELTA_MAX   = 15'h04B0;

   reg [(NB_OF_SERVOS*SERVO_VALUE_WIDTH)-1:0] servo_values;

   reg [11:0] prescaler_count;
   reg [14:0] servos_count;
   reg tick_old;
   reg tick;

   localparam [15:0] SERVO_CTRL_0   = 16'h0000;
   localparam [15:0] SERVO_CTRL_1   = 16'h0004;
   localparam [15:0] SERVO_CTRL_2   = 16'h0008;
   localparam [15:0] SERVO_CTRL_3   = 16'h000C;
   localparam [15:0] SERVO_CTRL_4   = 16'h0010;
   localparam [15:0] SERVO_CTRL_5   = 16'h0014;
   localparam [15:0] SERVO_CTRL_6   = 16'h0018;
   localparam [15:0] SERVO_CTRL_7   = 16'h001C;
   localparam [15:0] SERVO_CTRL_8   = 16'h0020;
   localparam [15:0] SERVO_CTRL_9   = 16'h0024;
   localparam [15:0] SERVO_CTRL_10  = 16'h0028;
   localparam [15:0] SERVO_CTRL_11  = 16'h002C;
   localparam [15:0] SERVO_CTRL_12  = 16'h0030;
   localparam [15:0] SERVO_CTRL_13  = 16'h0044;
   localparam [15:0] SERVO_CTRL_14  = 16'h0048;
   localparam [15:0] SERVO_CTRL_15  = 16'h004C;

   localparam [15:0] STATUS      = 16'h8000; // READ-ONLY REGISTER
   localparam [15:0] CONTROL_0   = 16'h8010; // READ_ONLY DEADBEEF REGISTER
   localparam [15:0] CONTROL_1   = 16'h8020; // READ/WRITE Register


   localparam [3:0] IDLE      = 4'h0;
   localparam [3:0] STARTING  = 4'h1;
   localparam [3:0] RUNNING   = 4'h2;

   reg  [3:0] servo_ctrl_state;
   reg  [15:0]  servos_d;


   reg [31:0] control_value;
   reg        mem_wr_0;
   
   wire rd_enable;
   wire wr_enable;
   wire [SERVO_VALUE_WIDTH-1:0] servo_wr_value;

   // Cap maximum delta to 1200us.
   assign servo_wr_value[SERVO_VALUE_WIDTH-1:0] = pwdata[SERVO_VALUE_WIDTH-1:0] > SERVO_DELTA_MAX ? SERVO_MAX : pwdata[SERVO_VALUE_WIDTH-1:0] + SERVO_MIN;

   assign wr_enable = (penable && pwrite && psel);
   assign rd_enable = (!pwrite && psel);

   always@(posedge pclk or negedge presetn)
   begin
      if(~presetn)
         begin
            prdata <= 'b0;
            control_value <= 32'h00000000;
            mem_wr_0 <= 1'b0;
            servo_values[SERVO_VALUE_WIDTH-1:0] <= SERVO_MIDPOINT;
            servo_values[(SERVO_VALUE_WIDTH*2)-1:SERVO_VALUE_WIDTH] <= SERVO_MIDPOINT;
            servo_values[(SERVO_VALUE_WIDTH*3)-1:(SERVO_VALUE_WIDTH*2)] <= SERVO_MIDPOINT;
            servo_values[(SERVO_VALUE_WIDTH*4)-1:(SERVO_VALUE_WIDTH*3)] <= SERVO_MIDPOINT;
            servo_values[(SERVO_VALUE_WIDTH*5)-1:(SERVO_VALUE_WIDTH*4)] <= SERVO_MIDPOINT;
            servo_values[(SERVO_VALUE_WIDTH*6)-1:(SERVO_VALUE_WIDTH*5)] <= SERVO_MIDPOINT;
            servo_values[(SERVO_VALUE_WIDTH*7)-1:(SERVO_VALUE_WIDTH*6)] <= SERVO_MIDPOINT;
            servo_values[(SERVO_VALUE_WIDTH*8)-1:(SERVO_VALUE_WIDTH*7)] <= SERVO_MIDPOINT;
            servo_values[(SERVO_VALUE_WIDTH*9)-1:(SERVO_VALUE_WIDTH*8)] <= SERVO_MIDPOINT;
            servo_values[(SERVO_VALUE_WIDTH*10)-1:(SERVO_VALUE_WIDTH*9)] <= SERVO_MIDPOINT;
            servo_values[(SERVO_VALUE_WIDTH*11)-1:(SERVO_VALUE_WIDTH*10)] <= SERVO_MIDPOINT;
            servo_values[(SERVO_VALUE_WIDTH*12)-1:(SERVO_VALUE_WIDTH*11)] <= SERVO_MIDPOINT;
            servo_values[(SERVO_VALUE_WIDTH*13)-1:(SERVO_VALUE_WIDTH*12)] <= SERVO_MIDPOINT;
            servo_values[(SERVO_VALUE_WIDTH*14)-1:(SERVO_VALUE_WIDTH*13)] <= SERVO_MIDPOINT;
            servo_values[(SERVO_VALUE_WIDTH*15)-1:(SERVO_VALUE_WIDTH*14)] <= SERVO_MIDPOINT;
            servo_values[(SERVO_VALUE_WIDTH*16)-1:(SERVO_VALUE_WIDTH*15)] <= SERVO_MIDPOINT;
         end
      else
         begin
            if (wr_enable)
               begin
                  case(paddr[15:0])
                     SERVO_CTRL_0:  servo_values[SERVO_VALUE_WIDTH-1:0] <= servo_wr_value[SERVO_VALUE_WIDTH-1:0];
                     SERVO_CTRL_1:  servo_values[(SERVO_VALUE_WIDTH*2)-1:SERVO_VALUE_WIDTH] <= servo_wr_value[SERVO_VALUE_WIDTH-1:0];
                     SERVO_CTRL_2:  servo_values[(SERVO_VALUE_WIDTH*3)-1:(SERVO_VALUE_WIDTH*2)] <= servo_wr_value[SERVO_VALUE_WIDTH-1:0];
                     SERVO_CTRL_3:  servo_values[(SERVO_VALUE_WIDTH*4)-1:(SERVO_VALUE_WIDTH*3)] <= servo_wr_value[SERVO_VALUE_WIDTH-1:0];
                     SERVO_CTRL_4:  servo_values[(SERVO_VALUE_WIDTH*5)-1:(SERVO_VALUE_WIDTH*4)] <= servo_wr_value[SERVO_VALUE_WIDTH-1:0];
                     SERVO_CTRL_5:  servo_values[(SERVO_VALUE_WIDTH*6)-1:(SERVO_VALUE_WIDTH*5)] <= servo_wr_value[SERVO_VALUE_WIDTH-1:0];
                     SERVO_CTRL_6:  servo_values[(SERVO_VALUE_WIDTH*7)-1:(SERVO_VALUE_WIDTH*6)] <= servo_wr_value[SERVO_VALUE_WIDTH-1:0];
                     SERVO_CTRL_7:  servo_values[(SERVO_VALUE_WIDTH*8)-1:(SERVO_VALUE_WIDTH*7)] <= servo_wr_value[SERVO_VALUE_WIDTH-1:0];
                     SERVO_CTRL_8:  servo_values[(SERVO_VALUE_WIDTH*9)-1:(SERVO_VALUE_WIDTH*8)] <= servo_wr_value[SERVO_VALUE_WIDTH-1:0];
                     SERVO_CTRL_9:  servo_values[(SERVO_VALUE_WIDTH*10)-1:(SERVO_VALUE_WIDTH*9)] <= servo_wr_value[SERVO_VALUE_WIDTH-1:0];
                     SERVO_CTRL_10: servo_values[(SERVO_VALUE_WIDTH*11)-1:(SERVO_VALUE_WIDTH*10)] <= servo_wr_value[SERVO_VALUE_WIDTH-1:0];
                     SERVO_CTRL_11: servo_values[(SERVO_VALUE_WIDTH*12)-1:(SERVO_VALUE_WIDTH*11)] <= servo_wr_value[SERVO_VALUE_WIDTH-1:0];
                     SERVO_CTRL_12: servo_values[(SERVO_VALUE_WIDTH*13)-1:(SERVO_VALUE_WIDTH*12)] <= servo_wr_value[SERVO_VALUE_WIDTH-1:0];
                     SERVO_CTRL_13: servo_values[(SERVO_VALUE_WIDTH*14)-1:(SERVO_VALUE_WIDTH*13)] <= servo_wr_value[SERVO_VALUE_WIDTH-1:0];
                     SERVO_CTRL_14: servo_values[(SERVO_VALUE_WIDTH*15)-1:(SERVO_VALUE_WIDTH*14)] <= servo_wr_value[SERVO_VALUE_WIDTH-1:0];
                     SERVO_CTRL_15: servo_values[(SERVO_VALUE_WIDTH*16)-1:(SERVO_VALUE_WIDTH*15)] <= servo_wr_value[SERVO_VALUE_WIDTH-1:0];

                     STATUS:
                        begin
                        if (rd_enable)
                              begin
                              end
                        end

                     CONTROL_0:
                        begin
                        if (rd_enable)
                              begin
                                 prdata <= 32'hdeadbeef;
                              end
                        end

                     CONTROL_1:
                        begin
                           if (rd_enable)
                              begin
                                 prdata <= control_value;
                              end
                           else if (wr_enable)
                              begin
                                 control_value <= pwdata;
                              end
                        end  

                     default:
                        begin
                           prdata <= 32'b0;
                        end
                  endcase
               end

            if (rd_enable)
               begin
                  case(paddr[15:0])
                     SERVO_CTRL_0:  prdata <= {17'h00000, servo_values[SERVO_VALUE_WIDTH-1:0] - SERVO_MIN};
                     SERVO_CTRL_1:  prdata <= {17'h00000, servo_values[(SERVO_VALUE_WIDTH*2)-1:SERVO_VALUE_WIDTH] - SERVO_MIN};
                     SERVO_CTRL_2:  prdata <= {17'h00000, servo_values[(SERVO_VALUE_WIDTH*3)-1:(SERVO_VALUE_WIDTH*2)] - SERVO_MIN};
                     SERVO_CTRL_3:  prdata <= {17'h00000, servo_values[(SERVO_VALUE_WIDTH*4)-1:(SERVO_VALUE_WIDTH*3)] - SERVO_MIN};
                     SERVO_CTRL_4:  prdata <= {17'h00000, servo_values[(SERVO_VALUE_WIDTH*5)-1:(SERVO_VALUE_WIDTH*4)] - SERVO_MIN};
                     SERVO_CTRL_5:  prdata <= {17'h00000, servo_values[(SERVO_VALUE_WIDTH*6)-1:(SERVO_VALUE_WIDTH*5)] - SERVO_MIN};
                     SERVO_CTRL_6:  prdata <= {17'h00000, servo_values[(SERVO_VALUE_WIDTH*7)-1:(SERVO_VALUE_WIDTH*6)] - SERVO_MIN};
                     SERVO_CTRL_7:  prdata <= {17'h00000, servo_values[(SERVO_VALUE_WIDTH*8)-1:(SERVO_VALUE_WIDTH*7)] - SERVO_MIN};
                     SERVO_CTRL_8:  prdata <= {17'h00000, servo_values[(SERVO_VALUE_WIDTH*9)-1:(SERVO_VALUE_WIDTH*8)] - SERVO_MIN};
                     SERVO_CTRL_9:  prdata <= {17'h00000, servo_values[(SERVO_VALUE_WIDTH*10)-1:(SERVO_VALUE_WIDTH*9)] - SERVO_MIN};
                     SERVO_CTRL_10: prdata <= {17'h00000, servo_values[(SERVO_VALUE_WIDTH*11)-1:(SERVO_VALUE_WIDTH*10)] - SERVO_MIN};
                     SERVO_CTRL_11: prdata <= {17'h00000, servo_values[(SERVO_VALUE_WIDTH*12)-1:(SERVO_VALUE_WIDTH*11)] - SERVO_MIN};
                     SERVO_CTRL_12: prdata <= {17'h00000, servo_values[(SERVO_VALUE_WIDTH*13)-1:(SERVO_VALUE_WIDTH*12)] - SERVO_MIN};
                     SERVO_CTRL_13: prdata <= {17'h00000, servo_values[(SERVO_VALUE_WIDTH*14)-1:(SERVO_VALUE_WIDTH*13)] - SERVO_MIN};
                     SERVO_CTRL_14: prdata <= {17'h00000, servo_values[(SERVO_VALUE_WIDTH*15)-1:(SERVO_VALUE_WIDTH*14)] - SERVO_MIN};
                     SERVO_CTRL_15: prdata <= {17'h00000, servo_values[(SERVO_VALUE_WIDTH*16)-1:(SERVO_VALUE_WIDTH*15)] - SERVO_MIN};
                     default: prdata <= 32'h00000000;
                  endcase
               end
         end
   end


   always @(posedge pclk)
      begin
         if(~presetn)
            begin
               prescaler_count <= 0;
            end
         else
            begin
               if(prescaler_count == (PRESCALLER-1))
                  begin
                     prescaler_count <= 0;
                     tick <= 1;
                  end
               else
                  begin
                     
                     prescaler_count <= prescaler_count + 1;
                     if(prescaler_count == (PRESCALLER >> 1))
                        begin
                           tick <= 0;
                        end
                  end
            end
      end


   always @(posedge pclk)
      begin
         if(~presetn)
            begin
               servo_ctrl_state <= IDLE;
            end
         else
            begin
               tick_old <= tick;
               if((tick == 1'b1) &&(tick_old == 1'b0))
                  begin
                     case(servo_ctrl_state)
                        IDLE: servo_ctrl_state <= STARTING;
                        STARTING: servo_ctrl_state <= RUNNING;
                        default:
                           begin
                           end
                     endcase
                  end
            end
      end

   always @(posedge tick)
      begin
         case(servo_ctrl_state)
            IDLE:
               begin
                  servos_count[14:0] <= 0;
                  servos_d <= 16'b0;
               end

            STARTING:
               begin
                  servos_count[14:0] <= 0;
                  servos_d[NB_OF_SERVOS-1:0] <= 16'hFFFF;
               end

            RUNNING:
               begin
                  if (servos_count[14:0] == (SERVO_PERIOD-1))
                     begin
                        servos_count[14:0] <= 15'h0000;
                        servos_d[NB_OF_SERVOS-1:0] <= 16'hFFFF;
                     end
                  else
                     begin
                        servos_d[NB_OF_SERVOS-1:0] <= {
                           (servos_count < servo_values[(SERVO_VALUE_WIDTH*16)-1:(SERVO_VALUE_WIDTH*15)]),
                           (servos_count < servo_values[(SERVO_VALUE_WIDTH*15)-1:(SERVO_VALUE_WIDTH*14)]),
                           (servos_count < servo_values[(SERVO_VALUE_WIDTH*14)-1:(SERVO_VALUE_WIDTH*13)]),
                           (servos_count < servo_values[(SERVO_VALUE_WIDTH*13)-1:(SERVO_VALUE_WIDTH*12)]),
                           (servos_count < servo_values[(SERVO_VALUE_WIDTH*12)-1:(SERVO_VALUE_WIDTH*11)]),
                           (servos_count < servo_values[(SERVO_VALUE_WIDTH*11)-1:(SERVO_VALUE_WIDTH*10)]),
                           (servos_count < servo_values[(SERVO_VALUE_WIDTH*10)-1:(SERVO_VALUE_WIDTH*9)]),
                           (servos_count < servo_values[(SERVO_VALUE_WIDTH*9)-1:(SERVO_VALUE_WIDTH*8)]),
                           (servos_count < servo_values[(SERVO_VALUE_WIDTH*8)-1:(SERVO_VALUE_WIDTH*7)]),
                           (servos_count < servo_values[(SERVO_VALUE_WIDTH*7)-1:(SERVO_VALUE_WIDTH*6)]),
                           (servos_count < servo_values[(SERVO_VALUE_WIDTH*6)-1:(SERVO_VALUE_WIDTH*5)]),
                           (servos_count < servo_values[(SERVO_VALUE_WIDTH*5)-1:(SERVO_VALUE_WIDTH*4)]),
                           (servos_count < servo_values[(SERVO_VALUE_WIDTH*4)-1:(SERVO_VALUE_WIDTH*3)]),
                           (servos_count < servo_values[(SERVO_VALUE_WIDTH*3)-1:(SERVO_VALUE_WIDTH*2)]),
                           (servos_count < servo_values[(SERVO_VALUE_WIDTH*2)-1:(SERVO_VALUE_WIDTH*1)]),
                           (servos_count < servo_values[(SERVO_VALUE_WIDTH*1)-1:(SERVO_VALUE_WIDTH*0)])
                        };

                        servos_count <= servos_count + 1;
                     end
               end
            default:
               begin
               end
         endcase
         servos_out[15:0] <= servos_d[15:0];
      end


endmodule