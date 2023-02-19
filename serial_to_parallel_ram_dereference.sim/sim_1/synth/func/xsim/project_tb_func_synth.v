// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Feb 19 21:29:11 2023
// Host        : LAPTOP-CHTRN8NV running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Projects/polimi/serial_to_parallel_ram_dereference/serial_to_parallel_ram_dereference.sim/sim_1/synth/func/xsim/project_tb_func_synth.v
// Design      : project_reti_logiche
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module datapath
   (\FSM_onehot_curr_state_reg[5] ,
    \FSM_onehot_curr_state_reg[7] ,
    \FSM_onehot_curr_state_reg[13] ,
    \FSM_onehot_curr_state_reg[15] ,
    o_mem_addr,
    o_z0_OBUF,
    o_z1_OBUF,
    o_z2_OBUF,
    o_z3_OBUF,
    i_clk_IBUF,
    Q,
    i_w,
    CLK,
    AR,
    D,
    i_start);
  output \FSM_onehot_curr_state_reg[5] ;
  output \FSM_onehot_curr_state_reg[7] ;
  output \FSM_onehot_curr_state_reg[13] ;
  output \FSM_onehot_curr_state_reg[15] ;
  output [15:0]o_mem_addr;
  output [7:0]o_z0_OBUF;
  output [7:0]o_z1_OBUF;
  output [7:0]o_z2_OBUF;
  output [7:0]o_z3_OBUF;
  input i_clk_IBUF;
  input [17:0]Q;
  input i_w;
  input CLK;
  input [0:0]AR;
  input [7:0]D;
  input i_start;

  wire [0:0]AR;
  wire CLK;
  wire [7:0]D;
  wire \FSM_onehot_curr_state_reg[13] ;
  wire \FSM_onehot_curr_state_reg[15] ;
  wire \FSM_onehot_curr_state_reg[5] ;
  wire \FSM_onehot_curr_state_reg[7] ;
  wire [17:0]Q;
  wire [7:0]data_reg;
  wire [1:0]ex_curr;
  wire [1:0]ex_reg;
  wire i_clk_IBUF;
  wire i_start;
  wire i_w;
  wire [15:0]o_mem_addr;
  wire [7:0]o_z0_OBUF;
  wire [7:0]o_z1_OBUF;
  wire [7:0]o_z2_OBUF;
  wire [7:0]o_z3_OBUF;

  serial_to_parallel_16 SERIAL_TO_PARALLEL_ADDR
       (.\FSM_onehot_curr_state_reg[13] (\FSM_onehot_curr_state_reg[13] ),
        .\FSM_onehot_curr_state_reg[15] (\FSM_onehot_curr_state_reg[15] ),
        .\FSM_onehot_curr_state_reg[5] (\FSM_onehot_curr_state_reg[5] ),
        .\FSM_onehot_curr_state_reg[7] (\FSM_onehot_curr_state_reg[7] ),
        .Q(Q[17:2]),
        .i_clk_IBUF(i_clk_IBUF),
        .i_start(i_start),
        .o_mem_addr(o_mem_addr));
  serial_to_parallel_2 SERIAL_TO_PARALLEL_EXIT
       (.D(ex_curr),
        .Q(Q[1:0]),
        .i_clk_IBUF(i_clk_IBUF),
        .i_w(i_w));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[0] 
       (.C(CLK),
        .CE(Q[17]),
        .CLR(AR),
        .D(D[0]),
        .Q(data_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[1] 
       (.C(CLK),
        .CE(Q[17]),
        .CLR(AR),
        .D(D[1]),
        .Q(data_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[2] 
       (.C(CLK),
        .CE(Q[17]),
        .CLR(AR),
        .D(D[2]),
        .Q(data_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[3] 
       (.C(CLK),
        .CE(Q[17]),
        .CLR(AR),
        .D(D[3]),
        .Q(data_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[4] 
       (.C(CLK),
        .CE(Q[17]),
        .CLR(AR),
        .D(D[4]),
        .Q(data_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[5] 
       (.C(CLK),
        .CE(Q[17]),
        .CLR(AR),
        .D(D[5]),
        .Q(data_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[6] 
       (.C(CLK),
        .CE(Q[17]),
        .CLR(AR),
        .D(D[6]),
        .Q(data_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[7] 
       (.C(CLK),
        .CE(Q[17]),
        .CLR(AR),
        .D(D[7]),
        .Q(data_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \ex_reg_reg[0] 
       (.C(CLK),
        .CE(Q[2]),
        .CLR(AR),
        .D(ex_curr[0]),
        .Q(ex_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ex_reg_reg[1] 
       (.C(CLK),
        .CE(Q[2]),
        .CLR(AR),
        .D(ex_curr[1]),
        .Q(ex_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_z0_OBUF[0]_inst_i_1 
       (.I0(ex_reg[0]),
        .I1(data_reg[0]),
        .I2(ex_reg[1]),
        .O(o_z0_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_z0_OBUF[1]_inst_i_1 
       (.I0(ex_reg[0]),
        .I1(data_reg[1]),
        .I2(ex_reg[1]),
        .O(o_z0_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_z0_OBUF[2]_inst_i_1 
       (.I0(ex_reg[0]),
        .I1(data_reg[2]),
        .I2(ex_reg[1]),
        .O(o_z0_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_z0_OBUF[3]_inst_i_1 
       (.I0(ex_reg[0]),
        .I1(data_reg[3]),
        .I2(ex_reg[1]),
        .O(o_z0_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_z0_OBUF[4]_inst_i_1 
       (.I0(ex_reg[0]),
        .I1(data_reg[4]),
        .I2(ex_reg[1]),
        .O(o_z0_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_z0_OBUF[5]_inst_i_1 
       (.I0(ex_reg[0]),
        .I1(data_reg[5]),
        .I2(ex_reg[1]),
        .O(o_z0_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_z0_OBUF[6]_inst_i_1 
       (.I0(ex_reg[0]),
        .I1(data_reg[6]),
        .I2(ex_reg[1]),
        .O(o_z0_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_z0_OBUF[7]_inst_i_1 
       (.I0(ex_reg[0]),
        .I1(data_reg[7]),
        .I2(ex_reg[1]),
        .O(o_z0_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_z1_OBUF[0]_inst_i_1 
       (.I0(data_reg[0]),
        .I1(ex_reg[0]),
        .I2(ex_reg[1]),
        .O(o_z1_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_z1_OBUF[1]_inst_i_1 
       (.I0(data_reg[1]),
        .I1(ex_reg[0]),
        .I2(ex_reg[1]),
        .O(o_z1_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_z1_OBUF[2]_inst_i_1 
       (.I0(data_reg[2]),
        .I1(ex_reg[0]),
        .I2(ex_reg[1]),
        .O(o_z1_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_z1_OBUF[3]_inst_i_1 
       (.I0(data_reg[3]),
        .I1(ex_reg[0]),
        .I2(ex_reg[1]),
        .O(o_z1_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_z1_OBUF[4]_inst_i_1 
       (.I0(data_reg[4]),
        .I1(ex_reg[0]),
        .I2(ex_reg[1]),
        .O(o_z1_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_z1_OBUF[5]_inst_i_1 
       (.I0(data_reg[5]),
        .I1(ex_reg[0]),
        .I2(ex_reg[1]),
        .O(o_z1_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_z1_OBUF[6]_inst_i_1 
       (.I0(data_reg[6]),
        .I1(ex_reg[0]),
        .I2(ex_reg[1]),
        .O(o_z1_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_z1_OBUF[7]_inst_i_1 
       (.I0(data_reg[7]),
        .I1(ex_reg[0]),
        .I2(ex_reg[1]),
        .O(o_z1_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_z2_OBUF[0]_inst_i_1 
       (.I0(ex_reg[1]),
        .I1(data_reg[0]),
        .I2(ex_reg[0]),
        .O(o_z2_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_z2_OBUF[1]_inst_i_1 
       (.I0(ex_reg[1]),
        .I1(data_reg[1]),
        .I2(ex_reg[0]),
        .O(o_z2_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_z2_OBUF[2]_inst_i_1 
       (.I0(ex_reg[1]),
        .I1(data_reg[2]),
        .I2(ex_reg[0]),
        .O(o_z2_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_z2_OBUF[3]_inst_i_1 
       (.I0(ex_reg[1]),
        .I1(data_reg[3]),
        .I2(ex_reg[0]),
        .O(o_z2_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_z2_OBUF[4]_inst_i_1 
       (.I0(ex_reg[1]),
        .I1(data_reg[4]),
        .I2(ex_reg[0]),
        .O(o_z2_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_z2_OBUF[5]_inst_i_1 
       (.I0(ex_reg[1]),
        .I1(data_reg[5]),
        .I2(ex_reg[0]),
        .O(o_z2_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_z2_OBUF[6]_inst_i_1 
       (.I0(ex_reg[1]),
        .I1(data_reg[6]),
        .I2(ex_reg[0]),
        .O(o_z2_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_z2_OBUF[7]_inst_i_1 
       (.I0(ex_reg[1]),
        .I1(data_reg[7]),
        .I2(ex_reg[0]),
        .O(o_z2_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_z3_OBUF[0]_inst_i_1 
       (.I0(ex_reg[1]),
        .I1(data_reg[0]),
        .I2(ex_reg[0]),
        .O(o_z3_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_z3_OBUF[1]_inst_i_1 
       (.I0(ex_reg[1]),
        .I1(data_reg[1]),
        .I2(ex_reg[0]),
        .O(o_z3_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_z3_OBUF[2]_inst_i_1 
       (.I0(ex_reg[1]),
        .I1(data_reg[2]),
        .I2(ex_reg[0]),
        .O(o_z3_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_z3_OBUF[3]_inst_i_1 
       (.I0(ex_reg[1]),
        .I1(data_reg[3]),
        .I2(ex_reg[0]),
        .O(o_z3_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_z3_OBUF[4]_inst_i_1 
       (.I0(ex_reg[1]),
        .I1(data_reg[4]),
        .I2(ex_reg[0]),
        .O(o_z3_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_z3_OBUF[5]_inst_i_1 
       (.I0(ex_reg[1]),
        .I1(data_reg[5]),
        .I2(ex_reg[0]),
        .O(o_z3_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_z3_OBUF[6]_inst_i_1 
       (.I0(ex_reg[1]),
        .I1(data_reg[6]),
        .I2(ex_reg[0]),
        .O(o_z3_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_z3_OBUF[7]_inst_i_1 
       (.I0(ex_reg[1]),
        .I1(data_reg[7]),
        .I2(ex_reg[0]),
        .O(o_z3_OBUF[7]));
endmodule

(* NotValidForBitStream *)
module project_reti_logiche
   (i_clk,
    i_rst,
    i_start,
    i_w,
    o_z0,
    o_z1,
    o_z2,
    o_z3,
    o_done,
    o_mem_addr,
    i_mem_data,
    o_mem_we,
    o_mem_en);
  input i_clk;
  input i_rst;
  input i_start;
  input i_w;
  output [7:0]o_z0;
  output [7:0]o_z1;
  output [7:0]o_z2;
  output [7:0]o_z3;
  output o_done;
  output [15:0]o_mem_addr;
  input [7:0]i_mem_data;
  output o_mem_we;
  output o_mem_en;

  wire DATAPATH0_n_0;
  wire DATAPATH0_n_1;
  wire DATAPATH0_n_2;
  wire DATAPATH0_n_3;
  wire \FSM_onehot_curr_state[18]_i_1_n_0 ;
  wire \FSM_onehot_curr_state[18]_i_2_n_0 ;
  wire \FSM_onehot_curr_state_reg_n_0_[0] ;
  wire \FSM_onehot_curr_state_reg_n_0_[10] ;
  wire \FSM_onehot_curr_state_reg_n_0_[11] ;
  wire \FSM_onehot_curr_state_reg_n_0_[12] ;
  wire \FSM_onehot_curr_state_reg_n_0_[13] ;
  wire \FSM_onehot_curr_state_reg_n_0_[14] ;
  wire \FSM_onehot_curr_state_reg_n_0_[15] ;
  wire \FSM_onehot_curr_state_reg_n_0_[16] ;
  wire \FSM_onehot_curr_state_reg_n_0_[1] ;
  wire \FSM_onehot_curr_state_reg_n_0_[3] ;
  wire \FSM_onehot_curr_state_reg_n_0_[4] ;
  wire \FSM_onehot_curr_state_reg_n_0_[5] ;
  wire \FSM_onehot_curr_state_reg_n_0_[6] ;
  wire \FSM_onehot_curr_state_reg_n_0_[7] ;
  wire \FSM_onehot_curr_state_reg_n_0_[8] ;
  wire \FSM_onehot_curr_state_reg_n_0_[9] ;
  wire ex_load;
  wire i_clk;
  wire i_clk_IBUF;
  wire i_clk_IBUF_BUFG;
  wire [7:0]i_mem_data;
  wire [7:0]i_mem_data_IBUF;
  wire i_rst;
  wire i_rst_IBUF;
  wire i_start;
  wire i_start_IBUF;
  wire i_w;
  wire i_w_IBUF;
  wire o_done;
  wire o_done_OBUF;
  wire [15:0]o_mem_addr;
  wire [15:0]o_mem_addr_OBUF;
  wire o_mem_en;
  wire o_mem_en_OBUF;
  wire o_mem_we;
  wire [7:0]o_z0;
  wire [7:0]o_z0_OBUF;
  wire [7:0]o_z1;
  wire [7:0]o_z1_OBUF;
  wire [7:0]o_z2;
  wire [7:0]o_z2_OBUF;
  wire [7:0]o_z3;
  wire [7:0]o_z3_OBUF;

  datapath DATAPATH0
       (.AR(i_rst_IBUF),
        .CLK(i_clk_IBUF_BUFG),
        .D(i_mem_data_IBUF),
        .\FSM_onehot_curr_state_reg[13] (DATAPATH0_n_2),
        .\FSM_onehot_curr_state_reg[15] (DATAPATH0_n_3),
        .\FSM_onehot_curr_state_reg[5] (DATAPATH0_n_0),
        .\FSM_onehot_curr_state_reg[7] (DATAPATH0_n_1),
        .Q({o_mem_en_OBUF,\FSM_onehot_curr_state_reg_n_0_[16] ,\FSM_onehot_curr_state_reg_n_0_[15] ,\FSM_onehot_curr_state_reg_n_0_[14] ,\FSM_onehot_curr_state_reg_n_0_[13] ,\FSM_onehot_curr_state_reg_n_0_[12] ,\FSM_onehot_curr_state_reg_n_0_[11] ,\FSM_onehot_curr_state_reg_n_0_[10] ,\FSM_onehot_curr_state_reg_n_0_[9] ,\FSM_onehot_curr_state_reg_n_0_[8] ,\FSM_onehot_curr_state_reg_n_0_[7] ,\FSM_onehot_curr_state_reg_n_0_[6] ,\FSM_onehot_curr_state_reg_n_0_[5] ,\FSM_onehot_curr_state_reg_n_0_[4] ,\FSM_onehot_curr_state_reg_n_0_[3] ,ex_load,\FSM_onehot_curr_state_reg_n_0_[1] ,\FSM_onehot_curr_state_reg_n_0_[0] }),
        .i_clk_IBUF(i_clk_IBUF),
        .i_start(i_start_IBUF),
        .i_w(i_w_IBUF),
        .o_mem_addr(o_mem_addr_OBUF),
        .o_z0_OBUF(o_z0_OBUF),
        .o_z1_OBUF(o_z1_OBUF),
        .o_z2_OBUF(o_z2_OBUF),
        .o_z3_OBUF(o_z3_OBUF));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \FSM_onehot_curr_state[18]_i_1 
       (.I0(DATAPATH0_n_0),
        .I1(DATAPATH0_n_1),
        .I2(DATAPATH0_n_2),
        .I3(DATAPATH0_n_3),
        .I4(\FSM_onehot_curr_state[18]_i_2_n_0 ),
        .O(\FSM_onehot_curr_state[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \FSM_onehot_curr_state[18]_i_2 
       (.I0(i_start_IBUF),
        .I1(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I2(o_done_OBUF),
        .I3(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .O(\FSM_onehot_curr_state[18]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "s14:0000100000000000000,s13:0000010000000000000,s12:0000001000000000000,s18:1000000000000000000,s3:0000000000000001000,s17:0100000000000000000,s2:0000000000000000100,s16:0010000000000000000,s1:0000000000000000010,s11:0000000100000000000,s0:0000000000000000001,s10:0000000010000000000,s7:0000000000010000000,s6:0000000000001000000,s9:0000000001000000000,s8:0000000000100000000,s5:0000000000000100000,s4:0000000000000010000,s15:0001000000000000000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_curr_state_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\FSM_onehot_curr_state[18]_i_1_n_0 ),
        .D(o_done_OBUF),
        .PRE(i_rst_IBUF),
        .Q(\FSM_onehot_curr_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "s14:0000100000000000000,s13:0000010000000000000,s12:0000001000000000000,s18:1000000000000000000,s3:0000000000000001000,s17:0100000000000000000,s2:0000000000000000100,s16:0010000000000000000,s1:0000000000000000010,s11:0000000100000000000,s0:0000000000000000001,s10:0000000010000000000,s7:0000000000010000000,s6:0000000000001000000,s9:0000000001000000000,s8:0000000000100000000,s5:0000000000000100000,s4:0000000000000010000,s15:0001000000000000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\FSM_onehot_curr_state[18]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(\FSM_onehot_curr_state_reg_n_0_[9] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[10] ));
  (* FSM_ENCODED_STATES = "s14:0000100000000000000,s13:0000010000000000000,s12:0000001000000000000,s18:1000000000000000000,s3:0000000000000001000,s17:0100000000000000000,s2:0000000000000000100,s16:0010000000000000000,s1:0000000000000000010,s11:0000000100000000000,s0:0000000000000000001,s10:0000000010000000000,s7:0000000000010000000,s6:0000000000001000000,s9:0000000001000000000,s8:0000000000100000000,s5:0000000000000100000,s4:0000000000000010000,s15:0001000000000000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\FSM_onehot_curr_state[18]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(\FSM_onehot_curr_state_reg_n_0_[10] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[11] ));
  (* FSM_ENCODED_STATES = "s14:0000100000000000000,s13:0000010000000000000,s12:0000001000000000000,s18:1000000000000000000,s3:0000000000000001000,s17:0100000000000000000,s2:0000000000000000100,s16:0010000000000000000,s1:0000000000000000010,s11:0000000100000000000,s0:0000000000000000001,s10:0000000010000000000,s7:0000000000010000000,s6:0000000000001000000,s9:0000000001000000000,s8:0000000000100000000,s5:0000000000000100000,s4:0000000000000010000,s15:0001000000000000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\FSM_onehot_curr_state[18]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(\FSM_onehot_curr_state_reg_n_0_[11] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[12] ));
  (* FSM_ENCODED_STATES = "s14:0000100000000000000,s13:0000010000000000000,s12:0000001000000000000,s18:1000000000000000000,s3:0000000000000001000,s17:0100000000000000000,s2:0000000000000000100,s16:0010000000000000000,s1:0000000000000000010,s11:0000000100000000000,s0:0000000000000000001,s10:0000000010000000000,s7:0000000000010000000,s6:0000000000001000000,s9:0000000001000000000,s8:0000000000100000000,s5:0000000000000100000,s4:0000000000000010000,s15:0001000000000000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\FSM_onehot_curr_state[18]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(\FSM_onehot_curr_state_reg_n_0_[12] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[13] ));
  (* FSM_ENCODED_STATES = "s14:0000100000000000000,s13:0000010000000000000,s12:0000001000000000000,s18:1000000000000000000,s3:0000000000000001000,s17:0100000000000000000,s2:0000000000000000100,s16:0010000000000000000,s1:0000000000000000010,s11:0000000100000000000,s0:0000000000000000001,s10:0000000010000000000,s7:0000000000010000000,s6:0000000000001000000,s9:0000000001000000000,s8:0000000000100000000,s5:0000000000000100000,s4:0000000000000010000,s15:0001000000000000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\FSM_onehot_curr_state[18]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(\FSM_onehot_curr_state_reg_n_0_[13] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[14] ));
  (* FSM_ENCODED_STATES = "s14:0000100000000000000,s13:0000010000000000000,s12:0000001000000000000,s18:1000000000000000000,s3:0000000000000001000,s17:0100000000000000000,s2:0000000000000000100,s16:0010000000000000000,s1:0000000000000000010,s11:0000000100000000000,s0:0000000000000000001,s10:0000000010000000000,s7:0000000000010000000,s6:0000000000001000000,s9:0000000001000000000,s8:0000000000100000000,s5:0000000000000100000,s4:0000000000000010000,s15:0001000000000000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[15] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\FSM_onehot_curr_state[18]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(\FSM_onehot_curr_state_reg_n_0_[14] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[15] ));
  (* FSM_ENCODED_STATES = "s14:0000100000000000000,s13:0000010000000000000,s12:0000001000000000000,s18:1000000000000000000,s3:0000000000000001000,s17:0100000000000000000,s2:0000000000000000100,s16:0010000000000000000,s1:0000000000000000010,s11:0000000100000000000,s0:0000000000000000001,s10:0000000010000000000,s7:0000000000010000000,s6:0000000000001000000,s9:0000000001000000000,s8:0000000000100000000,s5:0000000000000100000,s4:0000000000000010000,s15:0001000000000000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[16] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\FSM_onehot_curr_state[18]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(\FSM_onehot_curr_state_reg_n_0_[15] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[16] ));
  (* FSM_ENCODED_STATES = "s14:0000100000000000000,s13:0000010000000000000,s12:0000001000000000000,s18:1000000000000000000,s3:0000000000000001000,s17:0100000000000000000,s2:0000000000000000100,s16:0010000000000000000,s1:0000000000000000010,s11:0000000100000000000,s0:0000000000000000001,s10:0000000010000000000,s7:0000000000010000000,s6:0000000000001000000,s9:0000000001000000000,s8:0000000000100000000,s5:0000000000000100000,s4:0000000000000010000,s15:0001000000000000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[17] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\FSM_onehot_curr_state[18]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(\FSM_onehot_curr_state_reg_n_0_[16] ),
        .Q(o_mem_en_OBUF));
  (* FSM_ENCODED_STATES = "s14:0000100000000000000,s13:0000010000000000000,s12:0000001000000000000,s18:1000000000000000000,s3:0000000000000001000,s17:0100000000000000000,s2:0000000000000000100,s16:0010000000000000000,s1:0000000000000000010,s11:0000000100000000000,s0:0000000000000000001,s10:0000000010000000000,s7:0000000000010000000,s6:0000000000001000000,s9:0000000001000000000,s8:0000000000100000000,s5:0000000000000100000,s4:0000000000000010000,s15:0001000000000000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[18] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\FSM_onehot_curr_state[18]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(o_mem_en_OBUF),
        .Q(o_done_OBUF));
  (* FSM_ENCODED_STATES = "s14:0000100000000000000,s13:0000010000000000000,s12:0000001000000000000,s18:1000000000000000000,s3:0000000000000001000,s17:0100000000000000000,s2:0000000000000000100,s16:0010000000000000000,s1:0000000000000000010,s11:0000000100000000000,s0:0000000000000000001,s10:0000000010000000000,s7:0000000000010000000,s6:0000000000001000000,s9:0000000001000000000,s8:0000000000100000000,s5:0000000000000100000,s4:0000000000000010000,s15:0001000000000000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\FSM_onehot_curr_state[18]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "s14:0000100000000000000,s13:0000010000000000000,s12:0000001000000000000,s18:1000000000000000000,s3:0000000000000001000,s17:0100000000000000000,s2:0000000000000000100,s16:0010000000000000000,s1:0000000000000000010,s11:0000000100000000000,s0:0000000000000000001,s10:0000000010000000000,s7:0000000000010000000,s6:0000000000001000000,s9:0000000001000000000,s8:0000000000100000000,s5:0000000000000100000,s4:0000000000000010000,s15:0001000000000000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\FSM_onehot_curr_state[18]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .Q(ex_load));
  (* FSM_ENCODED_STATES = "s14:0000100000000000000,s13:0000010000000000000,s12:0000001000000000000,s18:1000000000000000000,s3:0000000000000001000,s17:0100000000000000000,s2:0000000000000000100,s16:0010000000000000000,s1:0000000000000000010,s11:0000000100000000000,s0:0000000000000000001,s10:0000000010000000000,s7:0000000000010000000,s6:0000000000001000000,s9:0000000001000000000,s8:0000000000100000000,s5:0000000000000100000,s4:0000000000000010000,s15:0001000000000000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\FSM_onehot_curr_state[18]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(ex_load),
        .Q(\FSM_onehot_curr_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "s14:0000100000000000000,s13:0000010000000000000,s12:0000001000000000000,s18:1000000000000000000,s3:0000000000000001000,s17:0100000000000000000,s2:0000000000000000100,s16:0010000000000000000,s1:0000000000000000010,s11:0000000100000000000,s0:0000000000000000001,s10:0000000010000000000,s7:0000000000010000000,s6:0000000000001000000,s9:0000000001000000000,s8:0000000000100000000,s5:0000000000000100000,s4:0000000000000010000,s15:0001000000000000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\FSM_onehot_curr_state[18]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "s14:0000100000000000000,s13:0000010000000000000,s12:0000001000000000000,s18:1000000000000000000,s3:0000000000000001000,s17:0100000000000000000,s2:0000000000000000100,s16:0010000000000000000,s1:0000000000000000010,s11:0000000100000000000,s0:0000000000000000001,s10:0000000010000000000,s7:0000000000010000000,s6:0000000000001000000,s9:0000000001000000000,s8:0000000000100000000,s5:0000000000000100000,s4:0000000000000010000,s15:0001000000000000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\FSM_onehot_curr_state[18]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "s14:0000100000000000000,s13:0000010000000000000,s12:0000001000000000000,s18:1000000000000000000,s3:0000000000000001000,s17:0100000000000000000,s2:0000000000000000100,s16:0010000000000000000,s1:0000000000000000010,s11:0000000100000000000,s0:0000000000000000001,s10:0000000010000000000,s7:0000000000010000000,s6:0000000000001000000,s9:0000000001000000000,s8:0000000000100000000,s5:0000000000000100000,s4:0000000000000010000,s15:0001000000000000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\FSM_onehot_curr_state[18]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(\FSM_onehot_curr_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "s14:0000100000000000000,s13:0000010000000000000,s12:0000001000000000000,s18:1000000000000000000,s3:0000000000000001000,s17:0100000000000000000,s2:0000000000000000100,s16:0010000000000000000,s1:0000000000000000010,s11:0000000100000000000,s0:0000000000000000001,s10:0000000010000000000,s7:0000000000010000000,s6:0000000000001000000,s9:0000000001000000000,s8:0000000000100000000,s5:0000000000000100000,s4:0000000000000010000,s15:0001000000000000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\FSM_onehot_curr_state[18]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(\FSM_onehot_curr_state_reg_n_0_[6] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "s14:0000100000000000000,s13:0000010000000000000,s12:0000001000000000000,s18:1000000000000000000,s3:0000000000000001000,s17:0100000000000000000,s2:0000000000000000100,s16:0010000000000000000,s1:0000000000000000010,s11:0000000100000000000,s0:0000000000000000001,s10:0000000010000000000,s7:0000000000010000000,s6:0000000000001000000,s9:0000000001000000000,s8:0000000000100000000,s5:0000000000000100000,s4:0000000000000010000,s15:0001000000000000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\FSM_onehot_curr_state[18]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(\FSM_onehot_curr_state_reg_n_0_[7] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[8] ));
  (* FSM_ENCODED_STATES = "s14:0000100000000000000,s13:0000010000000000000,s12:0000001000000000000,s18:1000000000000000000,s3:0000000000000001000,s17:0100000000000000000,s2:0000000000000000100,s16:0010000000000000000,s1:0000000000000000010,s11:0000000100000000000,s0:0000000000000000001,s10:0000000010000000000,s7:0000000000010000000,s6:0000000000001000000,s9:0000000001000000000,s8:0000000000100000000,s5:0000000000000100000,s4:0000000000000010000,s15:0001000000000000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\FSM_onehot_curr_state[18]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(\FSM_onehot_curr_state_reg_n_0_[8] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[9] ));
  BUFG i_clk_IBUF_BUFG_inst
       (.I(i_clk_IBUF),
        .O(i_clk_IBUF_BUFG));
  IBUF #(
    .CCIO_EN("TRUE")) 
    i_clk_IBUF_inst
       (.I(i_clk),
        .O(i_clk_IBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \i_mem_data_IBUF[0]_inst 
       (.I(i_mem_data[0]),
        .O(i_mem_data_IBUF[0]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \i_mem_data_IBUF[1]_inst 
       (.I(i_mem_data[1]),
        .O(i_mem_data_IBUF[1]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \i_mem_data_IBUF[2]_inst 
       (.I(i_mem_data[2]),
        .O(i_mem_data_IBUF[2]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \i_mem_data_IBUF[3]_inst 
       (.I(i_mem_data[3]),
        .O(i_mem_data_IBUF[3]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \i_mem_data_IBUF[4]_inst 
       (.I(i_mem_data[4]),
        .O(i_mem_data_IBUF[4]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \i_mem_data_IBUF[5]_inst 
       (.I(i_mem_data[5]),
        .O(i_mem_data_IBUF[5]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \i_mem_data_IBUF[6]_inst 
       (.I(i_mem_data[6]),
        .O(i_mem_data_IBUF[6]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \i_mem_data_IBUF[7]_inst 
       (.I(i_mem_data[7]),
        .O(i_mem_data_IBUF[7]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    i_rst_IBUF_inst
       (.I(i_rst),
        .O(i_rst_IBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    i_start_IBUF_inst
       (.I(i_start),
        .O(i_start_IBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    i_w_IBUF_inst
       (.I(i_w),
        .O(i_w_IBUF));
  OBUF o_done_OBUF_inst
       (.I(o_done_OBUF),
        .O(o_done));
  OBUF \o_mem_addr_OBUF[0]_inst 
       (.I(o_mem_addr_OBUF[0]),
        .O(o_mem_addr[0]));
  OBUF \o_mem_addr_OBUF[10]_inst 
       (.I(o_mem_addr_OBUF[10]),
        .O(o_mem_addr[10]));
  OBUF \o_mem_addr_OBUF[11]_inst 
       (.I(o_mem_addr_OBUF[11]),
        .O(o_mem_addr[11]));
  OBUF \o_mem_addr_OBUF[12]_inst 
       (.I(o_mem_addr_OBUF[12]),
        .O(o_mem_addr[12]));
  OBUF \o_mem_addr_OBUF[13]_inst 
       (.I(o_mem_addr_OBUF[13]),
        .O(o_mem_addr[13]));
  OBUF \o_mem_addr_OBUF[14]_inst 
       (.I(o_mem_addr_OBUF[14]),
        .O(o_mem_addr[14]));
  OBUF \o_mem_addr_OBUF[15]_inst 
       (.I(o_mem_addr_OBUF[15]),
        .O(o_mem_addr[15]));
  OBUF \o_mem_addr_OBUF[1]_inst 
       (.I(o_mem_addr_OBUF[1]),
        .O(o_mem_addr[1]));
  OBUF \o_mem_addr_OBUF[2]_inst 
       (.I(o_mem_addr_OBUF[2]),
        .O(o_mem_addr[2]));
  OBUF \o_mem_addr_OBUF[3]_inst 
       (.I(o_mem_addr_OBUF[3]),
        .O(o_mem_addr[3]));
  OBUF \o_mem_addr_OBUF[4]_inst 
       (.I(o_mem_addr_OBUF[4]),
        .O(o_mem_addr[4]));
  OBUF \o_mem_addr_OBUF[5]_inst 
       (.I(o_mem_addr_OBUF[5]),
        .O(o_mem_addr[5]));
  OBUF \o_mem_addr_OBUF[6]_inst 
       (.I(o_mem_addr_OBUF[6]),
        .O(o_mem_addr[6]));
  OBUF \o_mem_addr_OBUF[7]_inst 
       (.I(o_mem_addr_OBUF[7]),
        .O(o_mem_addr[7]));
  OBUF \o_mem_addr_OBUF[8]_inst 
       (.I(o_mem_addr_OBUF[8]),
        .O(o_mem_addr[8]));
  OBUF \o_mem_addr_OBUF[9]_inst 
       (.I(o_mem_addr_OBUF[9]),
        .O(o_mem_addr[9]));
  OBUF o_mem_en_OBUF_inst
       (.I(o_mem_en_OBUF),
        .O(o_mem_en));
  OBUFT o_mem_we_OBUF_inst
       (.I(1'b0),
        .O(o_mem_we),
        .T(1'b1));
  OBUF \o_z0_OBUF[0]_inst 
       (.I(o_z0_OBUF[0]),
        .O(o_z0[0]));
  OBUF \o_z0_OBUF[1]_inst 
       (.I(o_z0_OBUF[1]),
        .O(o_z0[1]));
  OBUF \o_z0_OBUF[2]_inst 
       (.I(o_z0_OBUF[2]),
        .O(o_z0[2]));
  OBUF \o_z0_OBUF[3]_inst 
       (.I(o_z0_OBUF[3]),
        .O(o_z0[3]));
  OBUF \o_z0_OBUF[4]_inst 
       (.I(o_z0_OBUF[4]),
        .O(o_z0[4]));
  OBUF \o_z0_OBUF[5]_inst 
       (.I(o_z0_OBUF[5]),
        .O(o_z0[5]));
  OBUF \o_z0_OBUF[6]_inst 
       (.I(o_z0_OBUF[6]),
        .O(o_z0[6]));
  OBUF \o_z0_OBUF[7]_inst 
       (.I(o_z0_OBUF[7]),
        .O(o_z0[7]));
  OBUF \o_z1_OBUF[0]_inst 
       (.I(o_z1_OBUF[0]),
        .O(o_z1[0]));
  OBUF \o_z1_OBUF[1]_inst 
       (.I(o_z1_OBUF[1]),
        .O(o_z1[1]));
  OBUF \o_z1_OBUF[2]_inst 
       (.I(o_z1_OBUF[2]),
        .O(o_z1[2]));
  OBUF \o_z1_OBUF[3]_inst 
       (.I(o_z1_OBUF[3]),
        .O(o_z1[3]));
  OBUF \o_z1_OBUF[4]_inst 
       (.I(o_z1_OBUF[4]),
        .O(o_z1[4]));
  OBUF \o_z1_OBUF[5]_inst 
       (.I(o_z1_OBUF[5]),
        .O(o_z1[5]));
  OBUF \o_z1_OBUF[6]_inst 
       (.I(o_z1_OBUF[6]),
        .O(o_z1[6]));
  OBUF \o_z1_OBUF[7]_inst 
       (.I(o_z1_OBUF[7]),
        .O(o_z1[7]));
  OBUF \o_z2_OBUF[0]_inst 
       (.I(o_z2_OBUF[0]),
        .O(o_z2[0]));
  OBUF \o_z2_OBUF[1]_inst 
       (.I(o_z2_OBUF[1]),
        .O(o_z2[1]));
  OBUF \o_z2_OBUF[2]_inst 
       (.I(o_z2_OBUF[2]),
        .O(o_z2[2]));
  OBUF \o_z2_OBUF[3]_inst 
       (.I(o_z2_OBUF[3]),
        .O(o_z2[3]));
  OBUF \o_z2_OBUF[4]_inst 
       (.I(o_z2_OBUF[4]),
        .O(o_z2[4]));
  OBUF \o_z2_OBUF[5]_inst 
       (.I(o_z2_OBUF[5]),
        .O(o_z2[5]));
  OBUF \o_z2_OBUF[6]_inst 
       (.I(o_z2_OBUF[6]),
        .O(o_z2[6]));
  OBUF \o_z2_OBUF[7]_inst 
       (.I(o_z2_OBUF[7]),
        .O(o_z2[7]));
  OBUF \o_z3_OBUF[0]_inst 
       (.I(o_z3_OBUF[0]),
        .O(o_z3[0]));
  OBUF \o_z3_OBUF[1]_inst 
       (.I(o_z3_OBUF[1]),
        .O(o_z3[1]));
  OBUF \o_z3_OBUF[2]_inst 
       (.I(o_z3_OBUF[2]),
        .O(o_z3[2]));
  OBUF \o_z3_OBUF[3]_inst 
       (.I(o_z3_OBUF[3]),
        .O(o_z3[3]));
  OBUF \o_z3_OBUF[4]_inst 
       (.I(o_z3_OBUF[4]),
        .O(o_z3[4]));
  OBUF \o_z3_OBUF[5]_inst 
       (.I(o_z3_OBUF[5]),
        .O(o_z3[5]));
  OBUF \o_z3_OBUF[6]_inst 
       (.I(o_z3_OBUF[6]),
        .O(o_z3[6]));
  OBUF \o_z3_OBUF[7]_inst 
       (.I(o_z3_OBUF[7]),
        .O(o_z3[7]));
endmodule

module serial_to_parallel_16
   (o_mem_addr,
    \FSM_onehot_curr_state_reg[5] ,
    \FSM_onehot_curr_state_reg[7] ,
    \FSM_onehot_curr_state_reg[13] ,
    \FSM_onehot_curr_state_reg[15] ,
    i_start,
    i_clk_IBUF,
    Q);
  output [15:0]o_mem_addr;
  output \FSM_onehot_curr_state_reg[5] ;
  output \FSM_onehot_curr_state_reg[7] ;
  output \FSM_onehot_curr_state_reg[13] ;
  output \FSM_onehot_curr_state_reg[15] ;
  input i_start;
  input i_clk_IBUF;
  input [15:0]Q;

  wire \FSM_onehot_curr_state_reg[13] ;
  wire \FSM_onehot_curr_state_reg[15] ;
  wire \FSM_onehot_curr_state_reg[5] ;
  wire \FSM_onehot_curr_state_reg[7] ;
  wire [15:0]Q;
  wire i_clk1_out;
  wire i_clk_IBUF;
  wire i_start;
  wire [15:0]o_mem_addr;

  FDRE #(
    .INIT(1'b0)) 
    q0_reg
       (.C(i_clk1_out),
        .CE(1'b1),
        .D(o_mem_addr[1]),
        .Q(o_mem_addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    q10_reg
       (.C(i_clk1_out),
        .CE(1'b1),
        .D(o_mem_addr[11]),
        .Q(o_mem_addr[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    q11_reg
       (.C(i_clk1_out),
        .CE(1'b1),
        .D(o_mem_addr[12]),
        .Q(o_mem_addr[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    q12_reg
       (.C(i_clk1_out),
        .CE(1'b1),
        .D(o_mem_addr[13]),
        .Q(o_mem_addr[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    q13_reg
       (.C(i_clk1_out),
        .CE(1'b1),
        .D(o_mem_addr[14]),
        .Q(o_mem_addr[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    q14_reg
       (.C(i_clk1_out),
        .CE(1'b1),
        .D(o_mem_addr[15]),
        .Q(o_mem_addr[14]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAAAA2)) 
    q15_i_1
       (.I0(i_clk_IBUF),
        .I1(\FSM_onehot_curr_state_reg[5] ),
        .I2(\FSM_onehot_curr_state_reg[7] ),
        .I3(\FSM_onehot_curr_state_reg[13] ),
        .I4(\FSM_onehot_curr_state_reg[15] ),
        .O(i_clk1_out));
  LUT4 #(
    .INIT(16'h0001)) 
    q15_i_2
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\FSM_onehot_curr_state_reg[5] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    q15_i_3
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[7]),
        .I3(Q[6]),
        .O(\FSM_onehot_curr_state_reg[7] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    q15_i_4
       (.I0(Q[11]),
        .I1(Q[10]),
        .I2(Q[9]),
        .I3(Q[8]),
        .O(\FSM_onehot_curr_state_reg[13] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    q15_i_5
       (.I0(Q[13]),
        .I1(Q[12]),
        .I2(Q[15]),
        .I3(Q[14]),
        .O(\FSM_onehot_curr_state_reg[15] ));
  FDRE #(
    .INIT(1'b0)) 
    q15_reg
       (.C(i_clk1_out),
        .CE(1'b1),
        .D(i_start),
        .Q(o_mem_addr[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    q1_reg
       (.C(i_clk1_out),
        .CE(1'b1),
        .D(o_mem_addr[2]),
        .Q(o_mem_addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    q2_reg
       (.C(i_clk1_out),
        .CE(1'b1),
        .D(o_mem_addr[3]),
        .Q(o_mem_addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    q3_reg
       (.C(i_clk1_out),
        .CE(1'b1),
        .D(o_mem_addr[4]),
        .Q(o_mem_addr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    q4_reg
       (.C(i_clk1_out),
        .CE(1'b1),
        .D(o_mem_addr[5]),
        .Q(o_mem_addr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    q5_reg
       (.C(i_clk1_out),
        .CE(1'b1),
        .D(o_mem_addr[6]),
        .Q(o_mem_addr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    q6_reg
       (.C(i_clk1_out),
        .CE(1'b1),
        .D(o_mem_addr[7]),
        .Q(o_mem_addr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    q7_reg
       (.C(i_clk1_out),
        .CE(1'b1),
        .D(o_mem_addr[8]),
        .Q(o_mem_addr[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    q8_reg
       (.C(i_clk1_out),
        .CE(1'b1),
        .D(o_mem_addr[9]),
        .Q(o_mem_addr[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    q9_reg
       (.C(i_clk1_out),
        .CE(1'b1),
        .D(o_mem_addr[10]),
        .Q(o_mem_addr[9]),
        .R(1'b0));
endmodule

module serial_to_parallel_2
   (D,
    i_w,
    i_clk_IBUF,
    Q);
  output [1:0]D;
  input i_w;
  input i_clk_IBUF;
  input [1:0]Q;

  wire [1:0]D;
  wire [1:0]Q;
  wire i_clk0_out;
  wire i_clk_IBUF;
  wire i_w;

  FDRE #(
    .INIT(1'b0)) 
    q0_reg
       (.C(i_clk0_out),
        .CE(1'b1),
        .D(D[1]),
        .Q(D[0]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA8)) 
    q1_i_1
       (.I0(i_clk_IBUF),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(i_clk0_out));
  FDRE #(
    .INIT(1'b0)) 
    q1_reg
       (.C(i_clk0_out),
        .CE(1'b1),
        .D(i_w),
        .Q(D[1]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
