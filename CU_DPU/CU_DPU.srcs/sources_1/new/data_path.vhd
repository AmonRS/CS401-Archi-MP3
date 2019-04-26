library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;
use IEEE.math_real.all;



entity data_path is
    generic(width: integer);
    port(clk, reset:        in  STD_LOGIC;
         memread, pcsrc:   in  STD_LOGIC;
         alusrc, regread:    in  STD_LOGIC;
         regwrite, jump:    in  STD_LOGIC;
         alucontrol:        in  STD_LOGIC_VECTOR(2 downto 0);
         zero:              out STD_LOGIC;
         pc:                inout STD_LOGIC_VECTOR((width-1) downto 0);
         instr:             in  STD_LOGIC_VECTOR((width-1) downto 0);
         aluout, writedata: inout STD_LOGIC_VECTOR((width-1) downto 0);
         readdata:          in  STD_LOGIC_VECTOR((width-1) downto 0));
end data_path;

architecture Behavioral of data_path is

    -- ALU
    component alu generic(width: integer);
    port(a, b:       in  STD_LOGIC_VECTOR((width-1) downto 0);
       alucontrol: in  STD_LOGIC_VECTOR(2 downto 0);
       result:     inout STD_LOGIC_VECTOR((width-1) downto 0);
       zero:       out STD_LOGIC);
    end component;
    
    -- register file
    component regfile generic(width: integer);
    port(clk:           in  STD_LOGIC;
       we3:           in  STD_LOGIC;
       -- determine number of address bits based on generic width component
       ra1, ra2, wa3: in  STD_LOGIC_VECTOR( (integer(ceil(log2(real(width))))-1) downto 0);
       wd3:           in  STD_LOGIC_VECTOR((width-1) downto 0);
       rd1, rd2:      out STD_LOGIC_VECTOR((width-1) downto 0));
    end component;
    
    -- adder
    component adder generic(width: integer);
    port(a, b: in  STD_LOGIC_VECTOR((width-1) downto 0);
       y:    out STD_LOGIC_VECTOR((width-1) downto 0));
    end component;





begin


end Behavioral;
