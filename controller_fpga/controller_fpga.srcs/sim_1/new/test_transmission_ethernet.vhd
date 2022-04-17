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
    TFINISHP : in STD_LOGIC;
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
signal clk : std_logic := '0';
signal reset : std_logic;
signal tension : std_logic;
signal addr : std_logic_vector(47 downto 0):= x"aabbccddeeff";
signal abort : std_logic;
signal avail : std_logic; 
signal tdatao : std_logic_vector(7 downto 0);
signal tdatai : std_logic_vector(7 downto 0);
signal tdone : std_logic;
signal tfinish : std_logic;
signal last : std_logic;
signal tread : std_logic;
signal trnsmt : std_logic;
signal tstart : std_logic;
signal tsocolp : std_logic;

-- plan d'une trame:
-- SFD - adresse dest - adresse src - data - EFD

begin

    controller : ethernet_Controller_src PORT MAP(byte, clean, ngp, rdatao, rdatai, rdone, enab, matip, rstart, clk, reset, tension, addr,abort, avail, tdatao, tdatai, tdone, tfinish, last, tread, trnsmt, tstart, tsocolp);
    clk <= not clk after clk_period/2;
    reset <= '0', '1' after clk_period*2;
    avail <= '0', '1' after clk_period*5, '0' after clk_period*8*32, '1' after clk_period*8*34;
    tdatai <= x"da";
    abort<='0', '1' after clk_period*8*30, '0' after clk_period*8*33;
    last<='0','1' after clk_period*8*20, '0' after clk_period*8*21;
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
