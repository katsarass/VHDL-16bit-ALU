--Component 1 (2-TO-1 MUX)

library ieee;
use ieee.std_logic_1164.all;

entity mux2to1 is
    port (w0, w1, s : in std_logic; 
        output : out std_logic);
end mux2to1;

architecture behavior of mux2to1 is
begin
    output <= w0 when s = '0' else w1; -- If s='0' then w0, else (s='1') then w1
end behavior;



--Component 2 (Full Adder 1-bit)

library ieee;
use ieee.std_logic_1164.all;

entity fulladder is
     port (a, b, cin : in std_logic;
        sum, cout : out std_logic);
end fulladder;

architecture structural of fulladder is
begin
    sum <= (a xor b) xor cin;
    cout <= (b and cin) or (a and cin) or (a and b); 
end structural;


--Component 3 (4-TO-1 MUX)

library ieee;
use ieee.std_logic_1164.all;

entity mux4to1 is
   port (w0, w1, w2, w3 : in std_logic;
     s : in std_logic_vector(1 downto 0);
     output : out std_logic);
end mux4to1 ;

architecture behavior of mux4to1 is
begin
  with s select
    output <= w0 when "00", --w0 if 00
             w1 when "01",  --w1 if 01
             w2 when "10",  --w2 if 10
             w3 when others; --else w3

end behavior;			  


library ieee;
use ieee.std_logic_1164.all;

--Top Level:1-bit ALU

--a,b:1 bit inputs
--Ainvert:not a (NOR,NAND)
--Binvert:not b (SUB,NOR,NAND)
--CarryIn:carry in
--Operation:operations (2 bits)
--00 AND
--01 OR
--10 ADD/SUB
--11 XOR
--Result:Result
--CarryOut: Carry out

entity alu1bit is
    port (a, b, Ainvert, Binvert, CarryIn: in  std_logic;
        Operation : in  std_logic_vector(1 downto 0);
        Result    : out std_logic;
        CarryOut  : out std_logic);
end alu1bit;

architecture structural of alu1bit is

--Components (MUX 2-TO-1 , MUX 4-TO-1 , FULL ADDER)

    component mux2to1 is
       port (w0, w1, s: in std_logic;
            output : out std_logic);
    end component;
 
    component mux4to1 is
       port (w0, w1, w2, w3 : in std_logic;
            s    : in  std_logic_vector(1 downto 0);
            output : out std_logic);
    end component;
 
    component fulladder is
       port (a, b , cin : in std_logic;
            sum, cout : out std_logic);
    end component;



    --signals 
    signal a_out : std_logic;  -- out for Ainvert MUX
    signal b_out : std_logic;  -- out for Binvert MUX
    signal and_out : std_logic;  -- out fpr AND
    signal or_out : std_logic;  -- out for OR 
    signal xor_out : std_logic;  -- out for XOR
    signal sum_out : std_logic;  -- out for Full Adder (Sum)
	 
	 
begin 
	
	 --Ainvert MUX: w0=a (Ainvert=0), w1=NOT a (Ainvert=1)
    mux_a : mux2to1
        port map (w0 => a,
            w1 => not a,
            s => Ainvert,
            output => a_out);
 
    --Binvert MUX: w0=b (Binvert=0), w1=NOT b (Binvert=1)
    mux_b : mux2to1
        port map (w0 => b,
             w1 => not b,
             s => Binvert,
             output => b_out);
				 
				 
	 -- Logic Gates		 
	 and_out <= a_out and b_out; -- AND gate 
	 or_out <= a_out or b_out; -- OR gate
	 xor_out <= a_out xor b_out; -- XOR gate			 
				 
				 
	 -- Full Adder		 
	  fa : fulladder
        port map (a => a_out,
            b => b_out,
            cin => CarryIn,
            sum => sum_out,
            cout => CarryOut);
				
 
     -- 4-TO-1 MUX: Chooses result based on operation
     mux_result : mux4to1
        port map (w0 => and_out,   -- operation = "00" AND
            w1 => or_out,    -- operation = "01" OR
            w2 => sum_out,   -- operation = "10" ADD/SUB
            w3 => xor_out,   -- operation = "11" XOR
            s => Operation,
            output => Result);
 
end structural;