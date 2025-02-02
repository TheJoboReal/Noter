---
tags:
  - lecture-note
  - uni
course: Digital Programmerbar elektronik
---

#### VHDL
```vhdl
entity d_latch is
    generic(
        n_bits : POSITIVE := 1;
    );
    port(
        en      :   in  STD_LOGIC;
        D       :   in  STD_LOGIC_VECTOR(n_bits-1 downto 0);
        Q       :   out STD_LOGIC_VECTOR(n_bits-1 downto 0);
        nQ      :   out STD_LOGIC_VECTOR(n_bits-1 downto 0)
    );
end d_latch;

architecture Behavioral of d_latch is
begin
    process(D, en)
    begin
        if (en = '1') then
            Q   <=  D;
            nQ  <=  not D;
        end if;
    end process;

end Behavioral;
```