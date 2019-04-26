library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity main_decoder is
    port(op:                in  STD_LOGIC_VECTOR(7 downto 0);
       alusrc:              out STD_LOGIC;
       jump:                out STD_LOGIC;
       memread, memwrite:   out STD_LOGIC;
       regread, regwrite:   out STD_LOGIC;
       alucontrol:          out  STD_LOGIC_VECTOR(3 downto 0));
end main_decoder;

architecture Behavioral of main_decoder is
    signal controls: STD_LOGIC_VECTOR(9 downto 0);
begin
      process(op) begin
        case op is
          when "00010000" => controls <= "0000110000"; -- And
          when "00010001" => controls <= "0000110001"; -- Or
          when "00010010" => controls <= "0000110010"; -- Xor
          when "00010011" => controls <= "0000110011"; -- Add
          when "00010100" => controls <= "0000110100"; -- Increment
          when "00010101" => controls <= "0000110101"; -- Multiply
          when "00010110" => controls <= "0000110110"; -- Division
          when "00010111" => controls <= "0000110111"; -- Modulus
          when "00011000" => controls <= "0000111000"; -- Nand
          when "00011001" => controls <= "0000111001"; -- Nor
          when "00011010" => controls <= "0000111010"; -- Not
          when "00011011" => controls <= "0000111011"; -- Subtract
          when "00011100" => controls <= "0000111100"; -- Decrement
          --when "00011101" => controls <= "0000111101"; -- ---
          when "00011110" => controls <= "0000111110"; -- Exponential
          when "00011111" => controls <= "0000111111"; -- Set less than
          
          when "00100001" => controls <= "1010010011"; -- ld
          when "00100010" => controls <= "1001000011"; -- St
          when "00100011" => controls <= "1000010011"; -- li
          when "00110001" => controls <= "0100000000"; -- jmp
          when "01000001" => controls <= "0000110011"; -- mov
          when others     => controls <= "----------"; -- illegal op
        end case;
      end process;
    
      alusrc        <= controls(9);
      jump          <= controls(8);
      memread       <= controls(7);
      memwrite      <= controls(6);
      regread       <= controls(5);
      regwrite      <= controls(4);
      alucontrol    <= controls(3 downto 0);

end Behavioral;
