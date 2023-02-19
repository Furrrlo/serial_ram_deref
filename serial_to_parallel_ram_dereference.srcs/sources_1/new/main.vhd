----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.02.2023 18:30:52
-- Design Name: 
-- Module Name: project_reti_logiche - Behavioral
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

entity project_reti_logiche is
    port (
        i_clk : in std_logic;
        i_rst : in std_logic;
        i_start : in std_logic;
        i_w : in std_logic;
        o_z0 : out std_logic_vector(7 downto 0);
        o_z1 : out std_logic_vector(7 downto 0);
        o_z2 : out std_logic_vector(7 downto 0);
        o_z3 : out std_logic_vector(7 downto 0);
        o_done : out std_logic;
        o_mem_addr : out std_logic_vector(15 downto 0);
        i_mem_data : in std_logic_vector(7 downto 0);
        o_mem_we : out std_logic;
        o_mem_en : out std_logic);
end project_reti_logiche;

architecture Behavioral of project_reti_logiche is
    component datapath is
        port (
            i_clk : in std_logic;
            i_rst : in std_logic;
            i_start : in std_logic;
            i_w : in std_logic;
            o_z0 : out std_logic_vector(7 downto 0);
            o_z1 : out std_logic_vector(7 downto 0);
            o_z2 : out std_logic_vector(7 downto 0);
            o_z3 : out std_logic_vector(7 downto 0);
            o_mem_addr : out std_logic_vector(15 downto 0);
            i_mem_data : in std_logic_vector(7 downto 0);
            addr_shift : std_logic;
            ex_shift : std_logic;
            ex_load : std_logic;
            data_load : std_logic);
    end component;
    
    signal addr_shift : std_logic;
    signal ex_shift : std_logic;
    signal ex_load : std_logic;
    signal data_load : std_logic;
    
    type S is (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, S15, S16, S17, S18);
    signal curr_state, next_state : S;
begin
    DATAPATH0: datapath port map(
        i_clk => i_clk, 
        i_rst => i_rst, 
        i_start => i_start, 
        i_w => i_w,
        o_z0 => o_z0, 
        o_z1 => o_z1, 
        o_z2 => o_z2, 
        o_z3 => o_z3,
        o_mem_addr => o_mem_addr, 
        i_mem_data => i_mem_data,
        addr_shift => addr_shift, 
        ex_shift => ex_shift, 
        ex_load => ex_load, 
        data_load => data_load);

    process(i_clk, i_rst)
    begin
        if(i_rst = '1') then
            curr_state <= S0;
        elsif i_clk'event and i_clk = '1' then
            curr_state <= next_state;
        end if;
    end process;
    
    process(curr_state, i_start)
    begin
        next_state <= curr_state;
        case curr_state is
            when S0 =>
                if i_start = '1' then
                    next_state <= S1;
                end if;
            when S1 => next_state <= S2;
            when S2 => next_state <= S3;
            when S3 => next_state <= S4;
            when S4 => next_state <= S5;
            when S5 => next_state <= S6;
            when S6 => next_state <= S7;
            when S7 => next_state <= S8;
            when S8 => next_state <= S9;
            when S9 => next_state <= S10;
            when S10 => next_state <= S11;
            when S11 => next_state <= S12;
            when S12 => next_state <= S13;
            when S13 => next_state <= S14;
            when S14 => next_state <= S15;
            when S15 => next_state <= S16;
            when S16 => next_state <= S17;
            when S17 => next_state <= S18;
            when S18 => next_state <= S0;
        end case;
    end process;
    
    process(curr_state)
    begin
        o_mem_en <= '0';
        o_done <= '0';
        addr_shift <= '0';
        ex_shift <= '0';
        ex_load <= '0';
        data_load <= '0';
        
        case curr_state is
            when S0 => ex_shift <= '1';
            when S1 => ex_shift <= '1';
            when S2 =>
                ex_load <= '1'; 
                addr_shift <= '1';
            when S3 => addr_shift <= '1';
            when S4 => addr_shift <= '1';
            when S5 => addr_shift <= '1';
            when S6 => addr_shift <= '1';
            when S7 => addr_shift <= '1';
            when S8 => addr_shift <= '1';
            when S9 => addr_shift <= '1';
            when S10 => addr_shift <= '1';
            when S11 => addr_shift <= '1';
            when S12 => addr_shift <= '1';
            when S13 => addr_shift <= '1';
            when S14 => addr_shift <= '1';
            when S15 => addr_shift <= '1';
            when S16 => addr_shift <= '1';
            when S17 => 
                addr_shift <= '1';
                o_mem_en <= '1';
                data_load <= '1';
            when S18 => o_done <= '1';
        end case;
    end process;
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity datapath is
    port (
        i_clk : in std_logic;
        i_rst : in std_logic;
        i_start : in std_logic;
        i_w : in std_logic;
        o_z0 : out std_logic_vector(7 downto 0);
        o_z1 : out std_logic_vector(7 downto 0);
        o_z2 : out std_logic_vector(7 downto 0);
        o_z3 : out std_logic_vector(7 downto 0);
        o_mem_addr : out std_logic_vector(15 downto 0);
        i_mem_data : in std_logic_vector(7 downto 0);
        addr_shift : std_logic;
        ex_shift : std_logic;
        ex_load : std_logic;
        data_load : std_logic);
end datapath;

architecture Behavioral of datapath is
    component serial_to_parallel_16 is
        port (
            i_clk : in std_logic;
            i_s : in std_logic;
            o_p : out std_logic_vector(15 downto 0));
    end component;
    
    component serial_to_parallel_2 is
        port (
            i_clk : in std_logic;
            i_s : in std_logic;
            o_p : out std_logic_vector(1 downto 0));
    end component;
    
    signal addr_w : std_logic;
    signal addr_clk : std_logic;
    signal ex_clk : std_logic;
    signal ex_curr : std_logic_vector(1 downto 0);
    signal ex_reg : std_logic_vector(1 downto 0);
    signal data_reg : std_logic_vector(7 downto 0);
begin
    -- serial to parallel address
    with i_start select
        addr_w <= i_w when '1',
                  '0' when '0',
                  'X' when others;
    
    addr_clk <= i_clk and addr_shift;
    
    SERIAL_TO_PARALLEL_ADDR: serial_to_parallel_16 port map(
        i_clk => addr_clk,
        i_s => addr_w,
        o_p => o_mem_addr);
        
    -- serial to parallel exit
    ex_clk <= i_clk and ex_shift;
    
    SERIAL_TO_PARALLEL_EXIT: serial_to_parallel_2 port map(
        i_clk => ex_clk,
        i_s => i_w,
        o_p => ex_curr);
       
    process(i_rst, i_clk, ex_load)
    begin
        if(i_rst = '1') then
            ex_reg <= "00";
        elsif i_clk'event and i_clk = '1' then
            if ex_load = '1' then
                ex_reg <= ex_curr;
            end if;
        end if;
    end process;
    
    -- Output
    process(i_rst, i_clk, data_load)
    begin
        if(i_rst = '1') then
            data_reg <= "00000000";
        elsif i_clk'event and i_clk = '1' then
            if data_load = '1' then
                data_reg <= i_mem_data;
            end if;
        end if;
    end process;
    
    process(data_reg, ex_reg)
    begin
        o_z0 <= "00000000";
        o_z1 <= "00000000";
        o_z2 <= "00000000";
        o_z3 <= "00000000";
        
        case ex_reg is
            when "00" => o_z0 <= data_reg;
            when "01" => o_z1 <= data_reg;
            when "10" => o_z2 <= data_reg;
            when "11" => o_z3 <= data_reg;
            when others =>
        end case;
    end process;
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity serial_to_parallel_16 is
    port (
        i_clk : in std_logic;
        i_s : in std_logic;
        o_p : out std_logic_vector(15 downto 0));
end serial_to_parallel_16;

architecture Behavioral of serial_to_parallel_16 is
    signal q0 : STD_LOGIC;
    signal q1 : STD_LOGIC;
    signal q2: STD_LOGIC;
    signal q3: STD_LOGIC;
    signal q4: STD_LOGIC;
    signal q5: STD_LOGIC;
    signal q6: STD_LOGIC;
    signal q7: STD_LOGIC;
    signal q8: STD_LOGIC;
    signal q9: STD_LOGIC;
    signal q10: STD_LOGIC;
    signal q11: STD_LOGIC;
    signal q12: STD_LOGIC;
    signal q13: STD_LOGIC;
    signal q14: STD_LOGIC;
    signal q15: STD_LOGIC;
begin
    process (i_clk, i_s) is
    begin
        if (i_clk='1' and i_clk'event) then
            q15 <= i_s;
            q14 <= q15;
            q13 <= q14;
            q12 <= q13;
            q11 <= q12;
            q10 <= q11;
            q9 <= q10;
            q8 <= q9;
            q7 <= q8;
            q6 <= q7;
            q5 <= q6;
            q4 <= q5;
            q3 <= q4;
            q2 <= q3;
            q1 <= q2;
            q0 <= q1;
        end if;
    end process;

    o_p <= (q15, q14, q13, q12, q11, q10, q9, q8, q7, q6, q5, q4, q3, q2, q1, q0);
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity serial_to_parallel_2 is
    port (
        i_clk : in std_logic;
        i_s : in std_logic;
        o_p : out std_logic_vector(1 downto 0));
end serial_to_parallel_2;

architecture Behavioral of serial_to_parallel_2 is
    signal q0 : STD_LOGIC;
    signal q1 : STD_LOGIC;
begin
    process (i_clk, i_s) is
    begin
        if (i_clk='1' and i_clk'event) then
            q1 <= i_s;
            q0 <= q1;
        end if;
    end process;

    o_p <= (q1, q0);
end Behavioral;
