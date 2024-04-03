#### Definition
* The D-type flip-flop is an edge triggered memory device that transfers a signal’s value on its D input, to its Q output, when an active edge transition occurs on its clock input.
* The output value is held until the next active clock edge. The Q-bar output signal is always the inverse of the Q output signal.
![[Pasted image 20240228142818.png]]
![[Pasted image 20240228142828.png]]

#### Modeling
![[Pasted image 20240228142852.png]]
rising edge is more robust for noise.

#### Flip-flops with reset
![[Pasted image 20240228143033.png]]

#### Flip-flops with enable and asynchronous reset
![[Pasted image 20240228143058.png]]


#### VHDL example
```vhdl
entity d_flip_flop is
    generic(
        n_bits  :   POSITIVE    :=  1;
    );
    port(
        en  :   in  STD_LOGIC;
        D   :   in  STD_LOGIC_VECTOR(n_bits-1 downto 0);
        Q   :   out STD_LOGIC_VECTOR(n_bits-1 downto 0);
        nQ  :   out STD_LOGIC_VECTOR(n_bits-1 downto 0)
    );
end d_flip_flop;

architecture Behavioral of d_flip_flop is
begin
    process (en)
    begin
        if (en'event and en='1') then
            Q   <=  D;
            nQ  <=  not D;
        end if;
    end process;
end Behavioral;
```