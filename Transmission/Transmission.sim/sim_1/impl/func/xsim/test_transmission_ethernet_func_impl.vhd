-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Tue Apr 26 16:47:26 2022
-- Host        : srv-tp04 running 64-bit Ubuntu 20.04.4 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/favary/Bureau/xilinx_tps/BE_Controleur_Ethernet_2022/Transmission/Transmission.sim/sim_1/impl/func/xsim/test_transmission_ethernet_func_impl.vhd
-- Design      : ethernet_Controller_src
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ethernet_Controller_src is
  port (
    RBYTEP : out STD_LOGIC;
    RCLEANP : out STD_LOGIC;
    RCVNGP : out STD_LOGIC;
    RDATAO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    RDATAI : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RDONEP : out STD_LOGIC;
    RENABP : in STD_LOGIC;
    RSMATIP : out STD_LOGIC;
    RSTARTP : out STD_LOGIC;
    CLK10I : in STD_LOGIC;
    RESETN : in STD_LOGIC;
    VCC : in STD_LOGIC;
    NOADDRI : in STD_LOGIC_VECTOR ( 47 downto 0 );
    TABORTP : in STD_LOGIC;
    TAVAILP : in STD_LOGIC;
    TDATAI : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TDATAO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TDONEP : out STD_LOGIC;
    TLASTP : in STD_LOGIC;
    TREADDP : out STD_LOGIC;
    TRNSMTP : out STD_LOGIC;
    TSTARTP : out STD_LOGIC;
    TSOCOLP : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ethernet_Controller_src : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of ethernet_Controller_src : entity is "4223feb9";
end ethernet_Controller_src;

architecture STRUCTURE of ethernet_Controller_src is
  signal CLK10I_IBUF : STD_LOGIC;
  signal CLK10I_IBUF_BUFG : STD_LOGIC;
  signal NOADDRI_IBUF : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal RBYTEP1 : STD_LOGIC;
  signal RBYTEP163_out : STD_LOGIC;
  signal RBYTEP2 : STD_LOGIC;
  signal RBYTEP_OBUF : STD_LOGIC;
  signal RBYTEP_i_1_n_0 : STD_LOGIC;
  signal RBYTEP_i_5_n_0 : STD_LOGIC;
  signal RBYTEP_i_6_n_0 : STD_LOGIC;
  signal RCLEANP_OBUF : STD_LOGIC;
  signal RCLEANP_i_10_n_0 : STD_LOGIC;
  signal RCLEANP_i_11_n_0 : STD_LOGIC;
  signal RCLEANP_i_12_n_0 : STD_LOGIC;
  signal RCLEANP_i_13_n_0 : STD_LOGIC;
  signal RCLEANP_i_14_n_0 : STD_LOGIC;
  signal RCLEANP_i_15_n_0 : STD_LOGIC;
  signal RCLEANP_i_16_n_0 : STD_LOGIC;
  signal RCLEANP_i_17_n_0 : STD_LOGIC;
  signal RCLEANP_i_18_n_0 : STD_LOGIC;
  signal RCLEANP_i_19_n_0 : STD_LOGIC;
  signal RCLEANP_i_1_n_0 : STD_LOGIC;
  signal RCLEANP_i_20_n_0 : STD_LOGIC;
  signal RCLEANP_i_21_n_0 : STD_LOGIC;
  signal RCLEANP_i_22_n_0 : STD_LOGIC;
  signal RCLEANP_i_23_n_0 : STD_LOGIC;
  signal RCLEANP_i_3_n_0 : STD_LOGIC;
  signal RCLEANP_i_4_n_0 : STD_LOGIC;
  signal RCLEANP_i_5_n_0 : STD_LOGIC;
  signal RCLEANP_i_6_n_0 : STD_LOGIC;
  signal RCLEANP_i_7_n_0 : STD_LOGIC;
  signal RCLEANP_i_8_n_0 : STD_LOGIC;
  signal RCLEANP_i_9_n_0 : STD_LOGIC;
  signal RCVNGP_OBUF : STD_LOGIC;
  signal RDATAI_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \RDATAO[7]_i_1_n_0\ : STD_LOGIC;
  signal RDATAO_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal RDONEP_OBUF : STD_LOGIC;
  signal RDONEP_i_1_n_0 : STD_LOGIC;
  signal RDONEP_i_2_n_0 : STD_LOGIC;
  signal RDONEP_i_3_n_0 : STD_LOGIC;
  signal RENABP_IBUF : STD_LOGIC;
  signal RESETN_IBUF : STD_LOGIC;
  signal RSMATIP_OBUF : STD_LOGIC;
  signal RSTARTP0 : STD_LOGIC;
  signal RSTARTP_OBUF : STD_LOGIC;
  signal RSTARTP_i_1_n_0 : STD_LOGIC;
  signal RSTARTP_i_3_n_0 : STD_LOGIC;
  signal TABORTP_IBUF : STD_LOGIC;
  signal TAVAILP_IBUF : STD_LOGIC;
  signal TDATAI_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \TDATAO[0]_i_1_n_0\ : STD_LOGIC;
  signal \TDATAO[0]_i_2_n_0\ : STD_LOGIC;
  signal \TDATAO[0]_i_3_n_0\ : STD_LOGIC;
  signal \TDATAO[0]_i_4_n_0\ : STD_LOGIC;
  signal \TDATAO[0]_i_5_n_0\ : STD_LOGIC;
  signal \TDATAO[0]_i_6_n_0\ : STD_LOGIC;
  signal \TDATAO[0]_i_7_n_0\ : STD_LOGIC;
  signal \TDATAO[1]_i_1_n_0\ : STD_LOGIC;
  signal \TDATAO[1]_i_2_n_0\ : STD_LOGIC;
  signal \TDATAO[1]_i_3_n_0\ : STD_LOGIC;
  signal \TDATAO[1]_i_4_n_0\ : STD_LOGIC;
  signal \TDATAO[2]_i_1_n_0\ : STD_LOGIC;
  signal \TDATAO[2]_i_2_n_0\ : STD_LOGIC;
  signal \TDATAO[2]_i_3_n_0\ : STD_LOGIC;
  signal \TDATAO[2]_i_4_n_0\ : STD_LOGIC;
  signal \TDATAO[3]_i_1_n_0\ : STD_LOGIC;
  signal \TDATAO[3]_i_2_n_0\ : STD_LOGIC;
  signal \TDATAO[3]_i_3_n_0\ : STD_LOGIC;
  signal \TDATAO[3]_i_4_n_0\ : STD_LOGIC;
  signal \TDATAO[4]_i_1_n_0\ : STD_LOGIC;
  signal \TDATAO[4]_i_2_n_0\ : STD_LOGIC;
  signal \TDATAO[4]_i_3_n_0\ : STD_LOGIC;
  signal \TDATAO[4]_i_4_n_0\ : STD_LOGIC;
  signal \TDATAO[5]_i_1_n_0\ : STD_LOGIC;
  signal \TDATAO[5]_i_2_n_0\ : STD_LOGIC;
  signal \TDATAO[5]_i_3_n_0\ : STD_LOGIC;
  signal \TDATAO[5]_i_4_n_0\ : STD_LOGIC;
  signal \TDATAO[6]_i_1_n_0\ : STD_LOGIC;
  signal \TDATAO[6]_i_2_n_0\ : STD_LOGIC;
  signal \TDATAO[6]_i_4_n_0\ : STD_LOGIC;
  signal \TDATAO[6]_i_5_n_0\ : STD_LOGIC;
  signal \TDATAO[6]_i_6_n_0\ : STD_LOGIC;
  signal \TDATAO[6]_i_7_n_0\ : STD_LOGIC;
  signal \TDATAO[7]_i_1_n_0\ : STD_LOGIC;
  signal \TDATAO[7]_i_2_n_0\ : STD_LOGIC;
  signal \TDATAO[7]_i_3_n_0\ : STD_LOGIC;
  signal \TDATAO[7]_i_4_n_0\ : STD_LOGIC;
  signal TDATAO_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TDONEP1 : STD_LOGIC;
  signal TDONEP6_out : STD_LOGIC;
  signal TDONEP_OBUF : STD_LOGIC;
  signal TDONEP_i_1_n_0 : STD_LOGIC;
  signal TDONEP_i_3_n_0 : STD_LOGIC;
  signal TDONEP_i_4_n_0 : STD_LOGIC;
  signal TLASTP_IBUF : STD_LOGIC;
  signal TREADDP3_out : STD_LOGIC;
  signal TREADDP_OBUF : STD_LOGIC;
  signal TREADDP_i_1_n_0 : STD_LOGIC;
  signal TRNSMTP_OBUF : STD_LOGIC;
  signal TSOCOLP_OBUF : STD_LOGIC;
  signal TSTARTP0_out : STD_LOGIC;
  signal TSTARTP2_out : STD_LOGIC;
  signal TSTARTP_OBUF : STD_LOGIC;
  signal TSTARTP_i_1_n_0 : STD_LOGIC;
  signal aborting12_out : STD_LOGIC;
  signal aborting30_in : STD_LOGIC;
  signal aborting_reg_n_0 : STD_LOGIC;
  signal \counter_abort[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_abort[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter_abort_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_abort_reg_n_0_[1]\ : STD_LOGIC;
  signal counter_addr : STD_LOGIC;
  signal \counter_addr[10]_i_1_n_0\ : STD_LOGIC;
  signal \counter_addr[10]_i_4_n_0\ : STD_LOGIC;
  signal \counter_addr_emis[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_addr_emis[10]_i_1_n_0\ : STD_LOGIC;
  signal \counter_addr_emis[10]_i_2_n_0\ : STD_LOGIC;
  signal \counter_addr_emis[10]_i_4_n_0\ : STD_LOGIC;
  signal \counter_addr_emis[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter_addr_emis[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter_addr_emis_reg__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \counter_addr_reg__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \counter_oct[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_oct[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter_oct[2]_i_1_n_0\ : STD_LOGIC;
  signal counter_oct_emis : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \counter_oct_emis[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_oct_emis[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter_oct_emis[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter_oct_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_oct_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_oct_reg_n_0_[2]\ : STD_LOGIC;
  signal intRCVNGP_i_1_n_0 : STD_LOGIC;
  signal intRCVNGP_i_2_n_0 : STD_LOGIC;
  signal intRCVNGP_i_3_n_0 : STD_LOGIC;
  signal intRSMATIP : STD_LOGIC;
  signal intRSMATIP38_out : STD_LOGIC;
  signal intRSMATIP_i_1_n_0 : STD_LOGIC;
  signal intRSMATIP_i_4_n_0 : STD_LOGIC;
  signal intRSMATIP_i_5_n_0 : STD_LOGIC;
  signal intTRNSMTP_i_1_n_0 : STD_LOGIC;
  signal intTRNSMTP_i_2_n_0 : STD_LOGIC;
  signal intTSOCOLP0 : STD_LOGIC;
  signal intTSOCOLP054_out : STD_LOGIC;
  signal lastdata23_out : STD_LOGIC;
  signal lastdata_emis_i_1_n_0 : STD_LOGIC;
  signal lastdata_emis_i_2_n_0 : STD_LOGIC;
  signal lastdata_emis_i_3_n_0 : STD_LOGIC;
  signal lastdata_emis_reg_n_0 : STD_LOGIC;
  signal lastdata_i_2_n_0 : STD_LOGIC;
  signal lastdata_i_3_n_0 : STD_LOGIC;
  signal lastdata_i_4_n_0 : STD_LOGIC;
  signal lastdata_i_5_n_0 : STD_LOGIC;
  signal lastdata_i_6_n_0 : STD_LOGIC;
  signal lastdata_i_7_n_0 : STD_LOGIC;
  signal lastdata_i_8_n_0 : STD_LOGIC;
  signal lastdata_i_9_n_0 : STD_LOGIC;
  signal lastdata_reg_n_0 : STD_LOGIC;
  signal neqOp : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 10 downto 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of RBYTEP_i_3 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of RBYTEP_i_4 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of RCLEANP_i_3 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \TDATAO[0]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \TDATAO[0]_i_6\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \TDATAO[0]_i_7\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \TDATAO[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \TDATAO[6]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \TDATAO[6]_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of TDONEP_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of TDONEP_i_3 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of TDONEP_i_4 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of TSTARTP_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter_abort[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter_addr[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \counter_addr[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \counter_addr[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter_addr[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \counter_addr[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \counter_addr[6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \counter_addr[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \counter_addr[9]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \counter_addr_emis[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \counter_addr_emis[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter_addr_emis[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \counter_addr_emis[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \counter_addr_emis[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \counter_addr_emis[8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \counter_addr_emis[9]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \counter_oct[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter_oct[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter_oct_emis[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \counter_oct_emis[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter_oct_emis[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of intRSMATIP_i_3 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of intRSMATIP_i_4 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of intRSMATIP_i_5 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of intTRNSMTP_i_2 : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of intTSOCOLP_reg : label is "LDP";
  attribute SOFT_HLUTNM of intTSOCOLP_reg_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of lastdata_i_4 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of lastdata_i_5 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of lastdata_i_8 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of lastdata_i_9 : label is "soft_lutpair11";
begin
CLK10I_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK10I_IBUF,
      O => CLK10I_IBUF_BUFG
    );
CLK10I_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK10I,
      O => CLK10I_IBUF
    );
\NOADDRI_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(0),
      O => NOADDRI_IBUF(0)
    );
\NOADDRI_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(10),
      O => NOADDRI_IBUF(10)
    );
\NOADDRI_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(11),
      O => NOADDRI_IBUF(11)
    );
\NOADDRI_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(12),
      O => NOADDRI_IBUF(12)
    );
\NOADDRI_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(13),
      O => NOADDRI_IBUF(13)
    );
\NOADDRI_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(14),
      O => NOADDRI_IBUF(14)
    );
\NOADDRI_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(15),
      O => NOADDRI_IBUF(15)
    );
\NOADDRI_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(16),
      O => NOADDRI_IBUF(16)
    );
\NOADDRI_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(17),
      O => NOADDRI_IBUF(17)
    );
\NOADDRI_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(18),
      O => NOADDRI_IBUF(18)
    );
\NOADDRI_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(19),
      O => NOADDRI_IBUF(19)
    );
\NOADDRI_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(1),
      O => NOADDRI_IBUF(1)
    );
\NOADDRI_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(20),
      O => NOADDRI_IBUF(20)
    );
\NOADDRI_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(21),
      O => NOADDRI_IBUF(21)
    );
\NOADDRI_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(22),
      O => NOADDRI_IBUF(22)
    );
\NOADDRI_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(23),
      O => NOADDRI_IBUF(23)
    );
\NOADDRI_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(24),
      O => NOADDRI_IBUF(24)
    );
\NOADDRI_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(25),
      O => NOADDRI_IBUF(25)
    );
\NOADDRI_IBUF[26]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(26),
      O => NOADDRI_IBUF(26)
    );
\NOADDRI_IBUF[27]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(27),
      O => NOADDRI_IBUF(27)
    );
\NOADDRI_IBUF[28]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(28),
      O => NOADDRI_IBUF(28)
    );
\NOADDRI_IBUF[29]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(29),
      O => NOADDRI_IBUF(29)
    );
\NOADDRI_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(2),
      O => NOADDRI_IBUF(2)
    );
\NOADDRI_IBUF[30]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(30),
      O => NOADDRI_IBUF(30)
    );
\NOADDRI_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(31),
      O => NOADDRI_IBUF(31)
    );
\NOADDRI_IBUF[32]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(32),
      O => NOADDRI_IBUF(32)
    );
\NOADDRI_IBUF[33]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(33),
      O => NOADDRI_IBUF(33)
    );
\NOADDRI_IBUF[34]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(34),
      O => NOADDRI_IBUF(34)
    );
\NOADDRI_IBUF[35]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(35),
      O => NOADDRI_IBUF(35)
    );
\NOADDRI_IBUF[36]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(36),
      O => NOADDRI_IBUF(36)
    );
\NOADDRI_IBUF[37]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(37),
      O => NOADDRI_IBUF(37)
    );
\NOADDRI_IBUF[38]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(38),
      O => NOADDRI_IBUF(38)
    );
\NOADDRI_IBUF[39]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(39),
      O => NOADDRI_IBUF(39)
    );
\NOADDRI_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(3),
      O => NOADDRI_IBUF(3)
    );
\NOADDRI_IBUF[40]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(40),
      O => NOADDRI_IBUF(40)
    );
\NOADDRI_IBUF[41]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(41),
      O => NOADDRI_IBUF(41)
    );
\NOADDRI_IBUF[42]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(42),
      O => NOADDRI_IBUF(42)
    );
\NOADDRI_IBUF[43]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(43),
      O => NOADDRI_IBUF(43)
    );
\NOADDRI_IBUF[44]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(44),
      O => NOADDRI_IBUF(44)
    );
\NOADDRI_IBUF[45]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(45),
      O => NOADDRI_IBUF(45)
    );
\NOADDRI_IBUF[46]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(46),
      O => NOADDRI_IBUF(46)
    );
\NOADDRI_IBUF[47]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(47),
      O => NOADDRI_IBUF(47)
    );
\NOADDRI_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(4),
      O => NOADDRI_IBUF(4)
    );
\NOADDRI_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(5),
      O => NOADDRI_IBUF(5)
    );
\NOADDRI_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(6),
      O => NOADDRI_IBUF(6)
    );
\NOADDRI_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(7),
      O => NOADDRI_IBUF(7)
    );
\NOADDRI_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(8),
      O => NOADDRI_IBUF(8)
    );
\NOADDRI_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => NOADDRI(9),
      O => NOADDRI_IBUF(9)
    );
RBYTEP_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => RBYTEP_OBUF,
      O => RBYTEP
    );
RBYTEP_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDFFFFF"
    )
        port map (
      I0 => RBYTEP163_out,
      I1 => RBYTEP2,
      I2 => RESETN_IBUF,
      I3 => RSTARTP0,
      I4 => RENABP_IBUF,
      O => RBYTEP_i_1_n_0
    );
RBYTEP_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => RDATAI_IBUF(6),
      I1 => RDATAI_IBUF(4),
      I2 => RDATAI_IBUF(0),
      I3 => RDATAI_IBUF(1),
      I4 => RBYTEP_i_5_n_0,
      O => neqOp
    );
RBYTEP_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \counter_oct_reg_n_0_[1]\,
      I1 => \counter_oct_reg_n_0_[0]\,
      I2 => RCVNGP_OBUF,
      I3 => \counter_oct_reg_n_0_[2]\,
      O => RBYTEP163_out
    );
RBYTEP_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \counter_addr_reg__0\(9),
      I1 => \counter_addr_reg__0\(10),
      I2 => \counter_addr_reg__0\(7),
      I3 => \counter_addr_reg__0\(8),
      I4 => RBYTEP_i_6_n_0,
      O => RBYTEP2
    );
RBYTEP_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => RDATAI_IBUF(7),
      I1 => RDATAI_IBUF(5),
      I2 => RDATAI_IBUF(3),
      I3 => RDATAI_IBUF(2),
      O => RBYTEP_i_5_n_0
    );
RBYTEP_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => \counter_addr_reg__0\(2),
      I1 => \counter_addr_reg__0\(1),
      I2 => \counter_addr_reg__0\(4),
      I3 => \counter_addr_reg__0\(3),
      I4 => \counter_addr_reg__0\(6),
      I5 => \counter_addr_reg__0\(5),
      O => RBYTEP_i_6_n_0
    );
RBYTEP_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => '1',
      D => neqOp,
      Q => RBYTEP_OBUF,
      R => RBYTEP_i_1_n_0
    );
RCLEANP_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => RCLEANP_OBUF,
      O => RCLEANP
    );
RCLEANP_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => RCLEANP_i_3_n_0,
      I1 => \counter_oct_reg_n_0_[2]\,
      I2 => RCVNGP_OBUF,
      I3 => \counter_oct_reg_n_0_[0]\,
      I4 => \counter_oct_reg_n_0_[1]\,
      O => RCLEANP_i_1_n_0
    );
RCLEANP_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF053FFFFFF53"
    )
        port map (
      I0 => NOADDRI_IBUF(24),
      I1 => NOADDRI_IBUF(40),
      I2 => \counter_addr_reg__0\(1),
      I3 => \counter_addr_reg__0\(2),
      I4 => \counter_addr_reg__0\(0),
      I5 => NOADDRI_IBUF(8),
      O => RCLEANP_i_10_n_0
    );
RCLEANP_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F053FFFFFF53FFFF"
    )
        port map (
      I0 => NOADDRI_IBUF(16),
      I1 => NOADDRI_IBUF(32),
      I2 => \counter_addr_reg__0\(1),
      I3 => \counter_addr_reg__0\(2),
      I4 => \counter_addr_reg__0\(0),
      I5 => NOADDRI_IBUF(0),
      O => RCLEANP_i_11_n_0
    );
RCLEANP_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF053FFFFFF53"
    )
        port map (
      I0 => NOADDRI_IBUF(31),
      I1 => NOADDRI_IBUF(47),
      I2 => \counter_addr_reg__0\(1),
      I3 => \counter_addr_reg__0\(2),
      I4 => \counter_addr_reg__0\(0),
      I5 => NOADDRI_IBUF(15),
      O => RCLEANP_i_12_n_0
    );
RCLEANP_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F053FFFFFF53FFFF"
    )
        port map (
      I0 => NOADDRI_IBUF(23),
      I1 => NOADDRI_IBUF(39),
      I2 => \counter_addr_reg__0\(1),
      I3 => \counter_addr_reg__0\(2),
      I4 => \counter_addr_reg__0\(0),
      I5 => NOADDRI_IBUF(7),
      O => RCLEANP_i_13_n_0
    );
RCLEANP_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF053FFFFFF53"
    )
        port map (
      I0 => NOADDRI_IBUF(30),
      I1 => NOADDRI_IBUF(46),
      I2 => \counter_addr_reg__0\(1),
      I3 => \counter_addr_reg__0\(2),
      I4 => \counter_addr_reg__0\(0),
      I5 => NOADDRI_IBUF(14),
      O => RCLEANP_i_14_n_0
    );
RCLEANP_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F053FFFFFF53FFFF"
    )
        port map (
      I0 => NOADDRI_IBUF(22),
      I1 => NOADDRI_IBUF(38),
      I2 => \counter_addr_reg__0\(1),
      I3 => \counter_addr_reg__0\(2),
      I4 => \counter_addr_reg__0\(0),
      I5 => NOADDRI_IBUF(6),
      O => RCLEANP_i_15_n_0
    );
RCLEANP_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF053FFFFFF53"
    )
        port map (
      I0 => NOADDRI_IBUF(29),
      I1 => NOADDRI_IBUF(45),
      I2 => \counter_addr_reg__0\(1),
      I3 => \counter_addr_reg__0\(2),
      I4 => \counter_addr_reg__0\(0),
      I5 => NOADDRI_IBUF(13),
      O => RCLEANP_i_16_n_0
    );
RCLEANP_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F053FFFFFF53FFFF"
    )
        port map (
      I0 => NOADDRI_IBUF(21),
      I1 => NOADDRI_IBUF(37),
      I2 => \counter_addr_reg__0\(1),
      I3 => \counter_addr_reg__0\(2),
      I4 => \counter_addr_reg__0\(0),
      I5 => NOADDRI_IBUF(5),
      O => RCLEANP_i_17_n_0
    );
RCLEANP_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF053FFFFFF53"
    )
        port map (
      I0 => NOADDRI_IBUF(28),
      I1 => NOADDRI_IBUF(44),
      I2 => \counter_addr_reg__0\(1),
      I3 => \counter_addr_reg__0\(2),
      I4 => \counter_addr_reg__0\(0),
      I5 => NOADDRI_IBUF(12),
      O => RCLEANP_i_18_n_0
    );
RCLEANP_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F053FFFFFF53FFFF"
    )
        port map (
      I0 => NOADDRI_IBUF(20),
      I1 => NOADDRI_IBUF(36),
      I2 => \counter_addr_reg__0\(1),
      I3 => \counter_addr_reg__0\(2),
      I4 => \counter_addr_reg__0\(0),
      I5 => NOADDRI_IBUF(4),
      O => RCLEANP_i_19_n_0
    );
RCLEANP_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => RBYTEP2,
      I1 => RCLEANP_i_4_n_0,
      I2 => RCLEANP_i_5_n_0,
      I3 => RCLEANP_i_6_n_0,
      I4 => RCLEANP_i_7_n_0,
      O => RBYTEP1
    );
RCLEANP_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF053FFFFFF53"
    )
        port map (
      I0 => NOADDRI_IBUF(27),
      I1 => NOADDRI_IBUF(43),
      I2 => \counter_addr_reg__0\(1),
      I3 => \counter_addr_reg__0\(2),
      I4 => \counter_addr_reg__0\(0),
      I5 => NOADDRI_IBUF(11),
      O => RCLEANP_i_20_n_0
    );
RCLEANP_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F053FFFFFF53FFFF"
    )
        port map (
      I0 => NOADDRI_IBUF(19),
      I1 => NOADDRI_IBUF(35),
      I2 => \counter_addr_reg__0\(1),
      I3 => \counter_addr_reg__0\(2),
      I4 => \counter_addr_reg__0\(0),
      I5 => NOADDRI_IBUF(3),
      O => RCLEANP_i_21_n_0
    );
RCLEANP_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF053FFFFFF53"
    )
        port map (
      I0 => NOADDRI_IBUF(26),
      I1 => NOADDRI_IBUF(42),
      I2 => \counter_addr_reg__0\(1),
      I3 => \counter_addr_reg__0\(2),
      I4 => \counter_addr_reg__0\(0),
      I5 => NOADDRI_IBUF(10),
      O => RCLEANP_i_22_n_0
    );
RCLEANP_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F053FFFFFF53FFFF"
    )
        port map (
      I0 => NOADDRI_IBUF(18),
      I1 => NOADDRI_IBUF(34),
      I2 => \counter_addr_reg__0\(1),
      I3 => \counter_addr_reg__0\(2),
      I4 => \counter_addr_reg__0\(0),
      I5 => NOADDRI_IBUF(2),
      O => RCLEANP_i_23_n_0
    );
RCLEANP_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => RENABP_IBUF,
      I1 => RSTARTP0,
      I2 => RESETN_IBUF,
      O => RCLEANP_i_3_n_0
    );
RCLEANP_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF87878787FFFFFF"
    )
        port map (
      I0 => RCLEANP_i_8_n_0,
      I1 => RCLEANP_i_9_n_0,
      I2 => RDATAI_IBUF(1),
      I3 => RCLEANP_i_10_n_0,
      I4 => RCLEANP_i_11_n_0,
      I5 => RDATAI_IBUF(0),
      O => RCLEANP_i_4_n_0
    );
RCLEANP_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF87878787FFFFFF"
    )
        port map (
      I0 => RCLEANP_i_12_n_0,
      I1 => RCLEANP_i_13_n_0,
      I2 => RDATAI_IBUF(7),
      I3 => RCLEANP_i_14_n_0,
      I4 => RCLEANP_i_15_n_0,
      I5 => RDATAI_IBUF(6),
      O => RCLEANP_i_5_n_0
    );
RCLEANP_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF87878787FFFFFF"
    )
        port map (
      I0 => RCLEANP_i_16_n_0,
      I1 => RCLEANP_i_17_n_0,
      I2 => RDATAI_IBUF(5),
      I3 => RCLEANP_i_18_n_0,
      I4 => RCLEANP_i_19_n_0,
      I5 => RDATAI_IBUF(4),
      O => RCLEANP_i_6_n_0
    );
RCLEANP_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF87878787FFFFFF"
    )
        port map (
      I0 => RCLEANP_i_20_n_0,
      I1 => RCLEANP_i_21_n_0,
      I2 => RDATAI_IBUF(3),
      I3 => RCLEANP_i_22_n_0,
      I4 => RCLEANP_i_23_n_0,
      I5 => RDATAI_IBUF(2),
      O => RCLEANP_i_7_n_0
    );
RCLEANP_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF053FFFFFF53"
    )
        port map (
      I0 => NOADDRI_IBUF(25),
      I1 => NOADDRI_IBUF(41),
      I2 => \counter_addr_reg__0\(1),
      I3 => \counter_addr_reg__0\(2),
      I4 => \counter_addr_reg__0\(0),
      I5 => NOADDRI_IBUF(9),
      O => RCLEANP_i_8_n_0
    );
RCLEANP_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F053FFFFFF53FFFF"
    )
        port map (
      I0 => NOADDRI_IBUF(17),
      I1 => NOADDRI_IBUF(33),
      I2 => \counter_addr_reg__0\(1),
      I3 => \counter_addr_reg__0\(2),
      I4 => \counter_addr_reg__0\(0),
      I5 => NOADDRI_IBUF(1),
      O => RCLEANP_i_9_n_0
    );
RCLEANP_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => '1',
      D => RBYTEP1,
      Q => RCLEANP_OBUF,
      R => RCLEANP_i_1_n_0
    );
RCVNGP_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => RCVNGP_OBUF,
      O => RCVNGP
    );
\RDATAI_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => RDATAI(0),
      O => RDATAI_IBUF(0)
    );
\RDATAI_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => RDATAI(1),
      O => RDATAI_IBUF(1)
    );
\RDATAI_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => RDATAI(2),
      O => RDATAI_IBUF(2)
    );
\RDATAI_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => RDATAI(3),
      O => RDATAI_IBUF(3)
    );
\RDATAI_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => RDATAI(4),
      O => RDATAI_IBUF(4)
    );
\RDATAI_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => RDATAI(5),
      O => RDATAI_IBUF(5)
    );
\RDATAI_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => RDATAI(6),
      O => RDATAI_IBUF(6)
    );
\RDATAI_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => RDATAI(7),
      O => RDATAI_IBUF(7)
    );
\RDATAO[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => RBYTEP163_out,
      I1 => RBYTEP2,
      I2 => RENABP_IBUF,
      I3 => RSTARTP0,
      I4 => RESETN_IBUF,
      I5 => neqOp,
      O => \RDATAO[7]_i_1_n_0\
    );
\RDATAO_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RDATAO_OBUF(0),
      O => RDATAO(0)
    );
\RDATAO_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RDATAO_OBUF(1),
      O => RDATAO(1)
    );
\RDATAO_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RDATAO_OBUF(2),
      O => RDATAO(2)
    );
\RDATAO_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RDATAO_OBUF(3),
      O => RDATAO(3)
    );
\RDATAO_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RDATAO_OBUF(4),
      O => RDATAO(4)
    );
\RDATAO_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RDATAO_OBUF(5),
      O => RDATAO(5)
    );
\RDATAO_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RDATAO_OBUF(6),
      O => RDATAO(6)
    );
\RDATAO_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RDATAO_OBUF(7),
      O => RDATAO(7)
    );
\RDATAO_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => \RDATAO[7]_i_1_n_0\,
      D => RDATAI_IBUF(0),
      Q => RDATAO_OBUF(0),
      R => '0'
    );
\RDATAO_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => \RDATAO[7]_i_1_n_0\,
      D => RDATAI_IBUF(1),
      Q => RDATAO_OBUF(1),
      R => '0'
    );
\RDATAO_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => \RDATAO[7]_i_1_n_0\,
      D => RDATAI_IBUF(2),
      Q => RDATAO_OBUF(2),
      R => '0'
    );
\RDATAO_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => \RDATAO[7]_i_1_n_0\,
      D => RDATAI_IBUF(3),
      Q => RDATAO_OBUF(3),
      R => '0'
    );
\RDATAO_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => \RDATAO[7]_i_1_n_0\,
      D => RDATAI_IBUF(4),
      Q => RDATAO_OBUF(4),
      R => '0'
    );
\RDATAO_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => \RDATAO[7]_i_1_n_0\,
      D => RDATAI_IBUF(5),
      Q => RDATAO_OBUF(5),
      R => '0'
    );
\RDATAO_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => \RDATAO[7]_i_1_n_0\,
      D => RDATAI_IBUF(6),
      Q => RDATAO_OBUF(6),
      R => '0'
    );
\RDATAO_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => \RDATAO[7]_i_1_n_0\,
      D => RDATAI_IBUF(7),
      Q => RDATAO_OBUF(7),
      R => '0'
    );
RDONEP_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => RDONEP_OBUF,
      O => RDONEP
    );
RDONEP_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEE0000FFFFFFFF"
    )
        port map (
      I0 => RDONEP_i_3_n_0,
      I1 => RSTARTP0,
      I2 => RBYTEP163_out,
      I3 => RBYTEP1,
      I4 => RENABP_IBUF,
      I5 => RESETN_IBUF,
      O => RDONEP_i_1_n_0
    );
RDONEP_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => RBYTEP2,
      I1 => \counter_oct_reg_n_0_[2]\,
      I2 => RCVNGP_OBUF,
      I3 => \counter_oct_reg_n_0_[0]\,
      I4 => \counter_oct_reg_n_0_[1]\,
      I5 => RENABP_IBUF,
      O => RDONEP_i_2_n_0
    );
RDONEP_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => neqOp,
      I1 => \counter_oct_reg_n_0_[1]\,
      I2 => \counter_oct_reg_n_0_[0]\,
      I3 => RCVNGP_OBUF,
      I4 => \counter_oct_reg_n_0_[2]\,
      I5 => RBYTEP2,
      O => RDONEP_i_3_n_0
    );
RDONEP_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => '1',
      D => RDONEP_i_2_n_0,
      Q => RDONEP_OBUF,
      R => RDONEP_i_1_n_0
    );
RENABP_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RENABP,
      O => RENABP_IBUF
    );
RESETN_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RESETN,
      O => RESETN_IBUF
    );
RSMATIP_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => RSMATIP_OBUF,
      O => RSMATIP
    );
RSTARTP_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => RSTARTP_OBUF,
      O => RSTARTP
    );
RSTARTP_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => RESETN_IBUF,
      I1 => RENABP_IBUF,
      O => RSTARTP_i_1_n_0
    );
RSTARTP_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => RSTARTP_i_3_n_0,
      I1 => RDATAI_IBUF(0),
      I2 => RDATAI_IBUF(1),
      I3 => RDATAI_IBUF(2),
      O => RSTARTP0
    );
RSTARTP_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => RDATAI_IBUF(3),
      I1 => RDATAI_IBUF(4),
      I2 => RDATAI_IBUF(5),
      I3 => RDATAI_IBUF(6),
      I4 => RCVNGP_OBUF,
      I5 => RDATAI_IBUF(7),
      O => RSTARTP_i_3_n_0
    );
RSTARTP_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => '1',
      D => RSTARTP0,
      Q => RSTARTP_OBUF,
      R => RSTARTP_i_1_n_0
    );
TABORTP_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => TABORTP,
      O => TABORTP_IBUF
    );
TAVAILP_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => TAVAILP,
      O => TAVAILP_IBUF
    );
\TDATAI_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => TDATAI(0),
      O => TDATAI_IBUF(0)
    );
\TDATAI_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => TDATAI(1),
      O => TDATAI_IBUF(1)
    );
\TDATAI_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => TDATAI(2),
      O => TDATAI_IBUF(2)
    );
\TDATAI_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => TDATAI(3),
      O => TDATAI_IBUF(3)
    );
\TDATAI_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => TDATAI(4),
      O => TDATAI_IBUF(4)
    );
\TDATAI_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => TDATAI(5),
      O => TDATAI_IBUF(5)
    );
\TDATAI_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => TDATAI(6),
      O => TDATAI_IBUF(6)
    );
\TDATAI_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => TDATAI(7),
      O => TDATAI_IBUF(7)
    );
\TDATAO[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444400040"
    )
        port map (
      I0 => TDONEP1,
      I1 => RESETN_IBUF,
      I2 => \TDATAO[0]_i_2_n_0\,
      I3 => lastdata_i_2_n_0,
      I4 => TDATAI_IBUF(0),
      I5 => \TDATAO[0]_i_3_n_0\,
      O => \TDATAO[0]_i_1_n_0\
    );
\TDATAO[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF10101010"
    )
        port map (
      I0 => TLASTP_IBUF,
      I1 => lastdata_emis_reg_n_0,
      I2 => TDATAI_IBUF(0),
      I3 => \TDATAO[0]_i_4_n_0\,
      I4 => \TDATAO[0]_i_5_n_0\,
      I5 => lastdata_i_7_n_0,
      O => \TDATAO[0]_i_2_n_0\
    );
\TDATAO[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \TDATAO[0]_i_6_n_0\,
      I1 => \TDATAO[0]_i_7_n_0\,
      I2 => \counter_addr_emis_reg__0\(0),
      I3 => \counter_addr_emis_reg__0\(1),
      I4 => \counter_addr_emis_reg__0\(2),
      O => \TDATAO[0]_i_3_n_0\
    );
\TDATAO[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F35FFFFFF35FFFF"
    )
        port map (
      I0 => NOADDRI_IBUF(16),
      I1 => NOADDRI_IBUF(32),
      I2 => \counter_addr_emis_reg__0\(1),
      I3 => \counter_addr_emis_reg__0\(2),
      I4 => \counter_addr_emis_reg__0\(0),
      I5 => NOADDRI_IBUF(0),
      O => \TDATAO[0]_i_4_n_0\
    );
\TDATAO[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF350FFFFF35F"
    )
        port map (
      I0 => NOADDRI_IBUF(24),
      I1 => NOADDRI_IBUF(40),
      I2 => \counter_addr_emis_reg__0\(1),
      I3 => \counter_addr_emis_reg__0\(2),
      I4 => \counter_addr_emis_reg__0\(0),
      I5 => NOADDRI_IBUF(8),
      O => \TDATAO[0]_i_5_n_0\
    );
\TDATAO[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \counter_addr_emis_reg__0\(6),
      I1 => \counter_addr_emis_reg__0\(5),
      I2 => \counter_addr_emis_reg__0\(4),
      I3 => \counter_addr_emis_reg__0\(3),
      O => \TDATAO[0]_i_6_n_0\
    );
\TDATAO[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \counter_addr_emis_reg__0\(10),
      I1 => \counter_addr_emis_reg__0\(9),
      I2 => \counter_addr_emis_reg__0\(8),
      I3 => \counter_addr_emis_reg__0\(7),
      O => \TDATAO[0]_i_7_n_0\
    );
\TDATAO[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
        port map (
      I0 => lastdata_i_3_n_0,
      I1 => TDATAI_IBUF(1),
      I2 => lastdata_i_2_n_0,
      I3 => \TDATAO[1]_i_2_n_0\,
      O => \TDATAO[1]_i_1_n_0\
    );
\TDATAO[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF10101010"
    )
        port map (
      I0 => TLASTP_IBUF,
      I1 => lastdata_emis_reg_n_0,
      I2 => TDATAI_IBUF(1),
      I3 => \TDATAO[1]_i_3_n_0\,
      I4 => \TDATAO[1]_i_4_n_0\,
      I5 => lastdata_i_7_n_0,
      O => \TDATAO[1]_i_2_n_0\
    );
\TDATAO[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F35FFFFFF35FFFF"
    )
        port map (
      I0 => NOADDRI_IBUF(17),
      I1 => NOADDRI_IBUF(33),
      I2 => \counter_addr_emis_reg__0\(1),
      I3 => \counter_addr_emis_reg__0\(2),
      I4 => \counter_addr_emis_reg__0\(0),
      I5 => NOADDRI_IBUF(1),
      O => \TDATAO[1]_i_3_n_0\
    );
\TDATAO[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF350FFFFF35F"
    )
        port map (
      I0 => NOADDRI_IBUF(25),
      I1 => NOADDRI_IBUF(41),
      I2 => \counter_addr_emis_reg__0\(1),
      I3 => \counter_addr_emis_reg__0\(2),
      I4 => \counter_addr_emis_reg__0\(0),
      I5 => NOADDRI_IBUF(9),
      O => \TDATAO[1]_i_4_n_0\
    );
\TDATAO[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => TDATAI_IBUF(2),
      I1 => \TDATAO[2]_i_2_n_0\,
      I2 => lastdata_i_3_n_0,
      I3 => RESETN_IBUF,
      I4 => lastdata_i_2_n_0,
      O => \TDATAO[2]_i_1_n_0\
    );
\TDATAO[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777FFFF7777FFF0"
    )
        port map (
      I0 => \TDATAO[2]_i_3_n_0\,
      I1 => \TDATAO[2]_i_4_n_0\,
      I2 => lastdata_emis_reg_n_0,
      I3 => TLASTP_IBUF,
      I4 => lastdata_i_7_n_0,
      I5 => TDATAI_IBUF(2),
      O => \TDATAO[2]_i_2_n_0\
    );
\TDATAO[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F35FFFFFF35FFFF"
    )
        port map (
      I0 => NOADDRI_IBUF(18),
      I1 => NOADDRI_IBUF(34),
      I2 => \counter_addr_emis_reg__0\(1),
      I3 => \counter_addr_emis_reg__0\(2),
      I4 => \counter_addr_emis_reg__0\(0),
      I5 => NOADDRI_IBUF(2),
      O => \TDATAO[2]_i_3_n_0\
    );
\TDATAO[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF350FFFFF35F"
    )
        port map (
      I0 => NOADDRI_IBUF(26),
      I1 => NOADDRI_IBUF(42),
      I2 => \counter_addr_emis_reg__0\(1),
      I3 => \counter_addr_emis_reg__0\(2),
      I4 => \counter_addr_emis_reg__0\(0),
      I5 => NOADDRI_IBUF(10),
      O => \TDATAO[2]_i_4_n_0\
    );
\TDATAO[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
        port map (
      I0 => lastdata_i_3_n_0,
      I1 => TDATAI_IBUF(3),
      I2 => lastdata_i_2_n_0,
      I3 => \TDATAO[3]_i_2_n_0\,
      O => \TDATAO[3]_i_1_n_0\
    );
\TDATAO[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777FFFF7777FFF0"
    )
        port map (
      I0 => \TDATAO[3]_i_3_n_0\,
      I1 => \TDATAO[3]_i_4_n_0\,
      I2 => lastdata_emis_reg_n_0,
      I3 => TLASTP_IBUF,
      I4 => lastdata_i_7_n_0,
      I5 => TDATAI_IBUF(3),
      O => \TDATAO[3]_i_2_n_0\
    );
\TDATAO[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F35FFFFFF35FFFF"
    )
        port map (
      I0 => NOADDRI_IBUF(19),
      I1 => NOADDRI_IBUF(35),
      I2 => \counter_addr_emis_reg__0\(1),
      I3 => \counter_addr_emis_reg__0\(2),
      I4 => \counter_addr_emis_reg__0\(0),
      I5 => NOADDRI_IBUF(3),
      O => \TDATAO[3]_i_3_n_0\
    );
\TDATAO[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF350FFFFF35F"
    )
        port map (
      I0 => NOADDRI_IBUF(27),
      I1 => NOADDRI_IBUF(43),
      I2 => \counter_addr_emis_reg__0\(1),
      I3 => \counter_addr_emis_reg__0\(2),
      I4 => \counter_addr_emis_reg__0\(0),
      I5 => NOADDRI_IBUF(11),
      O => \TDATAO[3]_i_4_n_0\
    );
\TDATAO[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => TDATAI_IBUF(4),
      I1 => \TDATAO[4]_i_2_n_0\,
      I2 => lastdata_i_3_n_0,
      I3 => RESETN_IBUF,
      I4 => lastdata_i_2_n_0,
      O => \TDATAO[4]_i_1_n_0\
    );
\TDATAO[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF10101010"
    )
        port map (
      I0 => TLASTP_IBUF,
      I1 => lastdata_emis_reg_n_0,
      I2 => TDATAI_IBUF(4),
      I3 => \TDATAO[4]_i_3_n_0\,
      I4 => \TDATAO[4]_i_4_n_0\,
      I5 => lastdata_i_7_n_0,
      O => \TDATAO[4]_i_2_n_0\
    );
\TDATAO[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F35FFFFFF35FFFF"
    )
        port map (
      I0 => NOADDRI_IBUF(20),
      I1 => NOADDRI_IBUF(36),
      I2 => \counter_addr_emis_reg__0\(1),
      I3 => \counter_addr_emis_reg__0\(2),
      I4 => \counter_addr_emis_reg__0\(0),
      I5 => NOADDRI_IBUF(4),
      O => \TDATAO[4]_i_3_n_0\
    );
\TDATAO[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF350FFFFF35F"
    )
        port map (
      I0 => NOADDRI_IBUF(28),
      I1 => NOADDRI_IBUF(44),
      I2 => \counter_addr_emis_reg__0\(1),
      I3 => \counter_addr_emis_reg__0\(2),
      I4 => \counter_addr_emis_reg__0\(0),
      I5 => NOADDRI_IBUF(12),
      O => \TDATAO[4]_i_4_n_0\
    );
\TDATAO[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
        port map (
      I0 => lastdata_i_3_n_0,
      I1 => TDATAI_IBUF(5),
      I2 => lastdata_i_2_n_0,
      I3 => \TDATAO[5]_i_2_n_0\,
      O => \TDATAO[5]_i_1_n_0\
    );
\TDATAO[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777FFFF7777FFF0"
    )
        port map (
      I0 => \TDATAO[5]_i_3_n_0\,
      I1 => \TDATAO[5]_i_4_n_0\,
      I2 => lastdata_emis_reg_n_0,
      I3 => TLASTP_IBUF,
      I4 => lastdata_i_7_n_0,
      I5 => TDATAI_IBUF(5),
      O => \TDATAO[5]_i_2_n_0\
    );
\TDATAO[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F35FFFFFF35FFFF"
    )
        port map (
      I0 => NOADDRI_IBUF(21),
      I1 => NOADDRI_IBUF(37),
      I2 => \counter_addr_emis_reg__0\(1),
      I3 => \counter_addr_emis_reg__0\(2),
      I4 => \counter_addr_emis_reg__0\(0),
      I5 => NOADDRI_IBUF(5),
      O => \TDATAO[5]_i_3_n_0\
    );
\TDATAO[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF350FFFFF35F"
    )
        port map (
      I0 => NOADDRI_IBUF(29),
      I1 => NOADDRI_IBUF(45),
      I2 => \counter_addr_emis_reg__0\(1),
      I3 => \counter_addr_emis_reg__0\(2),
      I4 => \counter_addr_emis_reg__0\(0),
      I5 => NOADDRI_IBUF(13),
      O => \TDATAO[5]_i_4_n_0\
    );
\TDATAO[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F000000FFFFFFFF"
    )
        port map (
      I0 => TDONEP1,
      I1 => \counter_abort_reg_n_0_[0]\,
      I2 => \counter_abort_reg_n_0_[1]\,
      I3 => counter_oct_emis(2),
      I4 => \TDATAO[6]_i_4_n_0\,
      I5 => RESETN_IBUF,
      O => \TDATAO[6]_i_1_n_0\
    );
\TDATAO[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => TDATAI_IBUF(6),
      I1 => \TDATAO[6]_i_5_n_0\,
      I2 => lastdata_i_3_n_0,
      I3 => RESETN_IBUF,
      I4 => lastdata_i_2_n_0,
      O => \TDATAO[6]_i_2_n_0\
    );
\TDATAO[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => aborting_reg_n_0,
      I1 => TSOCOLP_OBUF,
      O => TDONEP1
    );
\TDATAO[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => TAVAILP_IBUF,
      I1 => counter_oct_emis(1),
      I2 => counter_oct_emis(0),
      O => \TDATAO[6]_i_4_n_0\
    );
\TDATAO[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF10101010"
    )
        port map (
      I0 => TLASTP_IBUF,
      I1 => lastdata_emis_reg_n_0,
      I2 => TDATAI_IBUF(6),
      I3 => \TDATAO[6]_i_6_n_0\,
      I4 => \TDATAO[6]_i_7_n_0\,
      I5 => lastdata_i_7_n_0,
      O => \TDATAO[6]_i_5_n_0\
    );
\TDATAO[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F35FFFFFF35FFFF"
    )
        port map (
      I0 => NOADDRI_IBUF(22),
      I1 => NOADDRI_IBUF(38),
      I2 => \counter_addr_emis_reg__0\(1),
      I3 => \counter_addr_emis_reg__0\(2),
      I4 => \counter_addr_emis_reg__0\(0),
      I5 => NOADDRI_IBUF(6),
      O => \TDATAO[6]_i_6_n_0\
    );
\TDATAO[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF350FFFFF35F"
    )
        port map (
      I0 => NOADDRI_IBUF(30),
      I1 => NOADDRI_IBUF(46),
      I2 => \counter_addr_emis_reg__0\(1),
      I3 => \counter_addr_emis_reg__0\(2),
      I4 => \counter_addr_emis_reg__0\(0),
      I5 => NOADDRI_IBUF(14),
      O => \TDATAO[6]_i_7_n_0\
    );
\TDATAO[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
        port map (
      I0 => lastdata_i_3_n_0,
      I1 => TDATAI_IBUF(7),
      I2 => lastdata_i_2_n_0,
      I3 => \TDATAO[7]_i_2_n_0\,
      O => \TDATAO[7]_i_1_n_0\
    );
\TDATAO[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777FFFF7777FFF0"
    )
        port map (
      I0 => \TDATAO[7]_i_3_n_0\,
      I1 => \TDATAO[7]_i_4_n_0\,
      I2 => lastdata_emis_reg_n_0,
      I3 => TLASTP_IBUF,
      I4 => lastdata_i_7_n_0,
      I5 => TDATAI_IBUF(7),
      O => \TDATAO[7]_i_2_n_0\
    );
\TDATAO[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F35FFFFFF35FFFF"
    )
        port map (
      I0 => NOADDRI_IBUF(23),
      I1 => NOADDRI_IBUF(39),
      I2 => \counter_addr_emis_reg__0\(1),
      I3 => \counter_addr_emis_reg__0\(2),
      I4 => \counter_addr_emis_reg__0\(0),
      I5 => NOADDRI_IBUF(7),
      O => \TDATAO[7]_i_3_n_0\
    );
\TDATAO[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF350FFFFF35F"
    )
        port map (
      I0 => NOADDRI_IBUF(31),
      I1 => NOADDRI_IBUF(47),
      I2 => \counter_addr_emis_reg__0\(1),
      I3 => \counter_addr_emis_reg__0\(2),
      I4 => \counter_addr_emis_reg__0\(0),
      I5 => NOADDRI_IBUF(15),
      O => \TDATAO[7]_i_4_n_0\
    );
\TDATAO_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => TDATAO_OBUF(0),
      O => TDATAO(0)
    );
\TDATAO_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => TDATAO_OBUF(1),
      O => TDATAO(1)
    );
\TDATAO_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => TDATAO_OBUF(2),
      O => TDATAO(2)
    );
\TDATAO_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => TDATAO_OBUF(3),
      O => TDATAO(3)
    );
\TDATAO_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => TDATAO_OBUF(4),
      O => TDATAO(4)
    );
\TDATAO_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => TDATAO_OBUF(5),
      O => TDATAO(5)
    );
\TDATAO_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => TDATAO_OBUF(6),
      O => TDATAO(6)
    );
\TDATAO_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => TDATAO_OBUF(7),
      O => TDATAO(7)
    );
\TDATAO_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => \TDATAO[6]_i_1_n_0\,
      D => \TDATAO[0]_i_1_n_0\,
      Q => TDATAO_OBUF(0),
      R => '0'
    );
\TDATAO_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => \TDATAO[6]_i_1_n_0\,
      D => \TDATAO[1]_i_1_n_0\,
      Q => TDATAO_OBUF(1),
      R => intRSMATIP_i_1_n_0
    );
\TDATAO_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => \TDATAO[6]_i_1_n_0\,
      D => \TDATAO[2]_i_1_n_0\,
      Q => TDATAO_OBUF(2),
      R => '0'
    );
\TDATAO_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => \TDATAO[6]_i_1_n_0\,
      D => \TDATAO[3]_i_1_n_0\,
      Q => TDATAO_OBUF(3),
      R => intRSMATIP_i_1_n_0
    );
\TDATAO_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => \TDATAO[6]_i_1_n_0\,
      D => \TDATAO[4]_i_1_n_0\,
      Q => TDATAO_OBUF(4),
      R => '0'
    );
\TDATAO_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => \TDATAO[6]_i_1_n_0\,
      D => \TDATAO[5]_i_1_n_0\,
      Q => TDATAO_OBUF(5),
      R => intRSMATIP_i_1_n_0
    );
\TDATAO_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => \TDATAO[6]_i_1_n_0\,
      D => \TDATAO[6]_i_2_n_0\,
      Q => TDATAO_OBUF(6),
      R => '0'
    );
\TDATAO_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => \TDATAO[6]_i_1_n_0\,
      D => \TDATAO[7]_i_1_n_0\,
      Q => TDATAO_OBUF(7),
      R => intRSMATIP_i_1_n_0
    );
TDONEP_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => TDONEP_OBUF,
      O => TDONEP
    );
TDONEP_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E000FFFFFFFF"
    )
        port map (
      I0 => TDONEP_i_3_n_0,
      I1 => \TDATAO[0]_i_3_n_0\,
      I2 => counter_oct_emis(2),
      I3 => TAVAILP_IBUF,
      I4 => TDONEP_i_4_n_0,
      I5 => RESETN_IBUF,
      O => TDONEP_i_1_n_0
    );
TDONEP_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A020202"
    )
        port map (
      I0 => lastdata_i_5_n_0,
      I1 => aborting_reg_n_0,
      I2 => TSOCOLP_OBUF,
      I3 => \counter_abort_reg_n_0_[1]\,
      I4 => \counter_abort_reg_n_0_[0]\,
      O => TDONEP6_out
    );
TDONEP_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEF"
    )
        port map (
      I0 => lastdata_i_2_n_0,
      I1 => lastdata_i_7_n_0,
      I2 => TLASTP_IBUF,
      I3 => lastdata_emis_reg_n_0,
      O => TDONEP_i_3_n_0
    );
TDONEP_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => counter_oct_emis(1),
      I1 => counter_oct_emis(0),
      I2 => TSOCOLP_OBUF,
      I3 => aborting_reg_n_0,
      O => TDONEP_i_4_n_0
    );
TDONEP_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => '1',
      D => TDONEP6_out,
      Q => TDONEP_OBUF,
      R => TDONEP_i_1_n_0
    );
TLASTP_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => TLASTP,
      O => TLASTP_IBUF
    );
TREADDP_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => TREADDP_OBUF,
      O => TREADDP
    );
TREADDP_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80000000FFFFFFFF"
    )
        port map (
      I0 => lastdata_i_3_n_0,
      I1 => counter_oct_emis(2),
      I2 => TAVAILP_IBUF,
      I3 => counter_oct_emis(1),
      I4 => counter_oct_emis(0),
      I5 => RESETN_IBUF,
      O => TREADDP_i_1_n_0
    );
TREADDP_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E000000000000000"
    )
        port map (
      I0 => lastdata_i_4_n_0,
      I1 => lastdata_i_2_n_0,
      I2 => counter_oct_emis(2),
      I3 => TAVAILP_IBUF,
      I4 => counter_oct_emis(1),
      I5 => counter_oct_emis(0),
      O => TREADDP3_out
    );
TREADDP_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => '1',
      D => TREADDP3_out,
      Q => TREADDP_OBUF,
      R => TREADDP_i_1_n_0
    );
TRNSMTP_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => TRNSMTP_OBUF,
      O => TRNSMTP
    );
TSOCOLP_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => TSOCOLP_OBUF,
      O => TSOCOLP
    );
TSTARTP_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => TSTARTP_OBUF,
      O => TSTARTP
    );
TSTARTP_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80000000FFFFFFFF"
    )
        port map (
      I0 => counter_oct_emis(0),
      I1 => counter_oct_emis(1),
      I2 => counter_oct_emis(2),
      I3 => TAVAILP_IBUF,
      I4 => TDONEP1,
      I5 => RESETN_IBUF,
      O => TSTARTP_i_1_n_0
    );
TSTARTP_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => counter_oct_emis(0),
      I1 => counter_oct_emis(1),
      I2 => TAVAILP_IBUF,
      I3 => counter_oct_emis(2),
      I4 => \TDATAO[0]_i_3_n_0\,
      O => TSTARTP0_out
    );
TSTARTP_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => '1',
      D => TSTARTP0_out,
      Q => TSTARTP_OBUF,
      R => TSTARTP_i_1_n_0
    );
aborting_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => aborting30_in,
      I1 => TABORTP_IBUF,
      I2 => TAVAILP_IBUF,
      O => aborting12_out
    );
aborting_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => aborting12_out,
      D => TABORTP_IBUF,
      Q => aborting_reg_n_0,
      R => intRSMATIP_i_1_n_0
    );
\counter_abort[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0666AAAA"
    )
        port map (
      I0 => \counter_abort_reg_n_0_[0]\,
      I1 => TSTARTP2_out,
      I2 => aborting30_in,
      I3 => TAVAILP_IBUF,
      I4 => RESETN_IBUF,
      O => \counter_abort[0]_i_1_n_0\
    );
\counter_abort[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"006A6A6AAAAAAAAA"
    )
        port map (
      I0 => \counter_abort_reg_n_0_[1]\,
      I1 => TSTARTP2_out,
      I2 => \counter_abort_reg_n_0_[0]\,
      I3 => aborting30_in,
      I4 => TAVAILP_IBUF,
      I5 => RESETN_IBUF,
      O => \counter_abort[1]_i_1_n_0\
    );
\counter_abort[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E000000000000000"
    )
        port map (
      I0 => aborting_reg_n_0,
      I1 => TSOCOLP_OBUF,
      I2 => TAVAILP_IBUF,
      I3 => counter_oct_emis(2),
      I4 => counter_oct_emis(1),
      I5 => counter_oct_emis(0),
      O => TSTARTP2_out
    );
\counter_abort[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => TDONEP1,
      I1 => \counter_abort_reg_n_0_[1]\,
      I2 => \counter_abort_reg_n_0_[0]\,
      I3 => counter_oct_emis(2),
      I4 => counter_oct_emis(1),
      I5 => counter_oct_emis(0),
      O => aborting30_in
    );
\counter_abort_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => '1',
      D => \counter_abort[0]_i_1_n_0\,
      Q => \counter_abort_reg_n_0_[0]\,
      R => '0'
    );
\counter_abort_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => '1',
      D => \counter_abort[1]_i_1_n_0\,
      Q => \counter_abort_reg_n_0_[1]\,
      R => '0'
    );
\counter_addr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_addr_reg__0\(0),
      O => p_0_in(0)
    );
\counter_addr[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => RSTARTP0,
      I1 => RENABP_IBUF,
      I2 => RESETN_IBUF,
      O => \counter_addr[10]_i_1_n_0\
    );
\counter_addr[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => RENABP_IBUF,
      I1 => \counter_oct_reg_n_0_[2]\,
      I2 => RCVNGP_OBUF,
      I3 => \counter_oct_reg_n_0_[0]\,
      I4 => \counter_oct_reg_n_0_[1]\,
      O => counter_addr
    );
\counter_addr[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \counter_addr_reg__0\(8),
      I1 => \counter_addr_reg__0\(6),
      I2 => \counter_addr[10]_i_4_n_0\,
      I3 => \counter_addr_reg__0\(7),
      I4 => \counter_addr_reg__0\(9),
      I5 => \counter_addr_reg__0\(10),
      O => \p_0_in__0\(10)
    );
\counter_addr[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \counter_addr_reg__0\(5),
      I1 => \counter_addr_reg__0\(3),
      I2 => \counter_addr_reg__0\(1),
      I3 => \counter_addr_reg__0\(0),
      I4 => \counter_addr_reg__0\(2),
      I5 => \counter_addr_reg__0\(4),
      O => \counter_addr[10]_i_4_n_0\
    );
\counter_addr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_addr_reg__0\(0),
      I1 => \counter_addr_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\counter_addr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_addr_reg__0\(0),
      I1 => \counter_addr_reg__0\(1),
      I2 => \counter_addr_reg__0\(2),
      O => \p_0_in__0\(2)
    );
\counter_addr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_addr_reg__0\(1),
      I1 => \counter_addr_reg__0\(0),
      I2 => \counter_addr_reg__0\(2),
      I3 => \counter_addr_reg__0\(3),
      O => \p_0_in__0\(3)
    );
\counter_addr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_addr_reg__0\(2),
      I1 => \counter_addr_reg__0\(0),
      I2 => \counter_addr_reg__0\(1),
      I3 => \counter_addr_reg__0\(3),
      I4 => \counter_addr_reg__0\(4),
      O => \p_0_in__0\(4)
    );
\counter_addr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \counter_addr_reg__0\(3),
      I1 => \counter_addr_reg__0\(1),
      I2 => \counter_addr_reg__0\(0),
      I3 => \counter_addr_reg__0\(2),
      I4 => \counter_addr_reg__0\(4),
      I5 => \counter_addr_reg__0\(5),
      O => \p_0_in__0\(5)
    );
\counter_addr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_addr[10]_i_4_n_0\,
      I1 => \counter_addr_reg__0\(6),
      O => \p_0_in__0\(6)
    );
\counter_addr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_addr[10]_i_4_n_0\,
      I1 => \counter_addr_reg__0\(6),
      I2 => \counter_addr_reg__0\(7),
      O => \p_0_in__0\(7)
    );
\counter_addr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_addr_reg__0\(6),
      I1 => \counter_addr[10]_i_4_n_0\,
      I2 => \counter_addr_reg__0\(7),
      I3 => \counter_addr_reg__0\(8),
      O => \p_0_in__0\(8)
    );
\counter_addr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_addr_reg__0\(7),
      I1 => \counter_addr[10]_i_4_n_0\,
      I2 => \counter_addr_reg__0\(6),
      I3 => \counter_addr_reg__0\(8),
      I4 => \counter_addr_reg__0\(9),
      O => \p_0_in__0\(9)
    );
\counter_addr_emis[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_addr_emis_reg__0\(0),
      O => \counter_addr_emis[0]_i_1_n_0\
    );
\counter_addr_emis[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F400FFFFFFFFFFFF"
    )
        port map (
      I0 => lastdata_reg_n_0,
      I1 => lastdata_emis_reg_n_0,
      I2 => TDONEP1,
      I3 => \counter_addr_emis[10]_i_2_n_0\,
      I4 => RESETN_IBUF,
      I5 => TAVAILP_IBUF,
      O => \counter_addr_emis[10]_i_1_n_0\
    );
\counter_addr_emis[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => counter_oct_emis(2),
      I1 => counter_oct_emis(1),
      I2 => counter_oct_emis(0),
      O => \counter_addr_emis[10]_i_2_n_0\
    );
\counter_addr_emis[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \counter_addr_emis_reg__0\(8),
      I1 => \counter_addr_emis_reg__0\(6),
      I2 => \counter_addr_emis[10]_i_4_n_0\,
      I3 => \counter_addr_emis_reg__0\(7),
      I4 => \counter_addr_emis_reg__0\(9),
      I5 => \counter_addr_emis_reg__0\(10),
      O => \p_0_in__1\(10)
    );
\counter_addr_emis[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \counter_addr_emis_reg__0\(5),
      I1 => \counter_addr_emis_reg__0\(3),
      I2 => \counter_addr_emis_reg__0\(1),
      I3 => \counter_addr_emis_reg__0\(0),
      I4 => \counter_addr_emis_reg__0\(2),
      I5 => \counter_addr_emis_reg__0\(4),
      O => \counter_addr_emis[10]_i_4_n_0\
    );
\counter_addr_emis[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_addr_emis_reg__0\(0),
      I1 => \counter_addr_emis_reg__0\(1),
      O => \counter_addr_emis[1]_i_1_n_0\
    );
\counter_addr_emis[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_addr_emis_reg__0\(0),
      I1 => \counter_addr_emis_reg__0\(1),
      I2 => \counter_addr_emis_reg__0\(2),
      O => \counter_addr_emis[2]_i_1_n_0\
    );
\counter_addr_emis[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_addr_emis_reg__0\(1),
      I1 => \counter_addr_emis_reg__0\(0),
      I2 => \counter_addr_emis_reg__0\(2),
      I3 => \counter_addr_emis_reg__0\(3),
      O => \p_0_in__1\(3)
    );
\counter_addr_emis[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_addr_emis_reg__0\(2),
      I1 => \counter_addr_emis_reg__0\(0),
      I2 => \counter_addr_emis_reg__0\(1),
      I3 => \counter_addr_emis_reg__0\(3),
      I4 => \counter_addr_emis_reg__0\(4),
      O => \p_0_in__1\(4)
    );
\counter_addr_emis[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \counter_addr_emis_reg__0\(3),
      I1 => \counter_addr_emis_reg__0\(1),
      I2 => \counter_addr_emis_reg__0\(0),
      I3 => \counter_addr_emis_reg__0\(2),
      I4 => \counter_addr_emis_reg__0\(4),
      I5 => \counter_addr_emis_reg__0\(5),
      O => \p_0_in__1\(5)
    );
\counter_addr_emis[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_addr_emis[10]_i_4_n_0\,
      I1 => \counter_addr_emis_reg__0\(6),
      O => \p_0_in__1\(6)
    );
\counter_addr_emis[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_addr_emis[10]_i_4_n_0\,
      I1 => \counter_addr_emis_reg__0\(6),
      I2 => \counter_addr_emis_reg__0\(7),
      O => \p_0_in__1\(7)
    );
\counter_addr_emis[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_addr_emis_reg__0\(6),
      I1 => \counter_addr_emis[10]_i_4_n_0\,
      I2 => \counter_addr_emis_reg__0\(7),
      I3 => \counter_addr_emis_reg__0\(8),
      O => \p_0_in__1\(8)
    );
\counter_addr_emis[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_addr_emis_reg__0\(7),
      I1 => \counter_addr_emis[10]_i_4_n_0\,
      I2 => \counter_addr_emis_reg__0\(6),
      I3 => \counter_addr_emis_reg__0\(8),
      I4 => \counter_addr_emis_reg__0\(9),
      O => \p_0_in__1\(9)
    );
\counter_addr_emis_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => \counter_addr_emis[10]_i_2_n_0\,
      D => \counter_addr_emis[0]_i_1_n_0\,
      Q => \counter_addr_emis_reg__0\(0),
      R => \counter_addr_emis[10]_i_1_n_0\
    );
\counter_addr_emis_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => \counter_addr_emis[10]_i_2_n_0\,
      D => \p_0_in__1\(10),
      Q => \counter_addr_emis_reg__0\(10),
      R => \counter_addr_emis[10]_i_1_n_0\
    );
\counter_addr_emis_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => \counter_addr_emis[10]_i_2_n_0\,
      D => \counter_addr_emis[1]_i_1_n_0\,
      Q => \counter_addr_emis_reg__0\(1),
      R => \counter_addr_emis[10]_i_1_n_0\
    );
\counter_addr_emis_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => \counter_addr_emis[10]_i_2_n_0\,
      D => \counter_addr_emis[2]_i_1_n_0\,
      Q => \counter_addr_emis_reg__0\(2),
      R => \counter_addr_emis[10]_i_1_n_0\
    );
\counter_addr_emis_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => \counter_addr_emis[10]_i_2_n_0\,
      D => \p_0_in__1\(3),
      Q => \counter_addr_emis_reg__0\(3),
      R => \counter_addr_emis[10]_i_1_n_0\
    );
\counter_addr_emis_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => \counter_addr_emis[10]_i_2_n_0\,
      D => \p_0_in__1\(4),
      Q => \counter_addr_emis_reg__0\(4),
      R => \counter_addr_emis[10]_i_1_n_0\
    );
\counter_addr_emis_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => \counter_addr_emis[10]_i_2_n_0\,
      D => \p_0_in__1\(5),
      Q => \counter_addr_emis_reg__0\(5),
      R => \counter_addr_emis[10]_i_1_n_0\
    );
\counter_addr_emis_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => \counter_addr_emis[10]_i_2_n_0\,
      D => \p_0_in__1\(6),
      Q => \counter_addr_emis_reg__0\(6),
      R => \counter_addr_emis[10]_i_1_n_0\
    );
\counter_addr_emis_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => \counter_addr_emis[10]_i_2_n_0\,
      D => \p_0_in__1\(7),
      Q => \counter_addr_emis_reg__0\(7),
      R => \counter_addr_emis[10]_i_1_n_0\
    );
\counter_addr_emis_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => \counter_addr_emis[10]_i_2_n_0\,
      D => \p_0_in__1\(8),
      Q => \counter_addr_emis_reg__0\(8),
      R => \counter_addr_emis[10]_i_1_n_0\
    );
\counter_addr_emis_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => \counter_addr_emis[10]_i_2_n_0\,
      D => \p_0_in__1\(9),
      Q => \counter_addr_emis_reg__0\(9),
      R => \counter_addr_emis[10]_i_1_n_0\
    );
\counter_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => counter_addr,
      D => p_0_in(0),
      Q => \counter_addr_reg__0\(0),
      R => \counter_addr[10]_i_1_n_0\
    );
\counter_addr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => counter_addr,
      D => \p_0_in__0\(10),
      Q => \counter_addr_reg__0\(10),
      R => \counter_addr[10]_i_1_n_0\
    );
\counter_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => counter_addr,
      D => \p_0_in__0\(1),
      Q => \counter_addr_reg__0\(1),
      R => \counter_addr[10]_i_1_n_0\
    );
\counter_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => counter_addr,
      D => \p_0_in__0\(2),
      Q => \counter_addr_reg__0\(2),
      R => \counter_addr[10]_i_1_n_0\
    );
\counter_addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => counter_addr,
      D => \p_0_in__0\(3),
      Q => \counter_addr_reg__0\(3),
      R => \counter_addr[10]_i_1_n_0\
    );
\counter_addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => counter_addr,
      D => \p_0_in__0\(4),
      Q => \counter_addr_reg__0\(4),
      R => \counter_addr[10]_i_1_n_0\
    );
\counter_addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => counter_addr,
      D => \p_0_in__0\(5),
      Q => \counter_addr_reg__0\(5),
      R => \counter_addr[10]_i_1_n_0\
    );
\counter_addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => counter_addr,
      D => \p_0_in__0\(6),
      Q => \counter_addr_reg__0\(6),
      R => \counter_addr[10]_i_1_n_0\
    );
\counter_addr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => counter_addr,
      D => \p_0_in__0\(7),
      Q => \counter_addr_reg__0\(7),
      R => \counter_addr[10]_i_1_n_0\
    );
\counter_addr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => counter_addr,
      D => \p_0_in__0\(8),
      Q => \counter_addr_reg__0\(8),
      R => \counter_addr[10]_i_1_n_0\
    );
\counter_addr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => counter_addr,
      D => \p_0_in__0\(9),
      Q => \counter_addr_reg__0\(9),
      R => \counter_addr[10]_i_1_n_0\
    );
\counter_oct[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0070"
    )
        port map (
      I0 => RSTARTP0,
      I1 => RENABP_IBUF,
      I2 => RESETN_IBUF,
      I3 => \counter_oct_reg_n_0_[0]\,
      O => \counter_oct[0]_i_1_n_0\
    );
\counter_oct[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00707000"
    )
        port map (
      I0 => RSTARTP0,
      I1 => RENABP_IBUF,
      I2 => RESETN_IBUF,
      I3 => \counter_oct_reg_n_0_[0]\,
      I4 => \counter_oct_reg_n_0_[1]\,
      O => \counter_oct[1]_i_1_n_0\
    );
\counter_oct[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0070700070007000"
    )
        port map (
      I0 => RSTARTP0,
      I1 => RENABP_IBUF,
      I2 => RESETN_IBUF,
      I3 => \counter_oct_reg_n_0_[2]\,
      I4 => \counter_oct_reg_n_0_[0]\,
      I5 => \counter_oct_reg_n_0_[1]\,
      O => \counter_oct[2]_i_1_n_0\
    );
\counter_oct_emis[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => counter_oct_emis(0),
      I1 => TAVAILP_IBUF,
      I2 => RESETN_IBUF,
      O => \counter_oct_emis[0]_i_1_n_0\
    );
\counter_oct_emis[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => counter_oct_emis(1),
      I1 => TAVAILP_IBUF,
      I2 => counter_oct_emis(0),
      I3 => RESETN_IBUF,
      O => \counter_oct_emis[1]_i_1_n_0\
    );
\counter_oct_emis[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA0000"
    )
        port map (
      I0 => counter_oct_emis(2),
      I1 => TAVAILP_IBUF,
      I2 => counter_oct_emis(0),
      I3 => counter_oct_emis(1),
      I4 => RESETN_IBUF,
      O => \counter_oct_emis[2]_i_1_n_0\
    );
\counter_oct_emis_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => '1',
      D => \counter_oct_emis[0]_i_1_n_0\,
      Q => counter_oct_emis(0),
      R => '0'
    );
\counter_oct_emis_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => '1',
      D => \counter_oct_emis[1]_i_1_n_0\,
      Q => counter_oct_emis(1),
      R => '0'
    );
\counter_oct_emis_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => '1',
      D => \counter_oct_emis[2]_i_1_n_0\,
      Q => counter_oct_emis(2),
      R => '0'
    );
\counter_oct_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => '1',
      D => \counter_oct[0]_i_1_n_0\,
      Q => \counter_oct_reg_n_0_[0]\,
      R => '0'
    );
\counter_oct_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => '1',
      D => \counter_oct[1]_i_1_n_0\,
      Q => \counter_oct_reg_n_0_[1]\,
      R => '0'
    );
\counter_oct_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => '1',
      D => \counter_oct[2]_i_1_n_0\,
      Q => \counter_oct_reg_n_0_[2]\,
      R => '0'
    );
intRCVNGP_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F2AAAA00000000"
    )
        port map (
      I0 => RCVNGP_OBUF,
      I1 => intRCVNGP_i_2_n_0,
      I2 => RSTARTP0,
      I3 => intRCVNGP_i_3_n_0,
      I4 => RENABP_IBUF,
      I5 => RESETN_IBUF,
      O => intRCVNGP_i_1_n_0
    );
intRCVNGP_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \counter_oct_reg_n_0_[1]\,
      I1 => \counter_oct_reg_n_0_[0]\,
      I2 => RCVNGP_OBUF,
      I3 => \counter_oct_reg_n_0_[2]\,
      I4 => RBYTEP2,
      I5 => neqOp,
      O => intRCVNGP_i_2_n_0
    );
intRCVNGP_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => RBYTEP163_out,
      I1 => RCLEANP_i_7_n_0,
      I2 => RCLEANP_i_6_n_0,
      I3 => RCLEANP_i_5_n_0,
      I4 => RCLEANP_i_4_n_0,
      I5 => RBYTEP2,
      O => intRCVNGP_i_3_n_0
    );
intRCVNGP_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => '1',
      D => intRCVNGP_i_1_n_0,
      Q => RCVNGP_OBUF,
      R => '0'
    );
intRSMATIP_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RESETN_IBUF,
      O => intRSMATIP_i_1_n_0
    );
intRSMATIP_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000000020"
    )
        port map (
      I0 => RBYTEP163_out,
      I1 => RBYTEP2,
      I2 => RENABP_IBUF,
      I3 => RSTARTP0,
      I4 => neqOp,
      I5 => intRSMATIP,
      O => intRSMATIP38_out
    );
intRSMATIP_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => intRSMATIP_i_4_n_0,
      I1 => intRSMATIP_i_5_n_0,
      I2 => \counter_addr_reg__0\(0),
      I3 => \counter_addr_reg__0\(1),
      I4 => \counter_addr_reg__0\(2),
      O => intRSMATIP
    );
intRSMATIP_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \counter_addr_reg__0\(6),
      I1 => \counter_addr_reg__0\(5),
      I2 => \counter_addr_reg__0\(3),
      I3 => \counter_addr_reg__0\(4),
      O => intRSMATIP_i_4_n_0
    );
intRSMATIP_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \counter_addr_reg__0\(10),
      I1 => \counter_addr_reg__0\(9),
      I2 => \counter_addr_reg__0\(8),
      I3 => \counter_addr_reg__0\(7),
      O => intRSMATIP_i_5_n_0
    );
intRSMATIP_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => intRSMATIP38_out,
      D => intRSMATIP,
      Q => RSMATIP_OBUF,
      R => intRSMATIP_i_1_n_0
    );
intTRNSMTP_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAECAAAA"
    )
        port map (
      I0 => TRNSMTP_OBUF,
      I1 => \TDATAO[0]_i_3_n_0\,
      I2 => TDONEP_i_3_n_0,
      I3 => TDONEP_i_4_n_0,
      I4 => lastdata_emis_i_3_n_0,
      I5 => intTRNSMTP_i_2_n_0,
      O => intTRNSMTP_i_1_n_0
    );
intTRNSMTP_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => aborting30_in,
      I1 => TAVAILP_IBUF,
      I2 => RESETN_IBUF,
      O => intTRNSMTP_i_2_n_0
    );
intTRNSMTP_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => '1',
      D => intTRNSMTP_i_1_n_0,
      Q => TRNSMTP_OBUF,
      R => '0'
    );
intTSOCOLP_reg: unisim.vcomponents.LDPE
    generic map(
      INIT => '1'
    )
        port map (
      D => '0',
      G => intTSOCOLP054_out,
      GE => '1',
      PRE => intTSOCOLP0,
      Q => TSOCOLP_OBUF
    );
intTSOCOLP_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => TRNSMTP_OBUF,
      I1 => RCVNGP_OBUF,
      O => intTSOCOLP054_out
    );
intTSOCOLP_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RCVNGP_OBUF,
      I1 => TRNSMTP_OBUF,
      O => intTSOCOLP0
    );
lastdata_emis_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAB8AAAA00000000"
    )
        port map (
      I0 => lastdata_emis_reg_n_0,
      I1 => lastdata_emis_i_2_n_0,
      I2 => lastdata_reg_n_0,
      I3 => TDONEP_i_3_n_0,
      I4 => lastdata_emis_i_3_n_0,
      I5 => RESETN_IBUF,
      O => lastdata_emis_i_1_n_0
    );
lastdata_emis_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFFFFFFFFFFF"
    )
        port map (
      I0 => lastdata_reg_n_0,
      I1 => \TDATAO[0]_i_3_n_0\,
      I2 => aborting_reg_n_0,
      I3 => TSOCOLP_OBUF,
      I4 => counter_oct_emis(0),
      I5 => counter_oct_emis(1),
      O => lastdata_emis_i_2_n_0
    );
lastdata_emis_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TAVAILP_IBUF,
      I1 => counter_oct_emis(2),
      O => lastdata_emis_i_3_n_0
    );
lastdata_emis_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => '1',
      D => lastdata_emis_i_1_n_0,
      Q => lastdata_emis_reg_n_0,
      R => '0'
    );
lastdata_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF100010001000"
    )
        port map (
      I0 => lastdata_i_2_n_0,
      I1 => lastdata_i_3_n_0,
      I2 => lastdata_i_4_n_0,
      I3 => lastdata_i_5_n_0,
      I4 => TAVAILP_IBUF,
      I5 => TLASTP_IBUF,
      O => lastdata23_out
    );
lastdata_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => lastdata_i_6_n_0,
      I1 => \counter_addr_emis_reg__0\(6),
      I2 => \counter_addr_emis_reg__0\(7),
      I3 => \counter_addr_emis_reg__0\(5),
      I4 => \counter_addr_emis_reg__0\(4),
      I5 => \counter_addr_emis_reg__0\(3),
      O => lastdata_i_2_n_0
    );
lastdata_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \TDATAO[0]_i_3_n_0\,
      I1 => TSOCOLP_OBUF,
      I2 => aborting_reg_n_0,
      O => lastdata_i_3_n_0
    );
lastdata_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => lastdata_emis_reg_n_0,
      I1 => TLASTP_IBUF,
      I2 => lastdata_i_7_n_0,
      O => lastdata_i_4_n_0
    );
lastdata_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => counter_oct_emis(2),
      I1 => TAVAILP_IBUF,
      I2 => counter_oct_emis(1),
      I3 => counter_oct_emis(0),
      O => lastdata_i_5_n_0
    );
lastdata_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000007F"
    )
        port map (
      I0 => \counter_addr_emis_reg__0\(1),
      I1 => \counter_addr_emis_reg__0\(0),
      I2 => \counter_addr_emis_reg__0\(2),
      I3 => \counter_addr_emis_reg__0\(9),
      I4 => \counter_addr_emis_reg__0\(10),
      I5 => \counter_addr_emis_reg__0\(8),
      O => lastdata_i_6_n_0
    );
lastdata_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => lastdata_i_8_n_0,
      I1 => \counter_addr_emis_reg__0\(5),
      I2 => \counter_addr_emis_reg__0\(4),
      I3 => \counter_addr_emis_reg__0\(7),
      I4 => \counter_addr_emis_reg__0\(6),
      I5 => lastdata_i_9_n_0,
      O => lastdata_i_7_n_0
    );
lastdata_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \counter_addr_emis_reg__0\(8),
      I1 => \counter_addr_emis_reg__0\(10),
      I2 => \counter_addr_emis_reg__0\(9),
      O => lastdata_i_8_n_0
    );
lastdata_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"777F"
    )
        port map (
      I0 => \counter_addr_emis_reg__0\(2),
      I1 => \counter_addr_emis_reg__0\(3),
      I2 => \counter_addr_emis_reg__0\(0),
      I3 => \counter_addr_emis_reg__0\(1),
      O => lastdata_i_9_n_0
    );
lastdata_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK10I_IBUF_BUFG,
      CE => lastdata23_out,
      D => TLASTP_IBUF,
      Q => lastdata_reg_n_0,
      R => intRSMATIP_i_1_n_0
    );
end STRUCTURE;
