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
            i_w : in std_logic;
            o_z0 : out std_logic_vector(7 downto 0);
            o_z1 : out std_logic_vector(7 downto 0);
            o_z2 : out std_logic_vector(7 downto 0);
            o_z3 : out std_logic_vector(7 downto 0);
            o_mem_addr : out std_logic_vector(15 downto 0);
            i_mem_data : in std_logic_vector(7 downto 0);
            addr_shift : in std_logic;
            ex_shift : in std_logic;
            ex_load : in std_logic;
            data_load : in std_logic;
            o_done : in std_logic);
    end component;
    
    signal addr_shift : std_logic;
    signal ex_shift : std_logic;
    signal ex_load : std_logic;
    signal data_load : std_logic;
    signal s_done : std_logic;
    
    type S is (S0, S1, S2, S3, S4, S5, S6, S7, S8);
    signal curr_state, next_state : S;
begin
    o_done <= s_done;
    o_mem_we <= '0';
    DATAPATH0: datapath port map(
        i_clk => i_clk, 
        i_rst => i_rst,
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
        data_load => data_load,
        o_done => s_done);

    process(i_clk, i_rst)
    begin
        if(i_rst = '1') then
            curr_state <= S0;
        elsif (i_clk'event and i_clk = '1') then
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
            when S2 =>
                if i_start = '0' then
                    next_state <= S3;
                else -- if i_start = '1' then
                    next_state <= S4;
                end if;
            when S3 => next_state <= S6;
            when S4 =>
                if i_start = '1' then
                    next_state <= S5;
                else -- if i_start = '0' then
                    next_state <= S6;
                end if;
            when S5 =>
                if i_start = '0' then
                    next_state <= S6;
                end if;
            when S6 => next_state <= S7;
            when S7 => next_state <= S8;
            when S8 => next_state <= S0;
        end case;
    end process;
    
    process(curr_state)
    begin
        o_mem_en <= '0';
        s_done <= '0';
        addr_shift <= '0';
        ex_shift <= '0';
        ex_load <= '0';
        data_load <= '0';
        
        case curr_state is
            when S0 =>
            when S1 => ex_shift <= '1';
            when S2 => ex_shift <= '1';
            when S3 => ex_load <= '1';
            when S4 => 
                ex_load <= '1';
                addr_shift <= '1';
            when S5 => addr_shift <= '1';
            when S6 => o_mem_en <= '1';
            when S7 => data_load <= '1';
            when S8 => s_done <= '1';
        end case;
    end process;
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity datapath is
    port (
        i_clk : in std_logic;
        i_rst : in std_logic;
        i_w : in std_logic;
        o_z0 : out std_logic_vector(7 downto 0);
        o_z1 : out std_logic_vector(7 downto 0);
        o_z2 : out std_logic_vector(7 downto 0);
        o_z3 : out std_logic_vector(7 downto 0);
        o_mem_addr : out std_logic_vector(15 downto 0);
        i_mem_data : in std_logic_vector(7 downto 0);
        addr_shift : in std_logic;
        ex_shift : in std_logic;
        ex_load : in std_logic;
        data_load : in std_logic;
        o_done : in std_logic);
end datapath;

architecture Behavioral of datapath is
    component serial_to_parallel_16 is
        port (
            i_clk : in std_logic;
            i_rst : in std_logic;
            i_en : in std_logic;
            i_s : in std_logic;
            o_p : out std_logic_vector(15 downto 0));
    end component;
    
    component serial_to_parallel_2 is
        port (
            i_clk : in std_logic;
            i_en : in std_logic;
            i_s : in std_logic;
            o_p : out std_logic_vector(1 downto 0));
    end component;
    
    component out_reg is
        port (
            i_clk : in std_logic;
            i_rst : in std_logic;
            reg_load : in std_logic;
            i_mem_data : in std_logic_vector(7 downto 0);
            o_done : in std_logic;
            o_data : out std_logic_vector(7 downto 0));
    end component;
    
    signal w1 : std_logic;
    signal ex_curr : std_logic_vector(1 downto 0);
    signal ex_reg : std_logic_vector(1 downto 0);
    signal z0_reg_load, z1_reg_load, z2_reg_load, z3_reg_load : std_logic;
    signal rst_shift_regs : std_logic;
begin
    -- Delay w by 1 clock cycle, so it can be properly be read
    process(i_clk, i_w)
    begin
        if i_clk'event and i_clk = '1' then
            w1 <= i_w;
        end if;
    end process;

    -- serial to parallel address
    rst_shift_regs <= i_rst or o_done;
    SERIAL_TO_PARALLEL_ADDR: serial_to_parallel_16 port map(
        i_clk => i_clk,
        i_rst => rst_shift_regs,
        i_en => addr_shift,
        i_s => w1,
        o_p => o_mem_addr);
        
    -- serial to parallel exit
    SERIAL_TO_PARALLEL_EXIT: serial_to_parallel_2 port map(
        i_clk => i_clk,
        i_en => ex_shift,
        i_s => w1,
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
    
    z0_reg_load <= data_load and not ex_reg(1) and not ex_reg(0);
    ZO_REG: out_reg port map(
            i_clk => i_clk,
            i_rst => i_rst,
            reg_load => z0_reg_load,
            i_mem_data => i_mem_data,
            o_done => o_done,
            o_data => o_z0);    
            
    z1_reg_load <= data_load and not ex_reg(1) and ex_reg(0);
    Z1_REG: out_reg port map(
            i_clk => i_clk,
            i_rst => i_rst,
            reg_load => z1_reg_load,
            i_mem_data => i_mem_data,
            o_done => o_done,
            o_data => o_z1);    
            
    z2_reg_load <= data_load and ex_reg(1) and not ex_reg(0);
    Z2_REG: out_reg port map(
            i_clk => i_clk,
            i_rst => i_rst,
            reg_load => z2_reg_load,
            i_mem_data => i_mem_data,
            o_done => o_done,
            o_data => o_z2);    
            
    z3_reg_load <= data_load and ex_reg(1) and ex_reg(0);
    Z3_REG: out_reg port map(
            i_clk => i_clk,
            i_rst => i_rst,
            reg_load => z3_reg_load,
            i_mem_data => i_mem_data,
            o_done => o_done,
            o_data => o_z3);
        
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity serial_to_parallel_16 is
    port (
        i_clk : in std_logic;
        i_rst : in std_logic;
        i_en : in std_logic;
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
    process (i_clk, i_rst, i_en, i_s) is
    begin
        if(i_rst = '1') then
            q15 <= '0';
            q14 <= '0';
            q13 <= '0';
            q12 <= '0';
            q11 <= '0';
            q10 <= '0';
            q9 <= '0';
            q8 <= '0';
            q7 <= '0';
            q6 <= '0';
            q5 <= '0';
            q4 <= '0';
            q3 <= '0';
            q2 <= '0';
            q1 <= '0';
            q0 <= '0';
        elsif (i_clk='1' and i_clk'event and i_en = '1') then
            q0 <= i_s;
            q1 <= q0;
            q2 <= q1;
            q3 <= q2;
            q4 <= q3;
            q5 <= q4;
            q6 <= q5;
            q7 <= q6;
            q8 <= q7;
            q9 <= q8;
            q10 <= q9;
            q11 <= q10;
            q12 <= q11;
            q13 <= q12;
            q14 <= q13;
            q15 <= q14;
        end if;
    end process;

    o_p <= (q15, q14, q13, q12, q11, q10, q9, q8, q7, q6, q5, q4, q3, q2, q1, q0);
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity serial_to_parallel_2 is
    port (
        i_clk : in std_logic;
        i_en : in std_logic;
        i_s : in std_logic;
        o_p : out std_logic_vector(1 downto 0));
end serial_to_parallel_2;

architecture Behavioral of serial_to_parallel_2 is
    signal q0 : STD_LOGIC;
    signal q1 : STD_LOGIC;
begin
    process (i_clk, i_en, i_s) is
    begin
        if (i_clk='1' and i_clk'event and i_en = '1') then
            q0 <= i_s;
            q1 <= q0;
        end if;
    end process;

    o_p <= (q1, q0);
end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity out_reg is
    port (
        i_clk : in std_logic;
        i_rst : in std_logic;
        reg_load : in std_logic;
        i_mem_data : in std_logic_vector(7 downto 0);
        o_done : in std_logic;
        o_data : out std_logic_vector(7 downto 0));
end out_reg;

architecture Behavioral of out_reg is
    signal data_reg : STD_LOGIC_VECTOR(7 downto 0);
begin

    process(i_rst, i_clk, reg_load)
    begin
        if(i_rst = '1') then
            data_reg <= "00000000";
        elsif (i_clk'event and i_clk = '1') then
            if reg_load = '1' then
                data_reg <= i_mem_data;
            end if;
        end if;
    end process;

    o_data <= "00000000" when (o_done='0') else
               data_reg when (o_done='1') else
               "XXXXXXXX";
end Behavioral;
