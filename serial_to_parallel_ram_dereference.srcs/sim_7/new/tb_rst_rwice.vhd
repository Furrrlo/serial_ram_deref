-- TB EXAMPLE PFRL 2022-2023

--VUNIT%% library vunit_lib; %%-- 
--VUNIT%% context vunit_lib.vunit_context; %%-- 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_unsigned.ALL;
USE std.textio.ALL;

ENTITY tb_rst_rwice IS
    --VUNIT%% generic(runner_cfg: string := runner_cfg_default); %%-- 
END tb_rst_rwice;

ARCHITECTURE projecttb OF tb_rst_rwice IS
    CONSTANT CLOCK_PERIOD : TIME := 100 ns;
    SIGNAL tb_done : STD_LOGIC;
    SIGNAL mem_address : STD_LOGIC_VECTOR (15 DOWNTO 0) := (OTHERS => '0');
    SIGNAL tb_rst : STD_LOGIC := '0';
    SIGNAL tb_start : STD_LOGIC := '0';
    SIGNAL tb_clk : STD_LOGIC := '0';
    SIGNAL mem_o_data, mem_i_data : STD_LOGIC_VECTOR (7 DOWNTO 0);
    SIGNAL enable_wire : STD_LOGIC;
    SIGNAL mem_we : STD_LOGIC;
    SIGNAL tb_z0, tb_z1, tb_z2, tb_z3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
    SIGNAL tb_w : STD_LOGIC;

    CONSTANT SCENARIOLENGTH : INTEGER := 3746;
    SIGNAL scenario_rst : unsigned(0 TO SCENARIOLENGTH - 1)     := "00001111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL scenario_start : unsigned(0 TO SCENARIOLENGTH - 1)   := "00000000000000000001111111111111111110000000000000000000011111111111111111100000000000000000000111111111111111111000000000000000000001111111111111111100000000000000000000111111111111111111000000000000000000001111111111111111110000000000000000000011111111111111111100000000000000000000111111111111100000000000000000000111111111111111111000000000000000000001111111111111111110000000000000000000011111111111111111100000000000000000000111111111111111111000000000000000000001111111111111111110000000000000000000011111111111111111100000000000000000000111111111111111110000000000000000000011111111111111111100000000000000000000111111111111100000000000000000000111111111111111110000000000000000000011111111111111111100000000000000000000111111111111111100000000000000000000111111111111110000000000000000000011111111111111111100000000000000000000111111111111111100000000000000000000111111111111111111000000000000000000001111111111111111110000000000000000000011111111111111111100000000000000000000111111111111111111000000000000000000001111111111111111000000000000000000001111111111111111110000000000000000000011111111111111111100000000000000000000111111111111111111000000000000000000001111111111111111110000000000000000000011111111111111111100000000000000000000111111111111111110000000000000000000011111111111111111100000000000000000000111111111111111111000000000000000000001111111111111111110000000000000000000011111111111111111100000000000000000000111111111100000000000000000000111111111111111110000000000000000000011111111111111000000000000000000001111111111111111100000000000000000000111111111111111111000000000000000000001111111111111111110000000000000000000011111111111111110000000000000000000011111111111111110000000000000000000011111111111111111100000000000000000000111111111111111100000000000000000000111111111111111100000000000000000000111111111111111111000000000000000000000000000000000000000111111111111111111000000000000000000001111111111111111110000000000000000000011111111111111111100000000000000000000111111111111111110000000000000000000011111111111111111100000000000000000000111111111111111111000000000000000000001111111111111111110000000000000000000011111111111110000000000000000000011111111111111111100000000000000000000111111111111111111000000000000000000001111111111111111110000000000000000000011111111111111111100000000000000000000111111111111111111000000000000000000001111111111111111110000000000000000000011111111111111111000000000000000000001111111111111111110000000000000000000011111111111110000000000000000000011111111111111111000000000000000000001111111111111111110000000000000000000011111111111111110000000000000000000011111111111111000000000000000000001111111111111111110000000000000000000011111111111111110000000000000000000011111111111111111100000000000000000000111111111111111111000000000000000000001111111111111111110000000000000000000011111111111111111100000000000000000000111111111111111100000000000000000000111111111111111111000000000000000000001111111111111111110000000000000000000011111111111111111100000000000000000000111111111111111111000000000000000000001111111111111111110000000000000000000011111111111111111000000000000000000001111111111111111110000000000000000000011111111111111111100000000000000000000111111111111111111000000000000000000001111111111111111110000000000000000000011111111110000000000000000000011111111111111111000000000000000000001111111111111100000000000000000000111111111111111110000000000000000000011111111111111111100000000000000000000111111111111111111000000000000000000001111111111111111000000000000000000001111111111111111000000000000000000001111111111111111110000000000000000000011111111111111110000000000000000000011111111111111110000000000000000000011111111111111111100000000000000000000";
    SIGNAL scenario_w : unsigned(0 TO SCENARIOLENGTH - 1)       := "00000000000000000001111001011000011100000000000000000000010100011100000100100000000000000000000111000001101010000000000000000000000001010010000011100000000000000000000000111111111011100000000000000000000000000010010010101101110000000000000000000000101101100111010000000000000000000000011000101001000000000000000000000011011001100011010000000000000000000000110100101011100000000000000000000000010110101010101010000000000000000000000011010000001101001000000000000000000000011110010011111010000000000000000000011111101100001011100000000000000000000011010110111110100000000000000000000001101001110100010100000000000000000000101001101011000000000000000000000111111101010111000000000000000000000011110000100000000000000000000000000000111110011101101100000000000000000000001101110110010000000000000000000001110101110010100000000000000000000000001100000000100000000000000000000000101110111010111111000000000000000000000110111111101000110000000000000000000010101001111000111000000000000000000000001001101101000000000000000000000000001010110101111011000000000000000000000111000100111111110000000000000000000010100110111000000000000000000000000000101111110111111010000000000000000000000110001001111111000000000000000000000011101000000111001100000000000000000000001101000101011100000000000000000000010100001101011111000000000000000000000011011100011111001000000000000000000001010001011100000010000000000000000000010101011010100111100000000000000000000001001111100000000000000000000011000010111111010000000000000000000001100011010101000000000000000000000110010001001011100000000000000000000101111110110010011000000000000000000000011000111001111010000000000000000000001110100100000010000000000000000000011111111000000110000000000000000000010100011000001001100000000000000000000111001110100110000000000000000000000101100101000011100000000000000000000101111010011011100000000000000000000000000000000000000000111100101100001110000000000000000000001010001110000010010000000000000000000011100000110101000000000000000000000000101001000001110000000000000000000000011111111101110000000000000000000000000001001001010110111000000000000000000000010110110011101000000000000000000000001100010100100000000000000000000001101100110001101000000000000000000000011010010101110000000000000000000000001011010101010101000000000000000000000001101000000110100100000000000000000000001111001001111101000000000000000000001111110110000101110000000000000000000001101011011111010000000000000000000000110100111010001010000000000000000000010100110101100000000000000000000011111110101011100000000000000000000001111000010000000000000000000000000000011111001110110110000000000000000000000110111011001000000000000000000000111010111001010000000000000000000000000110000000010000000000000000000000010111011101011111100000000000000000000011011111110100011000000000000000000001010100111100011100000000000000000000000100110110100000000000000000000000000101011010111101100000000000000000000011100010011111111000000000000000000001010011011100000000000000000000000000010111111011111101000000000000000000000011000100111111100000000000000000000001110100000011100110000000000000000000000110100010101110000000000000000000001010000110101111100000000000000000000001101110001111100100000000000000000000101000101110000001000000000000000000001010101101010011110000000000000000000000100111110000000000000000000001100001011111101000000000000000000000110001101010100000000000000000000011001000100101110000000000000000000010111111011001001100000000000000000000001100011100111101000000000000000000000111010010000001000000000000000000001111111100000011000000000000000000001010001100000100110000000000000000000011100111010011000000000000000000000010110010100001110000000000000000000010111101001101110000000000000000000000";
    -- Channel 2 -> MEM[1] -> 162
    -- Channel 1 -> MEM[2] -> 75

    TYPE ram_type IS ARRAY (65535 DOWNTO 0) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL RAM : ram_type := (  51982 => STD_LOGIC_VECTOR(to_unsigned(567, 8)),
                                36361 => STD_LOGIC_VECTOR(to_unsigned(51088, 8)),
                                33616 => STD_LOGIC_VECTOR(to_unsigned(11264, 8)),
                                18488 => STD_LOGIC_VECTOR(to_unsigned(10713, 8)),
                                65248 => STD_LOGIC_VECTOR(to_unsigned(29321, 8)),
                                37559 => STD_LOGIC_VECTOR(to_unsigned(8450, 8)),
                                46708 => STD_LOGIC_VECTOR(to_unsigned(26702, 8)),
                                1106 => STD_LOGIC_VECTOR(to_unsigned(62936, 8)),
                                45850 => STD_LOGIC_VECTOR(to_unsigned(39931, 8)),
                                42352 => STD_LOGIC_VECTOR(to_unsigned(54112, 8)),
                                54612 => STD_LOGIC_VECTOR(to_unsigned(34686, 8)),
                                41065 => STD_LOGIC_VECTOR(to_unsigned(54257, 8)),
                                62077 => STD_LOGIC_VECTOR(to_unsigned(21816, 8)),
                                62999 => STD_LOGIC_VECTOR(to_unsigned(53936, 8)),
                                22266 => STD_LOGIC_VECTOR(to_unsigned(16524, 8)),
                                42821 => STD_LOGIC_VECTOR(to_unsigned(57755, 8)),
                                1238 => STD_LOGIC_VECTOR(to_unsigned(35504, 8)),
                                32092 => STD_LOGIC_VECTOR(to_unsigned(43907, 8)),
                                49664 => STD_LOGIC_VECTOR(to_unsigned(41187, 8)),
                                14811 => STD_LOGIC_VECTOR(to_unsigned(53510, 8)),
                                3545 => STD_LOGIC_VECTOR(to_unsigned(51337, 8)),
                                55080 => STD_LOGIC_VECTOR(to_unsigned(8062, 8)),
                                12296 => STD_LOGIC_VECTOR(to_unsigned(1666, 8)),
                                61119 => STD_LOGIC_VECTOR(to_unsigned(33154, 8)),
                                49059 => STD_LOGIC_VECTOR(to_unsigned(59556, 8)),
                                42894 => STD_LOGIC_VECTOR(to_unsigned(21009, 8)),
                                39744 => STD_LOGIC_VECTOR(to_unsigned(58471, 8)),
                                11643 => STD_LOGIC_VECTOR(to_unsigned(9838, 8)),
                                50431 => STD_LOGIC_VECTOR(to_unsigned(17666, 8)),
                                39808 => STD_LOGIC_VECTOR(to_unsigned(1207, 8)),
                                65018 => STD_LOGIC_VECTOR(to_unsigned(54135, 8)),
                                35324 => STD_LOGIC_VECTOR(to_unsigned(14393, 8)),
                                41075 => STD_LOGIC_VECTOR(to_unsigned(21260, 8)),
                                26798 => STD_LOGIC_VECTOR(to_unsigned(62677, 8)),
                                34494 => STD_LOGIC_VECTOR(to_unsigned(52675, 8)),
                                47353 => STD_LOGIC_VECTOR(to_unsigned(28347, 8)),
                                35713 => STD_LOGIC_VECTOR(to_unsigned(32383, 8)),
                                44367 => STD_LOGIC_VECTOR(to_unsigned(54658, 8)),
                                159 => STD_LOGIC_VECTOR(to_unsigned(10962, 8)),
                                17149 => STD_LOGIC_VECTOR(to_unsigned(31377, 8)),
                                2261 => STD_LOGIC_VECTOR(to_unsigned(65421, 8)),
                                18583 => STD_LOGIC_VECTOR(to_unsigned(8271, 8)),
                                64915 => STD_LOGIC_VECTOR(to_unsigned(63705, 8)),
                                51005 => STD_LOGIC_VECTOR(to_unsigned(25258, 8)),
                                13441 => STD_LOGIC_VECTOR(to_unsigned(24113, 8)),
                                16131 => STD_LOGIC_VECTOR(to_unsigned(42385, 8)),
                                35859 => STD_LOGIC_VECTOR(to_unsigned(34735, 8)),
                                10060 => STD_LOGIC_VECTOR(to_unsigned(18202, 8)),
                                12935 => STD_LOGIC_VECTOR(to_unsigned(9037, 8)),
                                62684 => STD_LOGIC_VECTOR(to_unsigned(13272, 8)),
                                OTHERS => "00000000"-- (OTHERS => '0')
                            );

    COMPONENT project_reti_logiche IS
        PORT (
            i_clk : IN STD_LOGIC;
            i_rst : IN STD_LOGIC;
            i_start : IN STD_LOGIC;
            i_w : IN STD_LOGIC;

            o_z0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
            o_z1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
            o_z2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
            o_z3 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
            o_done : OUT STD_LOGIC;

            o_mem_addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
            i_mem_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            o_mem_we : OUT STD_LOGIC;
            o_mem_en : OUT STD_LOGIC
        );
    END COMPONENT project_reti_logiche;

BEGIN
    UUT : project_reti_logiche
    PORT MAP(
        i_clk => tb_clk,
        i_start => tb_start,
        i_rst => tb_rst,
        i_w => tb_w,

        o_z0 => tb_z0,
        o_z1 => tb_z1,
        o_z2 => tb_z2,
        o_z3 => tb_z3,
        o_done => tb_done,

        o_mem_addr => mem_address,
        o_mem_en => enable_wire,
        o_mem_we => mem_we,
        i_mem_data => mem_o_data
    );


    -- Process for the clock generation
    CLK_GEN : PROCESS IS
    BEGIN
        WAIT FOR CLOCK_PERIOD/2;
        tb_clk <= NOT tb_clk;
    END PROCESS CLK_GEN;


    -- Process related to the memory
    MEM : PROCESS (tb_clk)
    BEGIN
        IF tb_clk'event AND tb_clk = '1' THEN
            IF enable_wire = '1' THEN
                IF mem_we = '1' THEN
                    RAM(conv_integer(mem_address)) <= mem_i_data;
                    mem_o_data <= mem_i_data AFTER 1 ns;
                ELSE
                    mem_o_data <= RAM(conv_integer(mem_address)) AFTER 1 ns; 
                END IF;
            END IF;
        END IF;
    END PROCESS;

    -- This process provides the correct scenario on the signal controlled by the TB
    createScenario : PROCESS (tb_clk)
    BEGIN
        IF tb_clk'event AND tb_clk = '0' THEN
            tb_rst <= scenario_rst(0);
            tb_w <= scenario_w(0);
            tb_start <= scenario_start(0);
            scenario_rst <= scenario_rst(1 TO SCENARIOLENGTH - 1) & '0';
            scenario_w <= scenario_w(1 TO SCENARIOLENGTH - 1) & '0';
            scenario_start <= scenario_start(1 TO SCENARIOLENGTH - 1) & '0';
        END IF;
    END PROCESS;

    -- Process without sensitivity list designed to test the actual component.
    testRoutine : PROCESS IS
    BEGIN
        --VUNIT%% test_runner_setup(runner, runner_cfg); %%-- 

        mem_i_data <= "00000000";
        -- wait for 10000 ns;
        WAIT UNTIL tb_rst = '1';
        WAIT UNTIL tb_rst = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(567, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(567, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(51088, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(51088, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(567, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(567, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(51088, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(51088, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(11264, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(11264, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(10713, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(10713, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(11264, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(11264, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(10713, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(10713, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(29321, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(29321, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(8450, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(8450, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(10713, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(10713, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(29321, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(29321, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(26702, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(26702, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(10713, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(10713, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(29321, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(29321, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(26702, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(26702, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(62936, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(62936, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(10713, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(10713, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(29321, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(29321, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(26702, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(26702, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(39931, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(39931, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(10713, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(10713, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(29321, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(29321, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(26702, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(26702, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(54112, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(54112, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(10713, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(10713, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(29321, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(29321, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(26702, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(26702, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(54112, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(54112, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(34686, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(34686, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(29321, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(29321, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(26702, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(26702, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(54257, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(54257, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(34686, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(34686, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(29321, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(29321, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(21816, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21816, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(54257, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(54257, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(34686, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(34686, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(29321, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(29321, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(21816, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21816, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(54257, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(54257, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(34686, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(34686, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53936, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53936, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(21816, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21816, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(16524, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(16524, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(34686, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(34686, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53936, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53936, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(21816, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21816, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(57755, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(57755, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(34686, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(34686, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53936, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53936, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(21816, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21816, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(57755, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(57755, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(35504, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(35504, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53936, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53936, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(21816, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21816, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(57755, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(57755, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(35504, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(35504, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(43907, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(43907, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(21816, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21816, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(57755, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(57755, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(35504, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(35504, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(41187, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(41187, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(21816, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21816, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(57755, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(57755, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(35504, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(35504, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53510, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53510, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(51337, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(51337, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(57755, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(57755, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(35504, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(35504, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53510, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53510, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(51337, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(51337, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(8062, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(8062, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(35504, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(35504, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53510, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53510, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(1666, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(1666, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(8062, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(8062, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(35504, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(35504, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53510, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53510, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(1666, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(1666, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(8062, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(8062, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(33154, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(33154, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53510, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53510, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(1666, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(1666, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(59556, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(59556, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(33154, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(33154, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53510, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53510, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(1666, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(1666, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(59556, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(59556, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(21009, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21009, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53510, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53510, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(58471, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(58471, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(59556, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(59556, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(21009, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21009, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53510, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53510, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(58471, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(58471, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(59556, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(59556, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(9838, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(9838, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53510, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53510, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(58471, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(58471, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(17666, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(17666, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(9838, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(9838, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53510, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53510, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(58471, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(58471, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(17666, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(17666, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(1207, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(1207, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53510, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53510, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(58471, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(58471, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(17666, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(17666, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(54135, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(54135, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53510, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53510, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(58471, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(58471, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(14393, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(14393, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(54135, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(54135, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53510, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53510, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(58471, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(58471, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(14393, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(14393, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(54135, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(54135, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(21260, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21260, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(62677, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(62677, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(14393, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(14393, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(54135, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(54135, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(21260, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21260, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(62677, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(62677, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(14393, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(14393, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(52675, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(52675, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(21260, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21260, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(62677, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(62677, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(28347, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(28347, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(52675, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(52675, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(21260, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21260, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(62677, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(62677, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(28347, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(28347, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(32383, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(32383, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(21260, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21260, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(62677, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(62677, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(28347, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(28347, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(54658, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(54658, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(21260, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21260, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(10962, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(10962, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(28347, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(28347, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(54658, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(54658, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(21260, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21260, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(10962, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(10962, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(31377, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(31377, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(54658, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(54658, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(21260, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21260, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(10962, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(10962, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(65421, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(65421, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(54658, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(54658, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(21260, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21260, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(10962, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(10962, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(8271, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(8271, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(54658, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(54658, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(21260, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21260, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(10962, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(10962, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(8271, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(8271, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(63705, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(63705, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(21260, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21260, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(25258, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(25258, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(8271, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(8271, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(63705, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(63705, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(21260, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21260, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(25258, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(25258, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(24113, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(24113, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(63705, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(63705, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(21260, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21260, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(25258, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(25258, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(24113, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(24113, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(63705, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(63705, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(42385, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(42385, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(25258, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(25258, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(24113, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(24113, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(34735, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(34735, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(42385, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(42385, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(25258, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(25258, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(24113, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(24113, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(34735, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(34735, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(18202, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(18202, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(25258, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(25258, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(24113, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(24113, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(9037, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(9037, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(18202, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(18202, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(25258, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(25258, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(24113, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(24113, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(13272, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(13272, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(18202, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(18202, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(567, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(567, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(51088, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(51088, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(567, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(567, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(51088, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(51088, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(11264, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(11264, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(10713, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(10713, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(11264, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(11264, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(10713, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(10713, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(29321, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(29321, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(8450, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(8450, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(10713, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(10713, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(29321, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(29321, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(26702, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(26702, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(10713, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(10713, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(29321, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(29321, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(26702, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(26702, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(62936, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(62936, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(10713, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(10713, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(29321, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(29321, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(26702, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(26702, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(39931, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(39931, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(10713, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(10713, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(29321, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(29321, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(26702, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(26702, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(54112, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(54112, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(10713, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(10713, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(29321, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(29321, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(26702, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(26702, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(54112, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(54112, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(34686, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(34686, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(29321, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(29321, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(26702, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(26702, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(54257, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(54257, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(34686, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(34686, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(29321, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(29321, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(21816, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21816, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(54257, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(54257, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(34686, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(34686, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(29321, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(29321, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(21816, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21816, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(54257, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(54257, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(34686, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(34686, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53936, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53936, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(21816, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21816, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(16524, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(16524, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(34686, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(34686, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53936, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53936, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(21816, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21816, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(57755, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(57755, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(34686, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(34686, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53936, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53936, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(21816, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21816, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(57755, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(57755, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(35504, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(35504, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53936, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53936, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(21816, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21816, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(57755, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(57755, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(35504, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(35504, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(43907, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(43907, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(21816, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21816, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(57755, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(57755, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(35504, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(35504, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(41187, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(41187, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(21816, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21816, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(57755, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(57755, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(35504, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(35504, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53510, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53510, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(51337, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(51337, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(57755, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(57755, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(35504, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(35504, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53510, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53510, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(51337, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(51337, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(8062, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(8062, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(35504, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(35504, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53510, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53510, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(1666, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(1666, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(8062, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(8062, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(35504, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(35504, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53510, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53510, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(1666, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(1666, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(8062, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(8062, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(33154, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(33154, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53510, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53510, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(1666, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(1666, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(59556, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(59556, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(33154, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(33154, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53510, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53510, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(1666, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(1666, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(59556, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(59556, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(21009, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21009, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53510, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53510, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(58471, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(58471, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(59556, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(59556, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(21009, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21009, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53510, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53510, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(58471, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(58471, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(59556, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(59556, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(9838, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(9838, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53510, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53510, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(58471, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(58471, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(17666, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(17666, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(9838, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(9838, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53510, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53510, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(58471, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(58471, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(17666, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(17666, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(1207, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(1207, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53510, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53510, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(58471, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(58471, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(17666, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(17666, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(54135, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(54135, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53510, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53510, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(58471, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(58471, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(14393, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(14393, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(54135, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(54135, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(53510, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(53510, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(58471, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(58471, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(14393, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(14393, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(54135, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(54135, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(21260, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21260, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(62677, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(62677, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(14393, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(14393, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(54135, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(54135, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(21260, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21260, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(62677, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(62677, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(14393, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(14393, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(52675, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(52675, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(21260, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21260, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(62677, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(62677, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(28347, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(28347, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(52675, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(52675, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(21260, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21260, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(62677, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(62677, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(28347, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(28347, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(32383, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(32383, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(21260, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21260, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(62677, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(62677, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(28347, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(28347, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(54658, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(54658, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(21260, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21260, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(10962, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(10962, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(28347, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(28347, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(54658, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(54658, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(21260, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21260, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(10962, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(10962, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(31377, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(31377, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(54658, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(54658, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(21260, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21260, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(10962, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(10962, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(65421, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(65421, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(54658, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(54658, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(21260, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21260, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(10962, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(10962, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(8271, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(8271, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(54658, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(54658, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(21260, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21260, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(10962, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(10962, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(8271, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(8271, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(63705, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(63705, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(21260, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21260, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(25258, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(25258, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(8271, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(8271, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(63705, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(63705, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(21260, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21260, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(25258, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(25258, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(24113, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(24113, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(63705, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(63705, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(21260, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(21260, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(25258, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(25258, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(24113, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(24113, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(63705, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(63705, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(42385, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(42385, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(25258, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(25258, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(24113, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(24113, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(34735, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(34735, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(42385, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(42385, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(25258, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(25258, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(24113, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(24113, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(34735, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(34735, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(18202, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(18202, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(25258, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(25258, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(24113, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(24113, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(9037, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(9037, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(18202, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(18202, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
    
        WAIT UNTIL tb_start = '1';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (poststart Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (poststart Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (poststart Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (poststart Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(25258, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(25258, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(24113, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(24113, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(13272, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(13272, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(18202, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(18202, 8)))  severity failure;        
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
     
        --VIVADO-START%% 
        ASSERT false REPORT "Simulation Ended! TEST PASSATO (EXAMPLE)" SEVERITY failure; 
        --VIVADO-END%% 

        --VUNIT%% test_runner_cleanup(runner); %%-- 
    END PROCESS testRoutine;

    --VUNIT%% test_runner_watchdog(runner, CLOCK_PERIOD * SCENARIOLENGTH); %%-- 

END projecttb;