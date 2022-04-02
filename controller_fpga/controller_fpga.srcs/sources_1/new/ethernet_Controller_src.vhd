----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.03.2022 08:34:31
-- Design Name: 
-- Module Name: ethernet_Controller_src - Behavioral
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ethernet_Controller_src is
Port (  RBYTEP: out STD_LOGIC;
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
end ethernet_Controller_src;

architecture Behavioral of ethernet_Controller_src is

-- SIGNAUX RECEPTION
constant SFD : STD_LOGIC_VECTOR(7 downto 0) := x"AB";
constant EFD : STD_LOGIC_VECTOR(7 downto 0) := x"AC";
signal counter_oct : integer range 0 to 7;
signal counter_addr : integer range 0 to 1500;
signal intRCVNGP : STD_LOGIC;
signal intRSMATIP : STD_LOGIC;
signal checkaddr : STD_LOGIC;

-- SIGNAUX TRANSMISSION
signal intTRNSMTP : STD_LOGIC;
signal intTSOCOLP : STD_LOGIC;
signal counter_oct_emis : INTEGER range 0 to 7;
signal counter_addr_emis : integer range 0 to 1500;
signal counter_abort : INTEGER range 0 to 7;

begin


--
-- PROCESS RECEPTION
--

--Utilisation des signaux auxiliaires
RCVNGP <= intRCVNGP;
RSMATIP <= intRSMATIP;


-- HYPOTHESE :
-- On suppose qu'on ne peut pas recevoir un pattern SFD dans la partie data de la trame
reception : process
begin


    wait until CLK10I'event and CLK10I='1';
    
    RSTARTP<='0';
    RBYTEP<='0';
    RDONEP<='0';
    RCLEANP<='0';

    -- Phase de reset
    --obligatoire avant le début pour initialiser par exemple RSMATIP à 0
    if RESETN='0' then
        RSTARTP<='0';
        counter_oct <= 0;
        counter_addr <= 0;
        intRCVNGP <= '0';
        intRSMATIP <= '0';
        checkaddr <= '0';
    else
         counter_oct<= ((counter_oct+1) mod 8);
         
         if RENABP='1' then
                if intRCVNGP = '0' and RDATAI = SFD then
               
                    counter_oct<=0;   
                    RSTARTP<='1';
                    intRCVNGP <= '1';
                    counter_addr <= 0;
                    
                elsif counter_oct=7 and intRCVNGP='1' then
                
                    -- Check de l'addresse destination
                    if counter_addr < 6 and NOADDRI((5-counter_addr)*8+7 downto (5-counter_addr)*8)/=RDATAI then
                        intRCVNGP <= '0';
                        checkaddr <= '1';
                        RCLEANP <= '1';
                    elsif counter_addr >= 6 then

                        -- tant qu'on est pas à la fin de la trame
                        if RDATAI/=EFD then
                            RDATAO <= RDATAI;
                            RBYTEP <= '1';
                        else
                            RDONEP <= '1';
                            intRCVNGP <= '0';--pb ici
                            intRSMATIP <= '0';
                            RSTARTP <= '0';
                            counter_addr<=0;
                            --Si c'est un EFD donc fin de trame (car sinon checkaddr==0 d'office) et l'adresse ne correspond pas (rejet de la trame)
                        end if;
                        
                        -- Adresse 
                        if counter_addr=6 then
                            intRSMATIP <= '1';
                        end if;
                    end if;
                    
                    --Incrémentation du compteur adresse
                    counter_addr <= counter_addr + 1;
                    counter_oct<=0;
                    
                end if;
                else
            end if;   
         
    end if;
    
    
    
end process reception;

--faire des elses

--
-- PROCESS EMISSION
--

TRNSMTP<=intTRNSMTP;
TSOCOLP <=intTSOCOLP;

emission : process
begin
	wait until CLK10I'event and CLK10I='1';
    TDONEP <= '0';
    TSTARTP <= '0';
    TREADDP <= '0';
    
    if RESETN='0' then
        intTRNSMTP <= '0';
        counter_oct_emis <= 0;
        counter_addr_emis <= 0;
        TDATAO <= X"00";
    else
        if TAVAILP='1' then
            if counter_oct_emis=7 then
                counter_oct_emis <= 0;
                if TABORTP='1' or intTSOCOLP='1' then
                    intTRNSMTP <= '0';
                    counter_addr_emis <= 0;
                    if TABORTP='1' and counter_abort < 3 then
                        TDATAO <= "10101010"; --A vérifier
                        counter_abort <= counter_abort + 1;
                    end if;    
                else
                    counter_abort <= 0;
                    if counter_addr_emis=1 then
                        intTRNSMTP <= '1';
                        TDATAO <= SFD;
                    elsif counter_addr_emis < 7 then
                        TREADDP <= '1';
                        TDATAO <= TDATAI;
                    elsif counter_addr_emis < 13 then
                        TDATAO <= NOADDRI(counter_addr_emis*8-49 downto counter_addr_emis*8-56);
                    elsif TLASTP='0' then
                        TREADDP <= '1';
                        TDATAO <= TDATAI;
                    else 
                        TDATAO <= EFD;
                        TDONEP <= '1';
                        intTRNSMTP <= '0';
                    end if;
                    counter_addr_emis <= counter_addr_emis + 1;
                end if;
            else
                counter_oct_emis <= counter_oct_emis + 1;
            end if;
        else
            counter_addr_emis <= 0;
        end if;
    end if;
end process emission;

--
-- PROCESS COLLISION
--

--TSOCOLD ici pas dans emission
collision : process (intRCVNGP,intTRNSMTP)
begin
    if intRCVNGP='1' and intTRNSMTP='1' then
        intTSOCOLP <= '1';
    elsif intRCVNGP='0' then
        intTSOCOLP <= '0';
    end if;
end process collision;

end Behavioral;
