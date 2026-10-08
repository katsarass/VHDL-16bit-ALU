library ieee;
use ieee.std_logic_1164.all;

-- Control Circuit: reads the opcode and sets control signals
entity CtrlCirc is
    port (
        opcode   : in  std_logic_vector(2 downto 0);
        A_invert : out std_logic;
        B_invert : out std_logic;
        oper     : out std_logic_vector(1 downto 0);
        CarryIn  : out std_logic
    );
end CtrlCirc;

architecture behavioral of CtrlCirc is
begin
    process(opcode)
    begin
        case opcode is
            when "000" => -- AND
                oper <= "00"; A_invert <= '0'; B_invert <= '0'; CarryIn <= '0';
            when "001" => -- OR
                oper <= "01"; A_invert <= '0'; B_invert <= '0'; CarryIn <= '0';
            when "010" => -- ADD
                oper <= "10"; A_invert <= '0'; B_invert <= '0'; CarryIn <= '0';
            when "011" => -- SUB: invert b and set CarryIn=1 for 2s complement
                oper <= "10"; A_invert <= '0'; B_invert <= '1'; CarryIn <= '1';
            when "100" => -- NOR: invert both inputs then AND
                oper <= "00"; A_invert <= '1'; B_invert <= '1'; CarryIn <= '0';
            when "101" => -- NAND: invert both inputs then OR
                oper <= "01"; A_invert <= '1'; B_invert <= '1'; CarryIn <= '0';
            when "110" => -- XOR
                oper <= "11"; A_invert <= '0'; B_invert <= '0'; CarryIn <= '0';
            when others => -- opcode 111 unused
                oper <= "00"; A_invert <= '0'; B_invert <= '0'; CarryIn <= '0';
        end case;
    end process;
end behavioral;

-- 16-bit ALU: 16 slices of 1-bit ALU connected
library ieee;
use ieee.std_logic_1164.all;

entity ALU16 is
    port (
        a      : in  std_logic_vector(15 downto 0);
        b      : in  std_logic_vector(15 downto 0);
        opcode : in  std_logic_vector(2 downto 0);
        result : out std_logic_vector(15 downto 0);
        Ovfl   : out std_logic
    );
end ALU16;

architecture structural of ALU16 is

    component CtrlCirc is
        port (
            opcode   : in  std_logic_vector(2 downto 0);
            A_invert : out std_logic;
            B_invert : out std_logic;
            oper     : out std_logic_vector(1 downto 0);
            CarryIn  : out std_logic
        );
    end component;

    component alu1bit is
        port (
            a         : in  std_logic;
            b         : in  std_logic;
            Ainvert   : in  std_logic;
            Binvert   : in  std_logic;
            CarryIn   : in  std_logic;
            Operation : in  std_logic_vector(1 downto 0);
            Result    : out std_logic;
            CarryOut  : out std_logic
        );
    end component;

    signal A_in, B_in, cin : std_logic;
    signal Oper : std_logic_vector(1 downto 0);
    signal cout : std_logic_vector(0 to 15); -- carry chain

begin

    ControlCircuit : CtrlCirc
        port map (opcode, A_in, B_in, Oper, cin);

    -- Bit 0 gets CarryIn from Control Circuit
    ALU_BIT0 : alu1bit
        port map (
            a => a(0), b => b(0),
            Ainvert => A_in, Binvert => B_in,
            CarryIn => cin, Operation => Oper,
            Result => result(0), CarryOut => cout(0)
        );

    -- Bits 1-15: each slice gets CarryIn from previous slice
    Generate_ALU : for i in 1 to 15 generate
        ALU_INST : alu1bit
            port map (
                a => a(i), b => b(i),
                Ainvert => A_in, Binvert => B_in,
                CarryIn => cout(i-1), Operation => Oper,
                Result => result(i), CarryOut => cout(i)
            );
    end generate Generate_ALU;

    -- Overflow detection (only for ADD/SUB)
    Ovfl <= cout(14) XOR cout(15);

end structural;