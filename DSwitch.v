// Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, the Altera Quartus II License Agreement,
// the Altera MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Altera and sold by Altera or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"
// CREATED		"Tue Feb  2 06:52:58 2021"

module DSwitch(
	reset,
	clk,
	D,
	Q
);


input wire	reset;
input wire	clk;
input wire	D;
output wire	Q;

wire	___Dclk___OR___Q___NOTclk______;
wire	Dclk;
wire	NOTclk;
wire	NOTreset;
wire	Q__NOTclk__;
wire	Q_ALTERA_SYNTHESIZED;




assign	NOTreset =  ~reset;

assign	NOTclk =  ~clk;

assign	Q_ALTERA_SYNTHESIZED = NOTreset & ___Dclk___OR___Q___NOTclk______;

assign	Q__NOTclk__ = NOTclk & Q_ALTERA_SYNTHESIZED;

assign	___Dclk___OR___Q___NOTclk______ = Q__NOTclk__ | Dclk;

assign	Dclk = clk & D;

assign	Q = Q_ALTERA_SYNTHESIZED;

endmodule
