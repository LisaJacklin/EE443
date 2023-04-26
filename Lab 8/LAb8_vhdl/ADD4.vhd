LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

Entity ADD4 IS
PORT(LHO: IN std_logic_Vector(3 downto 0); -- left hand operand
 RHO: IN STD_LOGIC_VECTOR(3 downto 0); -- right hand operand
 C0:  IN STD_LOGIC; -- carry in
 C4: OUT STD_LOGIC; -- carry out
 OVERFLOW: OUT STD_LOGIC;             -- if there is overflow (numbers  were to big)
 R:   OUT STD_LOGIC_VECTOR(3 downto 0)); --output of the adder
End ADD4;



ARCHITECTURE ADD4logic OF ADD4 IS

SIGNAL s1: STD_LOGIC_VECTOR(3 downto 0);
SIGNAL s2: STD_LOGIC_VECTOR(3 downto 0);
SIGNAL s3: STD_LOGIC_VECTOR(3 downto 0);
SIGNAL s4: STD_LOGIC_VECTOR(3 downto 0);


SIGNAL nors1: STD_LOGIC_VECTOR(4 downto 0); -- not especially neccessary
SIGNAL nors2: STD_LOGIC_VECTOR(3 downto 0); -- but I thought it made the code more
SIGNAL nors3: STD_LOGIC_VECTOR(2 downto 0); -- logical/readable
SIGNAL nors4: STD_LOGIC_VECTOR(1 downto 0); -- (holds the boolean values we will be noring)

signal c3: STD_LOGIC; -- third bit carry out
signal c4Buff: std_logic;


BEGIN

G1: FOR i IN 3 downto 0 GENERATE -- set up signals s1 and s1
s1(i) <= LHO(i) NAND RHO(i);
s2(i) <= LHO(i) NOR  RHO(i);
s3(i) <= NOT(s2(i)) AND s1(i); -- is it equivalent to XOR (aparently)
END GENERATE ;  


--top NAND gate (regering to the diagram posted)
-- carry out nors all these
nors1(0) <= s2(3);
nors1(1) <= s2(2) AND s1(3);
nors1(2) <= s2(1) AND s1(3) AND s1(2);
nors1(3) <= s2(0) AND s1(3) AND s1(2) AND s1(1);
nors1(4) <= s1(3) AND s1(2) AND s1(1) AND s1(0) AND (NOT(C0));

-- next nor gate nors all these
nors2(0) <= s2(2);
nors2(1) <= s2(1) AND s1(2);
nors2(2) <= s2(0) AND s1(2) AND s1(1);
nors2(3) <= s1(2) AND s1(0) AND (NOT(C0)) AND s1(1);

-- 3rd nor gate down nors all these
nors3(0) <= s2(1);
nors3(1) <= s2(0) AND s1(1);
nors3(2) <= s1(1) AND s1(0) AND (NOT(C0));

-- last nor gate nors all these
nors4(0) <= s2(0);
nors4(1) <= s1(0) AND (NOT(C0));


-- create carry out
C4Buff <= NOT(nors1(4) OR nors1(3) OR nors1(2) OR nors1(1) OR nors1(0)); -- one of the final outputs!
c4 <= c4Buff;

-- create s4
s4(3) <= NOT(nors2(3) OR nors2(2) OR nors2(1) OR nors2(0));
s4(2) <= NOT(nors3(2) OR nors3(1) OR nors3(0));
s4(1) <= nors4(1) NOR nors4(0);
s4(0) <= C0; -- makes the for loop below make sense


G2: FOR i IN 3 downto 0 GENERATE -- get results
R(i) <= s3(i) XOR s4(i);
END GENERATE ;  

c3 <= s4(3);
OVERFLOW <= c3 XOR c4Buff; -- if they are different then overflow happened

END ADD4logic;