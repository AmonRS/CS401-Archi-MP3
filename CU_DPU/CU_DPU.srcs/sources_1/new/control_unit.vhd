library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity control_unit is
    Port ( op:                 in  STD_LOGIC_VECTOR(7 downto 0);
           zero:               in  STD_LOGIC;
           memread, memwrite:  out STD_LOGIC;
           pcsrc, alusrc:      out STD_LOGIC;
           regdst, regwrite:  out STD_LOGIC;
           jump:               out STD_LOGIC;
           alucontrol:         out STD_LOGIC_VECTOR(3 downto 0));
end control_unit;

architecture Behavioral of control_unit is
    component main_decoder
    port ( op:                    in  STD_LOGIC_VECTOR(7 downto 0);
           alusrc:              out STD_LOGIC;
           jump:                out STD_LOGIC;
           memread, memwrite:   out STD_LOGIC;
           regdst, regwrite:   out STD_LOGIC;
           alucontrol:          out  STD_LOGIC_VECTOR(3 downto 0));
    end component;
    
begin
    main_dc: main_decoder port map( op=>op, alusrc=>alusrc, jump=>jump, memread=>memread, memwrite=>memwrite, regdst=>regdst, regwrite=>regwrite, alucontrol=>alucontrol);  --regdst=>regdst

end Behavioral;
