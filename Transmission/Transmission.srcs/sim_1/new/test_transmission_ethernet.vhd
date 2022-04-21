----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.03.2022 10:20:44
-- Design Name: 
-- Module Name: test_transmission_ethernet - Behavioral
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

entity test_transmission_ethernet is
end test_transmission_ethernet;
    
architecture Behavioral of test_transmission_ethernet is
    
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
    NOADDRI : in STD_LOGIC_VECTOR(47 downto 0);
    TABORTP : in STD_LOGIC;
    TAVAILP : in STD_LOGIC;
    TDATAI : in STD_LOGIC_VECTOR(7 downto 0);
    TDATAO : out STD_LOGIC_VECTOR(7 downto 0);
    TDONEP : out STD_LOGIC;
    TLASTP : in STD_LOGIC;
    TREADDP : out STD_LOGIC;
    TRNSMTP : out STD_LOGIC;
    TSTARTP : out STD_LOGIC;
    TSOCOLP : out STD_LOGIC);
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
signal clk : std_logic := '1';
signal reset : std_logic;
signal tension : std_logic;
signal addr : std_logic_vector(47 downto 0):= x"aabbccddeeff";
signal abort : std_logic;
signal avail : std_logic; 
signal tdatao : std_logic_vector(7 downto 0);
signal tdatai : std_logic_vector(7 downto 0);
signal tdone : std_logic;
signal last : std_logic;
signal tread : std_logic;
signal trnsmt : std_logic;
signal tstart : std_logic;
signal tsocolp : std_logic;

-- plan d'une trame:
-- SFD - adresse dest - adresse src - data - EFD

begin

    controller : ethernet_Controller_src PORT MAP(byte, clean, ngp, rdatao, rdatai, rdone, enab, matip, rstart, clk, reset, tension, addr,abort, avail, tdatai, tdatao, tdone, last, tread, trnsmt, tstart, tsocolp);
    clk <= not clk after clk_period/2;
    reset <= '0', '1' after clk_period*2;
    avail <= '0', '1' after clk_period*5, '0' after clk_period*8*45;
    tdatai <=x"aa" after clk_period*8*2, x"bb" after clk_period*8*3, x"cc" after clk_period*8*4, x"dd" after clk_period*8*5, x"ee" after clk_period*8*6, x"ff" after clk_period*8*7, x"11" after clk_period*8*14, x"12" after clk_period*8*16, x"13" after clk_period*8*17, x"14" after clk_period*8*18, x"15" after clk_period*8*19, x"16" after clk_period*8*20, x"aa" after clk_period*8*22, x"bb" after clk_period*8*23, x"cc" after clk_period*8*24, x"dd" after clk_period*8*25, x"ee" after clk_period*8*26, x"ff" after clk_period*8*27,x"aa" after clk_period*8*29,x"bb" after clk_period*8*31,x"cc" after clk_period*8*32,x"dd" after clk_period*8*33,x"ee" after clk_period*8*34,x"ff" after clk_period*8*35;
    abort<='0', '1' after clk_period*8*25, '0' after clk_period*(8*25+1);
    last<='0','1' after clk_period*8*19, '0' after clk_period*(8*19+1);
    --collision:
    enab <= '0', '1' after clk_period*8*40;
    rdatai <= x"AB" after clk_period*8*41, x"aa" after clk_period*8*42,x"bb" after clk_period*8*43,x"cc" after clk_period*8*44,x"dd" after clk_period*8*45,x"ee" after clk_period*8*46,x"ff" after clk_period*8*47;
   

    
    --scenarii à effectuer: envoi d'une trame standard, envoi aborted, collision.
        --standard: availp=1, tdatai!=null, tabort=0, tlastp=0
        --aborted: passage de tabort à 1
        --collision: tdatai+rdatai
    
    --rappel: pas de retour à la ligne possible pour run, tout doit être sur la même ligne
    --(possible de faire plusieurs lignes a <= '5654'; avec a identique ? )

end Behavioral;