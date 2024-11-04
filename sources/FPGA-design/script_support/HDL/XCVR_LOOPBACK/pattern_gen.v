//-------------------------------------------------------------------
//                                                                 
//-------------------------------------------------------------------------
//© 2022 Microchip Technology Inc. and its subsidiaries
//All rights reserved.
//ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
//ACCORDANCE WITH THE MICROCHIP LICENSE AGREEMENT AND MUST BE APPROVED
//IN ADVANCE IN WRITING.
//-------------------------------------------------------------------------
//
//-------------------------------------------------------------------
// Title        : pattern_gen.v
// Created      : June-2017
// Description  : This module implements the Counter to be
// 		  sent to the SERDES transmitter section
// Revision     : NA
// Hierarchy    :
//                Top_SD
//                  -- pattern_gen.v              <-- This module
//
// Target device: <Family:PolarFire> <Die:MPF300TS_ES> <Pkg:FCG1152>
//-------------------------------------------------------------------

module PATTERN_GEN(
 clk_i          ,
 reset_n_i      ,		
 generate_err_i ,
 data_out_o     ,
 Tx_K_Char_o
);

//*******************************************************************
//********************* Signal Declaration     **********************
//*******************************************************************
parameter  g_DATA_WID = 32;

//----------STATE parameter declaration---------

parameter [2:0] STATE_0 = 3'b000;
parameter [2:0] STATE_1 = 3'b001;
parameter [2:0] STATE_2 = 3'b010;
parameter [2:0] STATE_3 = 3'b011;
parameter [2:0] STATE_4 = 3'b100;
parameter [2:0] STATE_5 = 3'b101;
//----------------------------------------------

input clk_i; //input clock
input generate_err_i; //input for generating error using UART interface
input reset_n_i; //reset for logic
output wire [g_DATA_WID-1:0]data_out_o;//output data
output wire [3:0]Tx_K_Char_o;//K CHAR status signal

reg [g_DATA_WID-1:0]s_count_data;
reg [3:0]s_tx_k_char;
reg [2:0]s_count;

reg generate_err_d1, generate_err_d2;

always@(posedge clk_i,negedge reset_n_i)
 begin
  if (reset_n_i == 1'b0)
  begin
  generate_err_d1 <= 1'b0;
  generate_err_d2 <= 1'b0;
  end
  else
  begin
  generate_err_d1 <= generate_err_i;
  generate_err_d2 <= generate_err_d1;
  end
end

//***************************************************************
//**************** K28.5 and Count generator ********************
//***************************************************************
 always@(posedge clk_i,negedge reset_n_i)
 begin
  if (reset_n_i == 1'b0)
  begin
   s_count_data <= 32'h000000BC;
   s_tx_k_char <= 4'b0001;
   s_count <= 3'b000;
  end
  else
  begin
  case (s_count)
  STATE_0:
  begin
   s_count_data <= 32'h000000BC; //K28.5 character sent for 4 clock cycles
   s_tx_k_char <= 4'b0001;
   s_count <=STATE_1;
  end
  STATE_1:
  begin
   s_count_data <= 32'h000000BC;
   s_tx_k_char <= 4'b0001;
   s_count <=STATE_2;
  end
  STATE_2:
  begin
   s_count_data <= 32'h000000BC;
   s_tx_k_char <= 4'b0001;
   s_count <=STATE_3;
  end
  STATE_3:
  begin
   s_count_data <= 32'h000000BC;
   s_tx_k_char <= 4'b0001;
   s_count <=STATE_4;
  end
  STATE_4:
  begin           
   s_count_data <= 32'h00000001;
   s_tx_k_char <= 4'b0000;
   s_count <=STATE_5;
  end
 STATE_5:
  begin 
   s_count_data <= s_count_data +1; //incremental counter data generated
   s_tx_k_char <= 4'b0000;
   s_count <=STATE_5;     
  end
 default:
  begin
   s_count_data <= 32'h00000000;
   s_tx_k_char <= 4'b0000;
   s_count <=STATE_0;
  end
 endcase   
end
end
//************************************************************************
//************************ Concurrent Assignment  ************************
//************************************************************************
assign data_out_o  = (generate_err_d2==1'b0)?s_count_data:32'hFFFFFFEF;//output data
assign Tx_K_Char_o = s_tx_k_char;//K28.5 output status signal

endmodule

