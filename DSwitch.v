// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
// CREATED		"Wed May 11 12:00:02 2022"

module DSwitch(
	clk,
	reset,
	D,
	Q
);


input wire	clk;
input wire	reset;
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
