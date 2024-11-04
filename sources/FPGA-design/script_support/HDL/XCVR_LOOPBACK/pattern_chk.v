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
// Title        : pattern_chk.v
// Created      : June-2017
// Description  : This module implements the Checker logic for the 
// 		  counter pattern coming from receiver side
// Revision     : NA
// Hierarchy    :
//                Top_SD

//                  -- pattern_chk.v             <-- This module
//
// Target device: <Family:PolarFire> <Die:MPF300TS_ES> <Pkg:FCG1152>
//-------------------------------------------------------------------

module PATTERN_CHK(
    clk_i,
    reset_n_i, 
    ARST_N,
    RESET_EN,
    RX_READY,
    generate_err,
    DISP_ERR,
    LCV_ERR,
    LANE_ARST_N,		
    start_i,
    clear_i,
    rx_val_i,
    data_in_i,
    Rx_K_Char_i,
    error_count_o,
    error_o,
    rx_val_o,
    s_count,
    lock_o
);

//****************************************************************************
//***************** Signal Declaration     ***********************************
//****************************************************************************
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
input reset_n_i; //Reset for logic
input start_i; //UART input start signal 
input clear_i; //UART signal to clear error flags
input generate_err; //UART signal to generate bit error
input rx_val_i; //RX valid sgianl from XCVR
input wire [g_DATA_WID-1:0]data_in_i; //XCVR RX data
input wire [3:0]Rx_K_Char_i;//XCVR input K CHAR status signal
input ARST_N,RESET_EN, RX_READY; //XCVR signals
input [3:0] DISP_ERR, LCV_ERR; //XCVR dispartity and code violations status 


output  LANE_ARST_N;//PCS reset 
output reg [g_DATA_WID-1:0]error_count_o;//error counter
output error_o;//error flag
output rx_val_o;
output lock_o;//data lock status



reg [g_DATA_WID-1:0]s_count_data;
reg [g_DATA_WID-1:0]s_data;
reg s_count_start;
output reg [2:0]s_count;


reg [g_DATA_WID-1:0]s_error_count;
reg s_error;
reg s_lock;
reg s_rx_val;

reg start_d1, start_d2;
reg clear_d1, clear_d2;


reg [7:0] ERR_COUNT,COUNT_INIT ;
reg LANE_RESET_INIT,LANE_RESET_INIT_0;
reg LANE_RESET_INIT_1;
reg LANE_RESET_INIT_2;
reg LANE_RESET_INIT_3;


assign rx_val_o = s_rx_val;
assign lock_o = s_lock;
assign error_o = s_error;

//Logic for resetting XCVR PCS in the event of 
//receiving disparity error and code violations

always @ (posedge clk_i or negedge ARST_N)
begin
    if (ARST_N == 1'b0)
        ERR_COUNT <= 0;
    else
    begin
        if ((LANE_ARST_N == 1'b0) || (RESET_EN == 1'b0) || (COUNT_INIT == 8'hFF) || generate_err)
            ERR_COUNT <= 0; 
        else 
        begin
            if (RX_READY && (generate_err== 1'b0))
            begin
                if ( (DISP_ERR > 0) || (LCV_ERR > 0))
                    ERR_COUNT  <= ERR_COUNT + 1;
                else
                    ERR_COUNT <= ERR_COUNT; 
            end
            else
                    ERR_COUNT <= 0;
        end
    end
end


always @ (posedge clk_i or negedge ARST_N)
begin
    if (ARST_N== 1'b0)
        COUNT_INIT <= 0;
    else 
    begin
        if (LANE_ARST_N== 1'b0)
            COUNT_INIT <= 0;
        else if (RX_READY && (generate_err== 1'b0))
            COUNT_INIT <= COUNT_INIT +1 ;
        else
            COUNT_INIT <= 0;
    end
end


always @ (posedge clk_i or negedge ARST_N)
begin
    if (ARST_N== 1'b0)
    begin
        LANE_RESET_INIT <= 1;
    end
    else 
    begin
        if (ERR_COUNT > 8'h03) 
        begin
            LANE_RESET_INIT <= 0;//Issue PCS reset 
            
        end
        else
        begin
            LANE_RESET_INIT <= 1'b1;//Release PCS reset
        end
    end
end

always @ (posedge clk_i or negedge ARST_N)
begin
    if (ARST_N== 1'b0)
    begin
        LANE_RESET_INIT_0 <= 1;
        LANE_RESET_INIT_1 <= 1;
        LANE_RESET_INIT_2 <= 1;
        LANE_RESET_INIT_3 <= 1;
    end
    else 
    begin
        LANE_RESET_INIT_0 <= LANE_RESET_INIT;
        LANE_RESET_INIT_1 <= LANE_RESET_INIT_0;
        LANE_RESET_INIT_2 <= LANE_RESET_INIT_1;
        LANE_RESET_INIT_3 <= LANE_RESET_INIT_2;
    end
end

//send PCS reset by increasing pulse width
assign LANE_ARST_N = LANE_RESET_INIT_0 && LANE_RESET_INIT_1 
                    && LANE_RESET_INIT_2 && LANE_RESET_INIT_3;

//-----------------------------------------------------------

always@(posedge clk_i,negedge reset_n_i)
 begin
    if (reset_n_i == 1'b0)
    begin
        clear_d1 <= 1'b0;
        clear_d2 <= 1'b0;
    end
    else
    begin
        clear_d1 <= clear_i;
        clear_d2 <= clear_d1;
    end
end

always@(posedge clk_i,negedge reset_n_i)
 begin
    if (reset_n_i == 1'b0)
    begin
        start_d1 <= 1'b0;
        start_d2 <= 1'b0;
    end
    else
    begin
        start_d1 <= start_i;
        start_d2 <= start_d1;
    end
end


//***************************************************************************************************
//************************************** Count Checker Logic    *************************************
//***************************************************************************************************
 always@(posedge clk_i,negedge reset_n_i)
 begin
    if (reset_n_i == 1'b0)
    begin
        s_count <= 3'b000;
        s_count_data <= 32'h00000000;
        s_count_start <= 1'b0;
    end
    else
    begin
        case (s_count)
            STATE_0:
            begin		      
                if((Rx_K_Char_i==4'b0001) && (data_in_i==32'h000000BC))//K28.5 compare
                begin
                    s_count <=STATE_1;
                    s_count_start <= 1'b0;
                end
                else
                begin
                    s_count <=STATE_0;
                end
            end
            STATE_1:
            begin
                if((Rx_K_Char_i==4'b0001) && (data_in_i==32'h000000BC))
                begin
                    s_count <=STATE_2;
                    s_count_start <= 1'b0;
                end
                else
                begin
                    s_count <=STATE_0;
                end
            end
            STATE_2:
            begin
                if((Rx_K_Char_i==4'b0001) && (data_in_i==32'h000000BC))
                begin
                    s_count <=STATE_3;
                    s_count_start <= 1'b0;
                end
                else
                begin
                    s_count <=STATE_0;
                end
            end
            STATE_3:
            begin
                if((Rx_K_Char_i==4'b0001) && (data_in_i==32'h000000BC))
                begin
                    s_count <=STATE_4;
                    s_count_start <= 1'b1;
                end
                else
                begin
                    s_count <=STATE_0;
                end
            end
            STATE_4:
            begin   
                if(Rx_K_Char_i==4'b0000)
                begin                        
                    s_count_data <= 32'h00000001;
                    s_count_start <= 1'b1;
                    s_count <=STATE_5;
                end
                else
                begin
                    s_count <=STATE_4;
                    s_count_data <= s_count_data;
                    s_count_start <= s_count_start;
                end       
            end
            STATE_5:
            begin 
                s_count_data <= s_count_data +1;
                s_count_start <= 1'b1;
                s_count <=STATE_5;
            end
            default:
            begin
                s_count_data <= 32'h00000000;
                s_count_start <= 1'b0;
                s_count <=STATE_0;
            end
          endcase   
    end
end

//***************************************************************************************************
//************************************** Registering Data input *************************************
//***************************************************************************************************
 always@(posedge clk_i,negedge reset_n_i)
 begin
    if (reset_n_i == 1'b0)
    begin
        s_data <= 32'h00000000;
    end
    else
    begin
        s_data <= data_in_i;
    end
end
//**************************************************************************
//********************* Error and Lock Checking ****************************
//**************************************************************************
  
always@(posedge clk_i,negedge reset_n_i)
 begin
    if (reset_n_i == 1'b0)
    begin
        s_lock <= 1'b0;
        s_rx_val <= 1'b0;
        s_error_count <= 32'h00000000;
        s_error <= 1'b1;
    end
//    else if(clear_d2==1'b1)
//    begin
//        s_rx_val <= rx_val_i;
//        s_lock <= 1'b1;
//        s_error_count <= 32'h00000000;
//        s_error <= 1'b0; 
//    end    
    else
    begin
        s_rx_val <= rx_val_i;
        if((s_count_start==1'b1) && (s_count_data == s_data))//data integrity check
            begin  
              s_lock <= 1'b1;
              s_error_count <= 32'h00000000;
              s_error <= 1'b0;
            end
        else  
            begin
             s_error_count <= s_error_count +1;
             s_lock <= 1'b0;
             s_error <= 1'b1;
            end 
     end 
end


//*********************************************************************
//******************* Registering UART Output**************************
//*********************************************************************

always@(posedge clk_i,negedge reset_n_i)
begin
    if (reset_n_i == 1'b0)
    begin
//        rx_val_o <= 1'b0;
//        lock_o <= 1'b0;
        error_count_o <= 32'h00000000;
//        error_o <= 1'b0;
    end
    else if(start_d2 == 1'b1)
    begin
//        rx_val_o <= s_rx_val;
//        lock_o <= s_lock;
        error_count_o <= s_error_count;
//        error_o <= s_error;
    end
end
   

endmodule

