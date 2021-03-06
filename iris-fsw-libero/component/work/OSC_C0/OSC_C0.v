//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Fri May  1 16:19:46 2020
// Version: v12.1 12.600.0.14
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// OSC_C0
module OSC_C0(
    // Outputs
    RCOSC_25_50MHZ_CCC,
    RCOSC_25_50MHZ_O2F
);

//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output RCOSC_25_50MHZ_CCC;
output RCOSC_25_50MHZ_O2F;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC;
wire   RCOSC_25_50MHZ_O2F_net_0;
wire   RCOSC_25_50MHZ_O2F_net_1;
wire   RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   GND_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net = 1'b0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign RCOSC_25_50MHZ_O2F_net_1                        = RCOSC_25_50MHZ_O2F_net_0;
assign RCOSC_25_50MHZ_O2F                              = RCOSC_25_50MHZ_O2F_net_1;
assign RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC_net_0 = RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC;
assign RCOSC_25_50MHZ_CCC                              = RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC_net_0;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------OSC_C0_OSC_C0_0_OSC   -   Actel:SgCore:OSC:2.0.101
OSC_C0_OSC_C0_0_OSC OSC_C0_0(
        // Inputs
        .XTL                ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .RCOSC_25_50MHZ_CCC ( RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC ),
        .RCOSC_25_50MHZ_O2F ( RCOSC_25_50MHZ_O2F_net_0 ),
        .RCOSC_1MHZ_CCC     (  ),
        .RCOSC_1MHZ_O2F     (  ),
        .XTLOSC_CCC         (  ),
        .XTLOSC_O2F         (  ) 
        );


endmodule
