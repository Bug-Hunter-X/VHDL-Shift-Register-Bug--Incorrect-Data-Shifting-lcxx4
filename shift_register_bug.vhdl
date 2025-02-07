```vhdl
ENTITY shift_register IS
  GENERIC (n : INTEGER := 8);
  PORT (clk, rst : IN BIT;
        data_in : IN BIT_VECTOR(n-1 DOWNTO 0);
        data_out : OUT BIT_VECTOR(n-1 DOWNTO 0));
END ENTITY;

ARCHITECTURE behavioral OF shift_register IS
  SIGNAL reg : BIT_VECTOR(n-1 DOWNTO 0) := (OTHERS => '0');
BEGIN
  PROCESS (clk, rst) IS
  BEGIN
    IF rst = '1' THEN
      reg <= (OTHERS => '0');
    ELSIF rising_edge(clk) THEN
      reg <= data_in;
    END IF;
  END PROCESS;
  data_out <= reg;
END ARCHITECTURE; 
```