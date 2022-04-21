----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.03.2022 10:20:44
-- Design Name: 
-- Module Name: test_reception_ethernet - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_reception_ethernet is
end test_reception_ethernet;

architecture Behavioral of test_reception_ethernet is

 COMPONENT ethernet_Controller_src is Port (  
    RBYTEP: out STD_LOGIC;
    RCLEANP :  out STD_LOGIC;
    RCVNGP:  out STD_LOGIC;
    RDATAO: out STD_LOGIC_VECTOR(7 downto 0);
    RDATAI: in STD_LOGIC_VECTOR(7 downto 0);
    RDONEP : out STD_LOGIC;
    RENABP : in STD_LOGIC;
    RSMATIP :  out STD_LOGIC;
    RSTARTP : out STD_LOGIC;
    CLK10I :  in STD_LOGIC;
    RESETN :  in STD_LOGIC;
    VCC :  in  STD_LOGIC;
    NOADDRI : in STD_LOGIC_VECTOR(47 downto 0));
    --TABORTP : in STD_LOGIC;
    --TAVAILP : in STD_LOGIC;
    --TDATAI : in STD_LOGIC_VECTOR(7 downto 0);
    --TDATAO : out STD_LOGIC_VECTOR(7 downto 0);
    --TDONEP : out STD_LOGIC;
    --TFINISHP : in STD_LOGIC;
    --TLASTP : in STD_LOGIC;
    --TREADDP : out STD_LOGIC;
    --TRNSMTP : out STD_LOGIC;
    --TSTARTP : out STD_LOGIC;
    --TSOCOLP : out STD_LOGIC);
END COMPONENT;

constant clk_period:time:=100ns;

signal byte : std_logic;
signal clean : std_logic;
signal ngp : std_logic;
signal rdatao : std_logic_vector(7 downto 0);
signal rdatai : std_logic_vector(7 downto 0);
signal rdone : std_logic;
signal enab : std_logic;
signal matip : std_logic;
signal rstart : std_logic;
signal clk : std_logic := '0';
signal reset : std_logic;
signal tension : std_logic;
signal addr : std_logic_vector(47 downto 0):= x"aabbccddeeff";
--signal abort : std_logic;
--signal avail : std_logic; 
--signal tdatao : std_logic_vector(7 downto 0);
--signal tdatai : std_logic_vector(7 downto 0);
--signal tdone : std_logic;
--signal tfinish : std_logic;
--signal last : std_logic;
--signal tread : std_logic;
--signal trnsmt : std_logic;
--signal tstart : std_logic;
--signal tsocolp : std_logic;

-- plan d'une trame:
-- SFD - adresse dest - adresse src - data - EFD

begin

    controller : ethernet_Controller_src PORT MAP(byte, clean, ngp, rdatao, rdatai, rdone, enab, matip, rstart, clk, reset, tension, addr);
    clk <= not clk after clk_period/2;
    reset <= '0', '1' after clk_period*2;
    enab <= '0', '1' after clk_period*5;
    rdatai <= x"AB" after clk_period*8*1, x"aa" after clk_period*8*2,x"bb" after clk_period*8*3,x"cc" after clk_period*8*4,x"dd" after clk_period*8*5,x"ee" after clk_period*8*6,x"ff" after clk_period*8*7, x"bb" after clk_period*8*8,x"bb" after clk_period*8*9,x"cc" after clk_period*8*10,x"dd" after clk_period*8*11,x"ee" after clk_period*8*12,x"ff" after clk_period*8*13, x"00" after clk_period*8*14,x"ac" after clk_period*8*18,x"00" after clk_period*8*19, x"AB" after clk_period*8*20, x"aa" after clk_period*8*21,x"bb" after clk_period*8*22,x"cc" after clk_period*8*23,x"d0" after clk_period*8*24,x"ee" after clk_period*8*25,x"ff" after clk_period*8*26, x"bb" after clk_period*8*27,x"bb" after clk_period*8*28,x"cc" after clk_period*8*29,x"dd" after clk_period*8*30,x"ee" after clk_period*8*31,x"ff" after clk_period*8*32, x"00" after clk_period*8*33,x"ac" after clk_period*8*37,x"00" after clk_period*8*38;
        
    
end Behavioral;
