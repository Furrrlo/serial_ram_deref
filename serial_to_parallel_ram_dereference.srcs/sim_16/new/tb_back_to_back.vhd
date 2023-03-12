-- TB EXAMPLE PFRL 2022-2023

-- Generated using: 
-- python3 generate_vivado_testbench.py \
--    --seed 391139476649114135631958127471633102400945354649191265037729805155778922234030887055583893238816750616954870097205264644713399636495984272654765011863187213633969820352010559845485014449515735436137487475020252914421204733721774300925723725361962826725500407262526704444094921676086539689967446888294400714481884585802916964726307792952519168484153989337710847626747395614825405561162821395699687802317090002326249367825119685818441814386849995174158341751518690545190787666016955440294849365456391985498171633839937435226926840261559178312033288265534067790923780969647324183901396726467536585961599934950629912581763963299340527137433288622536423127560413750506969645627258435033617372346538905984281038556088440173521700532123575788029862880155067042558187780694322977055744076107537905678616850580894146508838968690204029216530901125635174722669613233847747471487719497760110309662966606653644010512348709269427315820635410059843060974035187796231962369402723451732955646386579317465329218474651265671709675641218565930385532705565508492956401219364173749662318465204952830163796940072383035696395613941428350095486046212549875544786469938832608708000817037768914052143235176952971829919824504956156744865487472371348320013254853560961150474981258687803890972994005229030334757174237217726290149412853068622763993506595870627572569288381694832933567368841186138361684376538083013995418810533381080894145691761789536448734921197912209532264280828819539147088023803515562697170549136826673322085548978092136029213072891624867599544326719444088224329864967470263053560522297919041555651296769177450997128613592688592528665850017730719274126982310869789198021933085375950152721422112669702860817181152278064809526106739842053722483801807941216034327502374752084824303857633224545899361700735696740291300611337443801045944556923641223127264795217727894268470490779418260022226363146607601185134632026237821615058956358185963118010466777912724217095072000679293759915918213790107935704108441614822434166271212658379341729999714137550956423263434364632510005731365947701303372290310644286646332547407161719635342241569140973746040684032617449729550064748899724230439131544867273960942971370872005469656591857467098405166554078559130703871277265172186385321760637924229438979132481450570959985459442712293727520913013156414821279425037411587783813690125965926536414774990580180457413606433705400093887178289006484126448864125588401088983787869995612237238986788933729018718552280691824376100609582300027214016358610506917053694579939396212930864201752702767912917276982444346325195856527934640270964453892208936019870197229296656981794365291603966636509876912911319891970034651503248231602111691863576482955116308366357310017135064115392626404925031913545717761999262717786441828236444101443354967031069988559052040506030730249214877162020396413711276829272458480250282611064323228947342052786609614485261115149275911158967716510093006555937241346946402902613140122918988006482990756618210204260205437470098870830564341956528942895039244120540097450167673419038113462379170334110005074240647387037108791164331177140830244558665359374837027507806999779517655505820918437375514191871494494550431873561705410545247596328954482385482989517292002285296351906578357260232518876432034248657862022280860207758729735153196830838968385924268546893492019295924078434151575447457868848946711970404003797098729906109012359656147286480435615120592631875744247580778285006604288404352593871199851681693797481049817371979555658436870748343982492050642295925721866464855594890998846241037649544053134224348944865702521820220184327657139698206328792762518566878330962173444035071648618503876454059717064920915064663616881348287635792495676771744123721238309355195066389468436055383774965474935521214122432427761060639738547466815795917577791192688245442998317764204099337585776230756413444442361453669042643622987644287910363523444408947104357537564758621868801482786299929524316997219112108680803512313629449257155651425738595084552276012124288172893138959261547605329948415895937074683451070338579153611968682773866975987828661389759191377711070172113223443636524335936354142222103852309306231141650339584748684302626978007189984192971542041271818319485310925738738849121510498622080022273965960721871037867000366306574237521523503838601360454193666000270709898015511148516287403385481651449887789738647640674703373146720128654301304255696619326057443169568682750951455763654814074419511948396718602356016654091369103762282640847359128881723349818027931460409813177070532626310338143434501975679394565235816313077200189404189004873582224730296211688989884190276659866170078677108240231851054416546894635505180742812055444572841958269132838943560478324845374965286346011254093435150058091281972442936714824547185670528046430907667935880099454383016224637494306726382626997289025535671414988762823130869890323902745912286754368295761166237604618452785393611992651240758051943679169089815223026675398919987603164306981648530347182492958852759395461392235552923770219630941913092319760213570915052659466712985031703001351212373576349383127140511210877077643863424816491167859151564458961829530998543494227571265326339713533187659880659586367089286935564910795233245701622132087001790116909152969852885750666812081792520018084326024020976784025089877172670311767629621621395226636209218668916391177029709696775009888648038026019445444327659076437552346757499648262172086003972524924341450670005700820305103349769362542845366000112838748829783647175233444339178493704220070904259046731079129378687630316577974215671944362024817947448692725833385643754256535496538268867101099975114565824747367814382523507220631640676406147723632751502629918794871090283773468772329892742880291881528027082244711054512856340799317190987172251961529293419758725759439790255823838467793275905899717146224052127044481453222386892793886874243896016361468094879393505395800448056906910100409789012991072798968946282326262219413846927372594341351657089605389634127348802 \
--    --iterations 100 \
--    --computation_cycles 4 \
--    --multiple_resets 0.65 \
--    tb_back_to_back 

--VUNIT%% library vunit_lib; %%-- 
--VUNIT%% context vunit_lib.vunit_context; %%-- 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_unsigned.ALL;
USE std.textio.ALL;

ENTITY tb_back_to_back IS
    --VUNIT%% generic(runner_cfg: string := runner_cfg_default); %%-- 
END tb_back_to_back;

ARCHITECTURE projecttb OF tb_back_to_back IS
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

    CONSTANT SCENARIOLENGTH : INTEGER := 2118;
    SIGNAL scenario_rst : unsigned(0 TO SCENARIOLENGTH - 1)     := "000000001110000010000000000010000000000000010000001000000000000000000100000000000000000000000000000000000000000001000000000000000000000000000010000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000100000000000000100000001000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000001000000000000000000000000000000000000001000000000000000000000000000000000000000000001000100000000000000000000000000000000000000000000000000000010000000000000000010000000000000000000000000000000001000000000000000000000000000000000000001000000000100000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000100000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000100000001000000000000000000000000000000000000100000000000000000000010000000000000000000000000000000000000000000000000000000001000000000000000000000000000100001000000000000000000100000000000000000000000000000000000000001000000000000010000000000000000000000100000000000000000000000000000000000001000000100000000000000000010000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000100000000000010000000100000000000000010000000000000010000000000000000000000100000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000010000000000000100000000000000001000000000000000000000000000000000010000000000000000000000100000000000000000000000000000000000000010000000000000000000000000000000000000001000000000000000000000000000000000000000000000001000000000000000000000000000000000010000000000000000000000000000000010000000000000010000000000000000000000010000000000000000000000";
    SIGNAL scenario_start : unsigned(0 TO SCENARIOLENGTH - 1)   := "000000000000001111111111111111111111111111111111111111111111111111100001111111111111111110000111111111111000000000000011111111111111111000000001111111111111111100001111111111111110000000000000000111111111111111111000011111111111111111000011111111111111111111100111111011111111111111111100001111111111111111100001111111111111111110000111111111111110001111111111111111000011111111111111101111111111111111000011111111111111111100001111111111111111110000000111111111111111111000011111111111111110000111111111111111001111111111111111000011111111111111111000011111111011111111111111111100000000000000000000001111111111111111100001111111111111110000111000100111111111111111111000011111111111111111100001111111110000111111111111110111111111111111110000000000000000000111111111111111100000000000000000000011111111101111111111111111110000111111111111111111000011111111111111100000000000000000000011111111111111111100000000001111111111111110000111111111111111111000000011111111111111111100001111111111110000000000000000111111000111111111111111111000000000000000000011111111111111111000000111111111111111110000111111111111111110000000000000000111111111111111111000000000001111000111111111111111101111111111111111100001111111111111111110000011111111110111111111111100000000000011111111111111111100000000000000000011111100001111111111111111111111111111111100011111111111111111100001111111111111111110000111111111111111110000000000011111111111111111100000000011111111111110000111100011111111111110000111111111111111111111111111110000000111111111111111111000000000000000000000111111111111111100001111111111111111110000000000000000000000111111111111111110000111111111111111111000000000000000000000111111111111111111000011111111111111111000000000000000000000011111111111111100000000000000001111111111111111111111111100000000111111111111111111000011111111110001111111111111111110011111111111111111000011111111111111111100111111111111111100001111111111111110000000011111111111111111000011111111111111111100000000011111111111111111100000000000000001111111111111111110000111111110011111111111110011111111111111111100000011111111111111110000";
    SIGNAL scenario_w : unsigned(0 TO SCENARIOLENGTH - 1)       := "000000000000000010110110001010010111100101000110010101110001110000100001111101000101001000000111101010000000000000000000110111100010110000000001011010011110000000001010011110111010000000000000000111110010110111100000000100110111001101000011101101110101110000000111001010110101100001101000001011010001100001000001111101010110110010000001011001011010001111101001011000000001111000100110100111000111010000000010111111110111101100001011010101001000010000000001110010000001100000000110000010110110000111011010000110001111000101001111000000100100110000110000001101100000101010000000001100000000000000000000001110010001101011100001011011100010110000001000100111100011010100000000001110100010111110100001011110110000101110010010110011001111000101110000000000000000000101111100100110000000000000000000000010101000101010010101010110100000101100110001100010000000110010011101000000000000000000000001100100000111101100000000001110100010011000000101100010010101111000000001101110110011010000000111110000000000000000000000111110000001011011110000101000000000000000000011101111010100011000000001011011011011100000011101111101011000000000000000000111001011111110011000000000001111000101100100011100101110110011111110000001010011011100010110000001101111100101011000110100000000000001110110101011100000000000000000000001110100001110000010110111110000111100011100000110101000110101100000011011010001110010000111101110100011110000000000001111000111010101000000000011100000011010000011100011100101011010000011000001100011010110001100110000000111111101101000000000000000000000000000111110011010011100000111010110000100110000000000000000000000011010010110000110000111010110001101000000000000000000000000001111001001100000000000100011001111001000000000000000000000001110100110111000000000000000000110000000100000101011001100000000101010000010100100000010110101010001111111111011100110010101001100001100000000100001011010101000101110000111001000000010100110110110000000010101011010101111000010111010110011111100000000011111100000111000100000000000000000110001111101101100000111100010000110001001110000110110100001001100000011110010101111010000";
    -- Channel 2 -> MEM[1] -> 162
    -- Channel 1 -> MEM[2] -> 75

    TYPE ram_type IS ARRAY (65535 DOWNTO 0) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL RAM : ram_type := (  42388 => STD_LOGIC_VECTOR(to_unsigned(11521, 8)),
                                22690 => STD_LOGIC_VECTOR(to_unsigned(1906, 8)),
                                24147 => STD_LOGIC_VECTOR(to_unsigned(1867, 8)),
                                19433 => STD_LOGIC_VECTOR(to_unsigned(36808, 8)),
                                14561 => STD_LOGIC_VECTOR(to_unsigned(16637, 8)),
                                59556 => STD_LOGIC_VECTOR(to_unsigned(30532, 8)),
                                848 => STD_LOGIC_VECTOR(to_unsigned(16963, 8)),
                                28438 => STD_LOGIC_VECTOR(to_unsigned(655, 8)),
                                27104 => STD_LOGIC_VECTOR(to_unsigned(533, 8)),
                                5085 => STD_LOGIC_VECTOR(to_unsigned(47949, 8)),
                                58812 => STD_LOGIC_VECTOR(to_unsigned(18954, 8)),
                                19917 => STD_LOGIC_VECTOR(to_unsigned(15509, 8)),
                                45356 => STD_LOGIC_VECTOR(to_unsigned(20829, 8)),
                                13760 => STD_LOGIC_VECTOR(to_unsigned(25273, 8)),
                                19961 => STD_LOGIC_VECTOR(to_unsigned(55330, 8)),
                                54810 => STD_LOGIC_VECTOR(to_unsigned(21229, 8)),
                                26818 => STD_LOGIC_VECTOR(to_unsigned(65093, 8)),
                                60121 => STD_LOGIC_VECTOR(to_unsigned(40533, 8)),
                                22892 => STD_LOGIC_VECTOR(to_unsigned(27279, 8)),
                                14936 => STD_LOGIC_VECTOR(to_unsigned(46819, 8)),
                                28983 => STD_LOGIC_VECTOR(to_unsigned(46236, 8)),
                                12752 => STD_LOGIC_VECTOR(to_unsigned(9587, 8)),
                                65403 => STD_LOGIC_VECTOR(to_unsigned(17306, 8)),
                                54561 => STD_LOGIC_VECTOR(to_unsigned(43571, 8)),
                                58380 => STD_LOGIC_VECTOR(to_unsigned(18535, 8)),
                                12379 => STD_LOGIC_VECTOR(to_unsigned(51801, 8)),
                                46131 => STD_LOGIC_VECTOR(to_unsigned(24301, 8)),
                                12623 => STD_LOGIC_VECTOR(to_unsigned(51557, 8)),
                                18822 => STD_LOGIC_VECTOR(to_unsigned(62960, 8)),
                                45686 => STD_LOGIC_VECTOR(to_unsigned(51240, 8)),
                                43011 => STD_LOGIC_VECTOR(to_unsigned(36626, 8)),
                                18647 => STD_LOGIC_VECTOR(to_unsigned(19059, 8)),
                                7051 => STD_LOGIC_VECTOR(to_unsigned(59861, 8)),
                                41358 => STD_LOGIC_VECTOR(to_unsigned(23188, 8)),
                                26383 => STD_LOGIC_VECTOR(to_unsigned(46320, 8)),
                                50848 => STD_LOGIC_VECTOR(to_unsigned(20682, 8)),
                                53629 => STD_LOGIC_VECTOR(to_unsigned(14488, 8)),
                                63334 => STD_LOGIC_VECTOR(to_unsigned(42576, 8)),
                                14637 => STD_LOGIC_VECTOR(to_unsigned(48487, 8)),
                                20247 => STD_LOGIC_VECTOR(to_unsigned(39270, 8)),
                                15948 => STD_LOGIC_VECTOR(to_unsigned(28583, 8)),
                                41487 => STD_LOGIC_VECTOR(to_unsigned(170, 8)),
                                38234 => STD_LOGIC_VECTOR(to_unsigned(50652, 8)),
                                52322 => STD_LOGIC_VECTOR(to_unsigned(61899, 8)),
                                6458 => STD_LOGIC_VECTOR(to_unsigned(45621, 8)),
                                36987 => STD_LOGIC_VECTOR(to_unsigned(30033, 8)),
                                5196 => STD_LOGIC_VECTOR(to_unsigned(23122, 8)),
                                50351 => STD_LOGIC_VECTOR(to_unsigned(61317, 8)),
                                47924 => STD_LOGIC_VECTOR(to_unsigned(51957, 8)),
                                960 => STD_LOGIC_VECTOR(to_unsigned(26395, 8)),
                                7620 => STD_LOGIC_VECTOR(to_unsigned(25766, 8)),
                                46981 => STD_LOGIC_VECTOR(to_unsigned(10910, 8)),
                                24227 => STD_LOGIC_VECTOR(to_unsigned(17199, 8)),
                                23406 => STD_LOGIC_VECTOR(to_unsigned(56886, 8)),
                                28588 => STD_LOGIC_VECTOR(to_unsigned(61919, 8)),
                                38899 => STD_LOGIC_VECTOR(to_unsigned(37412, 8)),
                                25320 => STD_LOGIC_VECTOR(to_unsigned(18791, 8)),
                                25714 => STD_LOGIC_VECTOR(to_unsigned(53299, 8)),
                                23036 => STD_LOGIC_VECTOR(to_unsigned(16616, 8)),
                                39819 => STD_LOGIC_VECTOR(to_unsigned(62648, 8)),
                                48801 => STD_LOGIC_VECTOR(to_unsigned(10970, 8)),
                                1421 => STD_LOGIC_VECTOR(to_unsigned(30160, 8)),
                                55992 => STD_LOGIC_VECTOR(to_unsigned(9007, 8)),
                                53262 => STD_LOGIC_VECTOR(to_unsigned(148, 8)),
                                33500 => STD_LOGIC_VECTOR(to_unsigned(39897, 8)),
                                34702 => STD_LOGIC_VECTOR(to_unsigned(47147, 8)),
                                54379 => STD_LOGIC_VECTOR(to_unsigned(18392, 8)),
                                55865 => STD_LOGIC_VECTOR(to_unsigned(8532, 8)),
                                28303 => STD_LOGIC_VECTOR(to_unsigned(28021, 8)),
                                58282 => STD_LOGIC_VECTOR(to_unsigned(8838, 8)),
                                33192 => STD_LOGIC_VECTOR(to_unsigned(48107, 8)),
                                54333 => STD_LOGIC_VECTOR(to_unsigned(15329, 8)),
                                19157 => STD_LOGIC_VECTOR(to_unsigned(57495, 8)),
                                8401 => STD_LOGIC_VECTOR(to_unsigned(19065, 8)),
                                54835 => STD_LOGIC_VECTOR(to_unsigned(63623, 8)),
                                64320 => STD_LOGIC_VECTOR(to_unsigned(3948, 8)),
                                14759 => STD_LOGIC_VECTOR(to_unsigned(34736, 8)),
                                54803 => STD_LOGIC_VECTOR(to_unsigned(16379, 8)),
                                21187 => STD_LOGIC_VECTOR(to_unsigned(44159, 8)),
                                44136 => STD_LOGIC_VECTOR(to_unsigned(40597, 8)),
                                62048 => STD_LOGIC_VECTOR(to_unsigned(61896, 8)),
                                18041 => STD_LOGIC_VECTOR(to_unsigned(43076, 8)),
                                6766 => STD_LOGIC_VECTOR(to_unsigned(33442, 8)),
                                4113 => STD_LOGIC_VECTOR(to_unsigned(31255, 8)),
                                691 => STD_LOGIC_VECTOR(to_unsigned(41690, 8)),
                                41124 => STD_LOGIC_VECTOR(to_unsigned(7229, 8)),
                                54765 => STD_LOGIC_VECTOR(to_unsigned(31217, 8)),
                                65395 => STD_LOGIC_VECTOR(to_unsigned(23056, 8)),
                                21260 => STD_LOGIC_VECTOR(to_unsigned(2290, 8)),
                                34218 => STD_LOGIC_VECTOR(to_unsigned(50489, 8)),
                                14450 => STD_LOGIC_VECTOR(to_unsigned(18159, 8)),
                                5339 => STD_LOGIC_VECTOR(to_unsigned(4405, 8)),
                                22191 => STD_LOGIC_VECTOR(to_unsigned(9098, 8)),
                                60223 => STD_LOGIC_VECTOR(to_unsigned(41220, 8)),
                                61553 => STD_LOGIC_VECTOR(to_unsigned(49790, 8)),
                                36790 => STD_LOGIC_VECTOR(to_unsigned(220, 8)),
                                12737 => STD_LOGIC_VECTOR(to_unsigned(21142, 8)),
                                50402 => STD_LOGIC_VECTOR(to_unsigned(34030, 8)),
                                55827 => STD_LOGIC_VECTOR(to_unsigned(28784, 8)),
                                12989 => STD_LOGIC_VECTOR(to_unsigned(62169, 8)),
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_rst = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_rst = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_rst = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_rst = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(30532, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(30532, 8)))  severity failure;
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(16963, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(16963, 8)))  severity failure;
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z0 = std_logic_vector(to_unsigned(655, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(655, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_rst = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;

        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(533, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(533, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(47949, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(47949, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(18954, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(18954, 8)))  severity failure;
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
        ASSERT tb_z0 = std_logic_vector(to_unsigned(15509, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(15509, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(18954, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(18954, 8)))  severity failure;
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_rst = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(21229, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(21229, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(65093, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(65093, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(65093, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(65093, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(40533, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(40533, 8)))  severity failure;
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(46819, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(46819, 8)))  severity failure;
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(9587, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(9587, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(9587, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(9587, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(17306, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(17306, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z0 = std_logic_vector(to_unsigned(18535, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(18535, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
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
        ASSERT tb_z0 = std_logic_vector(to_unsigned(51801, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(51801, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(51557, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(51557, 8)))  severity failure;
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
        ASSERT tb_z0 = std_logic_vector(to_unsigned(62960, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(62960, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(51557, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(51557, 8)))  severity failure;
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z0 = std_logic_vector(to_unsigned(36626, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(36626, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(19059, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(19059, 8)))  severity failure;
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(59861, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(59861, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(19059, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(19059, 8)))  severity failure;
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_rst = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(20682, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(20682, 8)))  severity failure;
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(14488, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(14488, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(20682, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(20682, 8)))  severity failure;
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(39270, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(39270, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(28583, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(28583, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(50652, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(50652, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(61899, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(61899, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
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
        ASSERT tb_z0 = std_logic_vector(to_unsigned(45621, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(45621, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(61899, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(61899, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(30033, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(30033, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(23122, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(23122, 8)))  severity failure;
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(61317, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(61317, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(23122, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(23122, 8)))  severity failure;
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(51957, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(51957, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(26395, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(26395, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z0 = std_logic_vector(to_unsigned(10910, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(10910, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z0 = std_logic_vector(to_unsigned(56886, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(56886, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
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
        ASSERT tb_z0 = std_logic_vector(to_unsigned(56886, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(56886, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(61919, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(61919, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_rst = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;

        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(37412, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(37412, 8)))  severity failure;
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(16616, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(16616, 8)))  severity failure;
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(30160, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(30160, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(9007, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(9007, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_rst = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z0 = std_logic_vector(to_unsigned(18392, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(18392, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
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
        ASSERT tb_z0 = std_logic_vector(to_unsigned(8532, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(8532, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
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
        ASSERT tb_z0 = std_logic_vector(to_unsigned(8532, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(8532, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(28021, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(28021, 8)))  severity failure;
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_rst = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;

        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(8838, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(8838, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_rst = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_rst = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;

        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(63623, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(63623, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(3948, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(3948, 8)))  severity failure;
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(34736, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(34736, 8)))  severity failure;
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(16379, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(16379, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(34736, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(34736, 8)))  severity failure;
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(44159, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(44159, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(44159, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(44159, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(40597, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(40597, 8)))  severity failure;
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z0 = std_logic_vector(to_unsigned(61896, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(61896, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
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
        ASSERT tb_z0 = std_logic_vector(to_unsigned(43076, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(43076, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(33442, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(33442, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_rst = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_rst = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;

        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(41690, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(41690, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(7229, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(7229, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        WAIT UNTIL tb_rst = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;

        WAIT UNTIL tb_done = '1';
        --WAIT UNTIL rising_edge(tb_clk);
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) & " expected " & integer'image(to_integer(to_unsigned(0, 8))) severity failure;
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(2290, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(2290, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(18159, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(18159, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(9098, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(9098, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(41220, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(41220, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(49790, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(49790, 8)))  severity failure;
        WAIT UNTIL tb_done = '0';
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postdone Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postdone Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postdone Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postdone Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure;
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(220, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(220, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        WAIT UNTIL tb_rst = '1';
        WAIT FOR CLOCK_PERIOD/2;
        ASSERT tb_z0 = "00000000" REPORT "TEST FALLITO (postreset Z0 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        ASSERT tb_z1 = "00000000" REPORT "TEST FALLITO (postreset Z1 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        ASSERT tb_z2 = "00000000" REPORT "TEST FALLITO (postreset Z2 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        ASSERT tb_z3 = "00000000" REPORT "TEST FALLITO (postreset Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
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
        ASSERT tb_z1 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z2 = std_logic_vector(to_unsigned(0, 8))  REPORT "TEST FALLITO (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) & " expected " & integer'image(to_integer(to_unsigned(0, 8)))  severity failure;
        ASSERT tb_z3 = std_logic_vector(to_unsigned(62169, 8))  REPORT "TEST FALLITO (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) & " expected " & integer'image(to_integer(to_unsigned(62169, 8)))  severity failure;
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

    -- One additional clock cycle for the testbench to check the last assertions 
    --VUNIT%% test_runner_watchdog(runner, CLOCK_PERIOD * (SCENARIOLENGTH + 1)); %%-- 

END projecttb;