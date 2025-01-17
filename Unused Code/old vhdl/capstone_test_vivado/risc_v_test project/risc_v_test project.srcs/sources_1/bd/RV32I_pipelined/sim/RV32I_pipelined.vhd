--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Sat Mar 30 15:00:12 2019
--Host        : Oz-Bejerano-Desktop running 64-bit major release  (build 9200)
--Command     : generate_target RV32I_pipelined.bd
--Design      : RV32I_pipelined
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RV32I_pipelined is
  port (
    btn3 : in STD_LOGIC;
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of RV32I_pipelined : entity is "RV32I_pipelined,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=RV32I_pipelined,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=24,numReposBlks=24,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=22,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of RV32I_pipelined : entity is "RV32I_pipelined.hwdef";
end RV32I_pipelined;

architecture STRUCTURE of RV32I_pipelined is
  component RV32I_pipelined_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component RV32I_pipelined_blk_mem_gen_0_0;
  component RV32I_pipelined_RV32I_0_0 is
  port (
    error : out STD_LOGIC;
    instr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mux_reg_write : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mux_output : out STD_LOGIC;
    mux_reg_descr_alu : out STD_LOGIC;
    mux_reg_pc_alu : out STD_LOGIC;
    control_alu : out STD_LOGIC_VECTOR ( 3 downto 0 );
    control_reg_writeenable : out STD_LOGIC;
    control_branch : out STD_LOGIC_VECTOR ( 3 downto 0 );
    control_mem_logic : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component RV32I_pipelined_RV32I_0_0;
  component RV32I_pipelined_Descrambler_0_0 is
  port (
    scr_imm : in STD_LOGIC_VECTOR ( 31 downto 0 );
    descr_imm : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component RV32I_pipelined_Descrambler_0_0;
  component RV32I_pipelined_registers_0_0 is
  port (
    clk : in STD_LOGIC;
    clk_en : in STD_LOGIC;
    instr1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    instr2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_write_input : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_1_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_2_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wen : in STD_LOGIC;
    debug_leds : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component RV32I_pipelined_registers_0_0;
  component RV32I_pipelined_ALU_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    control_alu : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sum : out STD_LOGIC_VECTOR ( 31 downto 0 );
    zero : out STD_LOGIC;
    sign : out STD_LOGIC;
    overflow : out STD_LOGIC
  );
  end component RV32I_pipelined_ALU_0_0;
  component RV32I_pipelined_stage_EM_0_0 is
  port (
    clk : in STD_LOGIC;
    clk_en : in STD_LOGIC;
    PC_DE : in STD_LOGIC_VECTOR ( 31 downto 0 );
    output_bus_DE : in STD_LOGIC_VECTOR ( 31 downto 0 );
    instruction_DE : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mux_reg_write_DE : in STD_LOGIC_VECTOR ( 1 downto 0 );
    control_reg_writeenable_DE : in STD_LOGIC;
    control_mem_logic_DE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    PC_EM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_bus_EM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    instruction_EM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mux_reg_write_EM : out STD_LOGIC_VECTOR ( 1 downto 0 );
    control_reg_writeenable_EM : out STD_LOGIC;
    control_mem_logic_EM : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component RV32I_pipelined_stage_EM_0_0;
  component RV32I_pipelined_stage_MW_0_0 is
  port (
    clk : in STD_LOGIC;
    clk_en : in STD_LOGIC;
    PC_EM : in STD_LOGIC_VECTOR ( 31 downto 0 );
    output_bus_EM : in STD_LOGIC_VECTOR ( 31 downto 0 );
    instruction_EM : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mux_reg_write_EM : in STD_LOGIC_VECTOR ( 1 downto 0 );
    control_reg_writeenable_EM : in STD_LOGIC;
    memory_access_out1_EM : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PC_MW : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_bus_MW : out STD_LOGIC_VECTOR ( 31 downto 0 );
    instruction_MW : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mux_reg_write_MW : out STD_LOGIC_VECTOR ( 1 downto 0 );
    control_reg_writeenable_MW : out STD_LOGIC;
    memory_access_out1_MW : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component RV32I_pipelined_stage_MW_0_0;
  component RV32I_pipelined_clk_wiz_0_0 is
  port (
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC
  );
  end component RV32I_pipelined_clk_wiz_0_0;
  component RV32I_pipelined_stage_DE_0_0 is
  port (
    clk : in STD_LOGIC;
    clk_en : in STD_LOGIC;
    rst_counter : in STD_LOGIC_VECTOR ( 1 downto 0 );
    branch_logic : in STD_LOGIC;
    hazard_logic : in STD_LOGIC;
    pc_FD : in STD_LOGIC_VECTOR ( 31 downto 0 );
    control_branch_FD : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mux_reg_pc_alu_FD : in STD_LOGIC;
    mux_reg_descr_alu_FD : in STD_LOGIC;
    mux_output_FD : in STD_LOGIC;
    mux_reg_write_FD : in STD_LOGIC_VECTOR ( 1 downto 0 );
    control_mem_logic_FD : in STD_LOGIC_VECTOR ( 3 downto 0 );
    control_alu_FD : in STD_LOGIC_VECTOR ( 3 downto 0 );
    control_reg_writeenable_FD : in STD_LOGIC;
    reg_1_FD : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_2_FD : in STD_LOGIC_VECTOR ( 31 downto 0 );
    immediate_FD : in STD_LOGIC_VECTOR ( 31 downto 0 );
    instruction_FD : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pc_DE : out STD_LOGIC_VECTOR ( 31 downto 0 );
    control_branch_DE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mux_reg_pc_alu_DE : out STD_LOGIC;
    mux_reg_descr_alu_DE : out STD_LOGIC;
    mux_output_DE : out STD_LOGIC;
    mux_reg_write_DE : out STD_LOGIC_VECTOR ( 1 downto 0 );
    control_mem_logic_DE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    control_alu_DE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    control_reg_writeenable_DE : out STD_LOGIC;
    reg_1_DE : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_2_DE : out STD_LOGIC_VECTOR ( 31 downto 0 );
    immediate_DE : out STD_LOGIC_VECTOR ( 31 downto 0 );
    instruction_DE : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component RV32I_pipelined_stage_DE_0_0;
  component RV32I_pipelined_stage_FD_0_0 is
  port (
    clk : in STD_LOGIC;
    clk_en : in STD_LOGIC;
    rst_counter : in STD_LOGIC_VECTOR ( 1 downto 0 );
    PC : in STD_LOGIC;
    hazard : in STD_LOGIC_VECTOR ( 1 downto 0 );
    branch : in STD_LOGIC;
    PC_FD : out STD_LOGIC;
    instruction_clear_out : out STD_LOGIC
  );
  end component RV32I_pipelined_stage_FD_0_0;
  component RV32I_pipelined_pc_logic_0_0 is
  port (
    mux_next_pc : in STD_LOGIC_VECTOR ( 1 downto 0 );
    hazard : in STD_LOGIC_VECTOR ( 1 downto 0 );
    PC_DE : in STD_LOGIC_VECTOR ( 31 downto 0 );
    output_bus_E : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PC : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PC_FD : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PC_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component RV32I_pipelined_pc_logic_0_0;
  component RV32I_pipelined_mux_reg_descr_alu_0_0 is
  port (
    control_mux_reg_descr_alu : in STD_LOGIC;
    descrambler_output : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_2_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_B : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component RV32I_pipelined_mux_reg_descr_alu_0_0;
  component RV32I_pipelined_mux_reg_pc_alu_0_0 is
  port (
    control_mux_reg_pc_alu : in STD_LOGIC;
    pc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_1_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_A : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component RV32I_pipelined_mux_reg_pc_alu_0_0;
  component RV32I_pipelined_pre_memory_logic_0_0 is
  port (
    control_mem : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addr1_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    addr1_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    byte_enable : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component RV32I_pipelined_pre_memory_logic_0_0;
  component RV32I_pipelined_mux_output_0_0 is
  port (
    control_mux_output : in STD_LOGIC;
    descrambler_output : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_output : in STD_LOGIC_VECTOR ( 31 downto 0 );
    output_bus : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component RV32I_pipelined_mux_output_0_0;
  component RV32I_pipelined_post_memory_logic_0_0 is
  port (
    control_mem : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addr1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    memory_access_out1_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    memory_access_out1_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component RV32I_pipelined_post_memory_logic_0_0;
  component RV32I_pipelined_mux_reg_write_0_0 is
  port (
    control_mux_reg_write : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mem_output : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PC : in STD_LOGIC_VECTOR ( 31 downto 0 );
    output_bus : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_write_input : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component RV32I_pipelined_mux_reg_write_0_0;
  component RV32I_pipelined_brach_logic_0_0 is
  port (
    control_branch : in STD_LOGIC_VECTOR ( 3 downto 0 );
    alu_zero : in STD_LOGIC;
    alu_sign : in STD_LOGIC;
    alu_overflow : in STD_LOGIC;
    mux_next_pc : out STD_LOGIC_VECTOR ( 1 downto 0 );
    branch : out STD_LOGIC
  );
  end component RV32I_pipelined_brach_logic_0_0;
  component RV32I_pipelined_hazard_logic_0_0 is
  port (
    instr_f_d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    instr_d_e : in STD_LOGIC_VECTOR ( 31 downto 0 );
    instr_e_m : in STD_LOGIC_VECTOR ( 31 downto 0 );
    instr_m_w : in STD_LOGIC_VECTOR ( 31 downto 0 );
    hazard_stage : out STD_LOGIC_VECTOR ( 2 downto 0 );
    new_hazard : out STD_LOGIC
  );
  end component RV32I_pipelined_hazard_logic_0_0;
  component RV32I_pipelined_clock_div_0_0 is
  port (
    clk : in STD_LOGIC;
    div_clk : out STD_LOGIC
  );
  end component RV32I_pipelined_clock_div_0_0;
  component RV32I_pipelined_program_counter_0_0 is
  port (
    clk : in STD_LOGIC;
    clk_en : in STD_LOGIC;
    rst : in STD_LOGIC;
    next_PC : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PC : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rst_counter : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component RV32I_pipelined_program_counter_0_0;
  component RV32I_pipelined_instruction_clear_0_0 is
  port (
    instruction_clear_signal : in STD_LOGIC;
    instruction_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    instruction_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component RV32I_pipelined_instruction_clear_0_0;
  component RV32I_pipelined_debounce_0_0 is
  port (
    btn : in STD_LOGIC;
    clk : in STD_LOGIC;
    dbnc : out STD_LOGIC
  );
  end component RV32I_pipelined_debounce_0_0;
  component RV32I_pipelined_hazard_count_0_0 is
  port (
    clk : in STD_LOGIC;
    clk_en : in STD_LOGIC;
    new_hazard : in STD_LOGIC;
    hazard_stage : in STD_LOGIC_VECTOR ( 2 downto 0 );
    hazard : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component RV32I_pipelined_hazard_count_0_0;
  signal ALU_0_overflow : STD_LOGIC;
  signal ALU_0_sign : STD_LOGIC;
  signal ALU_0_sum : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ALU_0_zero : STD_LOGIC;
  signal Descrambler_0_descr_imm : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal RV32I_0_control_alu : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal RV32I_0_control_branch : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal RV32I_0_control_mem_logic : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal RV32I_0_control_reg_writeenable : STD_LOGIC;
  signal RV32I_0_mux_output : STD_LOGIC;
  signal RV32I_0_mux_reg_descr_alu : STD_LOGIC;
  signal RV32I_0_mux_reg_pc_alu : STD_LOGIC;
  signal RV32I_0_mux_reg_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal blk_mem_gen_0_douta1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal blk_mem_gen_0_doutb : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal brach_logic_0_branch : STD_LOGIC;
  signal brach_logic_0_mux_next_pc : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal btn3_1 : STD_LOGIC;
  signal clk_0_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal clock_div_0_div_clk : STD_LOGIC;
  signal debounce_0_dbnc : STD_LOGIC;
  signal hazard_logic_0_hazard_stage : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hazard_logic_0_new_hazard : STD_LOGIC;
  signal hazard_shift_counter_0_hazard : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mux_output_0_output_bus : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mux_reg_descr_alu_0_alu_B : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mux_reg_pc_alu_0_alu_A : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mux_reg_write_0_reg_write_input : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pc_logic_0_PC_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal post_memory_logic_0_memory_access_out1_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pre_memory_logic_0_addr1_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pre_memory_logic_0_byte_enable : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal program_counter_0_PC : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal registers_0_debug_leds : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal registers_0_reg_1_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal registers_0_reg_2_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal stage_DE_0_control_alu_DE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal stage_DE_0_control_branch_DE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal stage_DE_0_control_mem_logic_DE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal stage_DE_0_control_reg_writeenable_DE : STD_LOGIC;
  signal stage_DE_0_immediate_DE : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal stage_DE_0_instruction_DE : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal stage_DE_0_mux_output_DE : STD_LOGIC;
  signal stage_DE_0_mux_reg_descr_alu_DE : STD_LOGIC;
  signal stage_DE_0_mux_reg_pc_alu_DE : STD_LOGIC;
  signal stage_DE_0_mux_reg_write_DE : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal stage_DE_0_pc_DE : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal stage_DE_0_reg_1_DE : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal stage_DE_0_reg_2_DE : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal stage_EM_0_PC_EM : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal stage_EM_0_control_mem_logic_EM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal stage_EM_0_control_reg_writeenable_EM : STD_LOGIC;
  signal stage_EM_0_instruction_EM : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal stage_EM_0_mux_reg_write_EM : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal stage_EM_0_output_bus_EM : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal stage_FD_0_PC_FD : STD_LOGIC;
  signal stage_FD_0_instruction_clear_out : STD_LOGIC;
  signal stage_MW_0_PC_MW : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal stage_MW_0_control_reg_writeenable_MW : STD_LOGIC;
  signal stage_MW_0_instruction_MW : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal stage_MW_0_memory_access_out1_MW : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal stage_MW_0_mux_reg_write_MW : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal stage_MW_0_output_bus_MW : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_RV32I_0_error_UNCONNECTED : STD_LOGIC;
  signal NLW_program_counter_0_rst_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of btn3 : signal is "xilinx.com:signal:reset:1.0 RST.BTN3 RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of btn3 : signal is "XIL_INTERFACENAME RST.BTN3, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN RV32I_pipelined_clk, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000";
begin
  btn3_1 <= btn3;
  clk_1 <= clk;
  led(3 downto 0) <= registers_0_debug_leds(3 downto 0);
ALU_0: component RV32I_pipelined_ALU_0_0
     port map (
      A(31 downto 0) => mux_reg_pc_alu_0_alu_A(31 downto 0),
      B(31 downto 0) => mux_reg_descr_alu_0_alu_B(31 downto 0),
      control_alu(3 downto 0) => stage_DE_0_control_alu_DE(3 downto 0),
      overflow => ALU_0_overflow,
      sign => ALU_0_sign,
      sum(31 downto 0) => ALU_0_sum(31 downto 0),
      zero => ALU_0_zero
    );
Descrambler_0: component RV32I_pipelined_Descrambler_0_0
     port map (
      descr_imm(31 downto 0) => Descrambler_0_descr_imm(31 downto 0),
      scr_imm(31 downto 0) => blk_mem_gen_0_douta(31 downto 0)
    );
RV32I_0: component RV32I_pipelined_RV32I_0_0
     port map (
      control_alu(3 downto 0) => RV32I_0_control_alu(3 downto 0),
      control_branch(3 downto 0) => RV32I_0_control_branch(3 downto 0),
      control_mem_logic(3 downto 0) => RV32I_0_control_mem_logic(3 downto 0),
      control_reg_writeenable => RV32I_0_control_reg_writeenable,
      error => NLW_RV32I_0_error_UNCONNECTED,
      instr(31 downto 0) => blk_mem_gen_0_douta(31 downto 0),
      mux_output => RV32I_0_mux_output,
      mux_reg_descr_alu => RV32I_0_mux_reg_descr_alu,
      mux_reg_pc_alu => RV32I_0_mux_reg_pc_alu,
      mux_reg_write(1 downto 0) => RV32I_0_mux_reg_write(1 downto 0)
    );
blk_mem_gen_0: component RV32I_pipelined_blk_mem_gen_0_0
     port map (
      addra(11 downto 0) => program_counter_0_PC(11 downto 0),
      addrb(11 downto 0) => pre_memory_logic_0_addr1_out(11 downto 0),
      clka => clk_0_1,
      clkb => clk_0_1,
      dina(31 downto 0) => B"00000000000000000000000000001000",
      dinb(31 downto 0) => stage_DE_0_reg_2_DE(31 downto 0),
      douta(31 downto 0) => blk_mem_gen_0_douta1(31 downto 0),
      doutb(31 downto 0) => blk_mem_gen_0_doutb(31 downto 0),
      ena => clock_div_0_div_clk,
      enb => clock_div_0_div_clk,
      wea(3 downto 0) => B"0000",
      web(3 downto 0) => pre_memory_logic_0_byte_enable(3 downto 0)
    );
brach_logic_0: component RV32I_pipelined_brach_logic_0_0
     port map (
      alu_overflow => ALU_0_overflow,
      alu_sign => ALU_0_sign,
      alu_zero => ALU_0_zero,
      branch => brach_logic_0_branch,
      control_branch(3 downto 0) => stage_DE_0_control_branch_DE(3 downto 0),
      mux_next_pc(1 downto 0) => brach_logic_0_mux_next_pc(1 downto 0)
    );
clk_wiz_0: component RV32I_pipelined_clk_wiz_0_0
     port map (
      clk_in1 => clk_1,
      clk_out1 => clk_0_1
    );
clock_div_0: component RV32I_pipelined_clock_div_0_0
     port map (
      clk => clk_0_1,
      div_clk => clock_div_0_div_clk
    );
debounce_0: component RV32I_pipelined_debounce_0_0
     port map (
      btn => btn3_1,
      clk => clk_0_1,
      dbnc => debounce_0_dbnc
    );
hazard_count_0: component RV32I_pipelined_hazard_count_0_0
     port map (
      clk => clk_0_1,
      clk_en => clock_div_0_div_clk,
      hazard(1 downto 0) => hazard_shift_counter_0_hazard(1 downto 0),
      hazard_stage(2 downto 0) => hazard_logic_0_hazard_stage(2 downto 0),
      new_hazard => hazard_logic_0_new_hazard
    );
hazard_logic_0: component RV32I_pipelined_hazard_logic_0_0
     port map (
      hazard_stage(2 downto 0) => hazard_logic_0_hazard_stage(2 downto 0),
      instr_d_e(31 downto 0) => stage_DE_0_instruction_DE(31 downto 0),
      instr_e_m(31 downto 0) => stage_EM_0_instruction_EM(31 downto 0),
      instr_f_d(31 downto 0) => blk_mem_gen_0_douta(31 downto 0),
      instr_m_w(31 downto 0) => stage_MW_0_instruction_MW(31 downto 0),
      new_hazard => hazard_logic_0_new_hazard
    );
instruction_clear_0: component RV32I_pipelined_instruction_clear_0_0
     port map (
      instruction_clear_signal => stage_FD_0_instruction_clear_out,
      instruction_in(31 downto 0) => blk_mem_gen_0_douta1(31 downto 0),
      instruction_out(31 downto 0) => blk_mem_gen_0_douta(31 downto 0)
    );
mux_output_0: component RV32I_pipelined_mux_output_0_0
     port map (
      alu_output(31 downto 0) => ALU_0_sum(31 downto 0),
      control_mux_output => stage_DE_0_mux_output_DE,
      descrambler_output(31 downto 0) => stage_DE_0_immediate_DE(31 downto 0),
      output_bus(31 downto 0) => mux_output_0_output_bus(31 downto 0)
    );
mux_reg_descr_alu_0: component RV32I_pipelined_mux_reg_descr_alu_0_0
     port map (
      alu_B(31 downto 0) => mux_reg_descr_alu_0_alu_B(31 downto 0),
      control_mux_reg_descr_alu => stage_DE_0_mux_reg_descr_alu_DE,
      descrambler_output(31 downto 0) => stage_DE_0_immediate_DE(31 downto 0),
      reg_2_out(31 downto 0) => stage_DE_0_reg_2_DE(31 downto 0)
    );
mux_reg_pc_alu_0: component RV32I_pipelined_mux_reg_pc_alu_0_0
     port map (
      alu_A(31 downto 0) => mux_reg_pc_alu_0_alu_A(31 downto 0),
      control_mux_reg_pc_alu => stage_DE_0_mux_reg_pc_alu_DE,
      pc(31 downto 0) => stage_DE_0_pc_DE(31 downto 0),
      reg_1_out(31 downto 0) => stage_DE_0_reg_1_DE(31 downto 0)
    );
mux_reg_write_0: component RV32I_pipelined_mux_reg_write_0_0
     port map (
      PC(31 downto 0) => stage_MW_0_PC_MW(31 downto 0),
      control_mux_reg_write(1 downto 0) => stage_MW_0_mux_reg_write_MW(1 downto 0),
      mem_output(31 downto 0) => stage_MW_0_memory_access_out1_MW(31 downto 0),
      output_bus(31 downto 0) => stage_MW_0_output_bus_MW(31 downto 0),
      reg_write_input(31 downto 0) => mux_reg_write_0_reg_write_input(31 downto 0)
    );
pc_logic_0: component RV32I_pipelined_pc_logic_0_0
     port map (
      PC(31 downto 0) => program_counter_0_PC(31 downto 0),
      PC_DE(31 downto 0) => stage_DE_0_pc_DE(31 downto 0),
      PC_FD(31) => stage_FD_0_PC_FD,
      PC_FD(30) => stage_FD_0_PC_FD,
      PC_FD(29) => stage_FD_0_PC_FD,
      PC_FD(28) => stage_FD_0_PC_FD,
      PC_FD(27) => stage_FD_0_PC_FD,
      PC_FD(26) => stage_FD_0_PC_FD,
      PC_FD(25) => stage_FD_0_PC_FD,
      PC_FD(24) => stage_FD_0_PC_FD,
      PC_FD(23) => stage_FD_0_PC_FD,
      PC_FD(22) => stage_FD_0_PC_FD,
      PC_FD(21) => stage_FD_0_PC_FD,
      PC_FD(20) => stage_FD_0_PC_FD,
      PC_FD(19) => stage_FD_0_PC_FD,
      PC_FD(18) => stage_FD_0_PC_FD,
      PC_FD(17) => stage_FD_0_PC_FD,
      PC_FD(16) => stage_FD_0_PC_FD,
      PC_FD(15) => stage_FD_0_PC_FD,
      PC_FD(14) => stage_FD_0_PC_FD,
      PC_FD(13) => stage_FD_0_PC_FD,
      PC_FD(12) => stage_FD_0_PC_FD,
      PC_FD(11) => stage_FD_0_PC_FD,
      PC_FD(10) => stage_FD_0_PC_FD,
      PC_FD(9) => stage_FD_0_PC_FD,
      PC_FD(8) => stage_FD_0_PC_FD,
      PC_FD(7) => stage_FD_0_PC_FD,
      PC_FD(6) => stage_FD_0_PC_FD,
      PC_FD(5) => stage_FD_0_PC_FD,
      PC_FD(4) => stage_FD_0_PC_FD,
      PC_FD(3) => stage_FD_0_PC_FD,
      PC_FD(2) => stage_FD_0_PC_FD,
      PC_FD(1) => stage_FD_0_PC_FD,
      PC_FD(0) => stage_FD_0_PC_FD,
      PC_out(31 downto 0) => pc_logic_0_PC_out(31 downto 0),
      hazard(1 downto 0) => hazard_shift_counter_0_hazard(1 downto 0),
      mux_next_pc(1 downto 0) => brach_logic_0_mux_next_pc(1 downto 0),
      output_bus_E(31 downto 0) => mux_output_0_output_bus(31 downto 0)
    );
post_memory_logic_0: component RV32I_pipelined_post_memory_logic_0_0
     port map (
      addr1(31 downto 0) => stage_EM_0_output_bus_EM(31 downto 0),
      control_mem(3 downto 0) => stage_EM_0_control_mem_logic_EM(3 downto 0),
      memory_access_out1_in(31 downto 0) => blk_mem_gen_0_doutb(31 downto 0),
      memory_access_out1_out(31 downto 0) => post_memory_logic_0_memory_access_out1_out(31 downto 0)
    );
pre_memory_logic_0: component RV32I_pipelined_pre_memory_logic_0_0
     port map (
      addr1_in(31 downto 0) => mux_output_0_output_bus(31 downto 0),
      addr1_out(31 downto 0) => pre_memory_logic_0_addr1_out(31 downto 0),
      byte_enable(3 downto 0) => pre_memory_logic_0_byte_enable(3 downto 0),
      control_mem(3 downto 0) => stage_DE_0_control_mem_logic_DE(3 downto 0)
    );
program_counter_0: component RV32I_pipelined_program_counter_0_0
     port map (
      PC(31 downto 0) => program_counter_0_PC(31 downto 0),
      clk => clk_0_1,
      clk_en => clock_div_0_div_clk,
      next_PC(31 downto 0) => pc_logic_0_PC_out(31 downto 0),
      rst => debounce_0_dbnc,
      rst_counter(1 downto 0) => NLW_program_counter_0_rst_counter_UNCONNECTED(1 downto 0)
    );
registers_0: component RV32I_pipelined_registers_0_0
     port map (
      clk => clk_0_1,
      clk_en => clock_div_0_div_clk,
      debug_leds(3 downto 0) => registers_0_debug_leds(3 downto 0),
      instr1(31 downto 0) => blk_mem_gen_0_douta(31 downto 0),
      instr2(31 downto 0) => stage_MW_0_instruction_MW(31 downto 0),
      reg_1_out(31 downto 0) => registers_0_reg_1_out(31 downto 0),
      reg_2_out(31 downto 0) => registers_0_reg_2_out(31 downto 0),
      reg_write_input(31 downto 0) => mux_reg_write_0_reg_write_input(31 downto 0),
      wen => stage_MW_0_control_reg_writeenable_MW
    );
stage_DE_0: component RV32I_pipelined_stage_DE_0_0
     port map (
      branch_logic => brach_logic_0_branch,
      clk => clk_0_1,
      clk_en => clock_div_0_div_clk,
      control_alu_DE(3 downto 0) => stage_DE_0_control_alu_DE(3 downto 0),
      control_alu_FD(3 downto 0) => RV32I_0_control_alu(3 downto 0),
      control_branch_DE(3 downto 0) => stage_DE_0_control_branch_DE(3 downto 0),
      control_branch_FD(3 downto 0) => RV32I_0_control_branch(3 downto 0),
      control_mem_logic_DE(3 downto 0) => stage_DE_0_control_mem_logic_DE(3 downto 0),
      control_mem_logic_FD(3 downto 0) => RV32I_0_control_mem_logic(3 downto 0),
      control_reg_writeenable_DE => stage_DE_0_control_reg_writeenable_DE,
      control_reg_writeenable_FD => RV32I_0_control_reg_writeenable,
      hazard_logic => hazard_logic_0_new_hazard,
      immediate_DE(31 downto 0) => stage_DE_0_immediate_DE(31 downto 0),
      immediate_FD(31 downto 0) => Descrambler_0_descr_imm(31 downto 0),
      instruction_DE(31 downto 0) => stage_DE_0_instruction_DE(31 downto 0),
      instruction_FD(31 downto 0) => blk_mem_gen_0_douta(31 downto 0),
      mux_output_DE => stage_DE_0_mux_output_DE,
      mux_output_FD => RV32I_0_mux_output,
      mux_reg_descr_alu_DE => stage_DE_0_mux_reg_descr_alu_DE,
      mux_reg_descr_alu_FD => RV32I_0_mux_reg_descr_alu,
      mux_reg_pc_alu_DE => stage_DE_0_mux_reg_pc_alu_DE,
      mux_reg_pc_alu_FD => RV32I_0_mux_reg_pc_alu,
      mux_reg_write_DE(1 downto 0) => stage_DE_0_mux_reg_write_DE(1 downto 0),
      mux_reg_write_FD(1 downto 0) => RV32I_0_mux_reg_write(1 downto 0),
      pc_DE(31 downto 0) => stage_DE_0_pc_DE(31 downto 0),
      pc_FD(31) => stage_FD_0_PC_FD,
      pc_FD(30) => stage_FD_0_PC_FD,
      pc_FD(29) => stage_FD_0_PC_FD,
      pc_FD(28) => stage_FD_0_PC_FD,
      pc_FD(27) => stage_FD_0_PC_FD,
      pc_FD(26) => stage_FD_0_PC_FD,
      pc_FD(25) => stage_FD_0_PC_FD,
      pc_FD(24) => stage_FD_0_PC_FD,
      pc_FD(23) => stage_FD_0_PC_FD,
      pc_FD(22) => stage_FD_0_PC_FD,
      pc_FD(21) => stage_FD_0_PC_FD,
      pc_FD(20) => stage_FD_0_PC_FD,
      pc_FD(19) => stage_FD_0_PC_FD,
      pc_FD(18) => stage_FD_0_PC_FD,
      pc_FD(17) => stage_FD_0_PC_FD,
      pc_FD(16) => stage_FD_0_PC_FD,
      pc_FD(15) => stage_FD_0_PC_FD,
      pc_FD(14) => stage_FD_0_PC_FD,
      pc_FD(13) => stage_FD_0_PC_FD,
      pc_FD(12) => stage_FD_0_PC_FD,
      pc_FD(11) => stage_FD_0_PC_FD,
      pc_FD(10) => stage_FD_0_PC_FD,
      pc_FD(9) => stage_FD_0_PC_FD,
      pc_FD(8) => stage_FD_0_PC_FD,
      pc_FD(7) => stage_FD_0_PC_FD,
      pc_FD(6) => stage_FD_0_PC_FD,
      pc_FD(5) => stage_FD_0_PC_FD,
      pc_FD(4) => stage_FD_0_PC_FD,
      pc_FD(3) => stage_FD_0_PC_FD,
      pc_FD(2) => stage_FD_0_PC_FD,
      pc_FD(1) => stage_FD_0_PC_FD,
      pc_FD(0) => stage_FD_0_PC_FD,
      reg_1_DE(31 downto 0) => stage_DE_0_reg_1_DE(31 downto 0),
      reg_1_FD(31 downto 0) => registers_0_reg_1_out(31 downto 0),
      reg_2_DE(31 downto 0) => stage_DE_0_reg_2_DE(31 downto 0),
      reg_2_FD(31 downto 0) => registers_0_reg_2_out(31 downto 0),
      rst_counter(1 downto 0) => B"00"
    );
stage_EM_0: component RV32I_pipelined_stage_EM_0_0
     port map (
      PC_DE(31 downto 0) => stage_DE_0_pc_DE(31 downto 0),
      PC_EM(31 downto 0) => stage_EM_0_PC_EM(31 downto 0),
      clk => clk_0_1,
      clk_en => clock_div_0_div_clk,
      control_mem_logic_DE(3 downto 0) => stage_DE_0_control_mem_logic_DE(3 downto 0),
      control_mem_logic_EM(3 downto 0) => stage_EM_0_control_mem_logic_EM(3 downto 0),
      control_reg_writeenable_DE => stage_DE_0_control_reg_writeenable_DE,
      control_reg_writeenable_EM => stage_EM_0_control_reg_writeenable_EM,
      instruction_DE(31 downto 0) => stage_DE_0_instruction_DE(31 downto 0),
      instruction_EM(31 downto 0) => stage_EM_0_instruction_EM(31 downto 0),
      mux_reg_write_DE(1 downto 0) => stage_DE_0_mux_reg_write_DE(1 downto 0),
      mux_reg_write_EM(1 downto 0) => stage_EM_0_mux_reg_write_EM(1 downto 0),
      output_bus_DE(31 downto 0) => mux_output_0_output_bus(31 downto 0),
      output_bus_EM(31 downto 0) => stage_EM_0_output_bus_EM(31 downto 0)
    );
stage_FD_0: component RV32I_pipelined_stage_FD_0_0
     port map (
      PC => program_counter_0_PC(0),
      PC_FD => stage_FD_0_PC_FD,
      branch => brach_logic_0_branch,
      clk => clk_0_1,
      clk_en => clock_div_0_div_clk,
      hazard(1 downto 0) => hazard_shift_counter_0_hazard(1 downto 0),
      instruction_clear_out => stage_FD_0_instruction_clear_out,
      rst_counter(1 downto 0) => B"00"
    );
stage_MW_0: component RV32I_pipelined_stage_MW_0_0
     port map (
      PC_EM(31 downto 0) => stage_EM_0_PC_EM(31 downto 0),
      PC_MW(31 downto 0) => stage_MW_0_PC_MW(31 downto 0),
      clk => clk_0_1,
      clk_en => clock_div_0_div_clk,
      control_reg_writeenable_EM => stage_EM_0_control_reg_writeenable_EM,
      control_reg_writeenable_MW => stage_MW_0_control_reg_writeenable_MW,
      instruction_EM(31 downto 0) => stage_EM_0_instruction_EM(31 downto 0),
      instruction_MW(31 downto 0) => stage_MW_0_instruction_MW(31 downto 0),
      memory_access_out1_EM(31 downto 0) => post_memory_logic_0_memory_access_out1_out(31 downto 0),
      memory_access_out1_MW(31 downto 0) => stage_MW_0_memory_access_out1_MW(31 downto 0),
      mux_reg_write_EM(1 downto 0) => stage_EM_0_mux_reg_write_EM(1 downto 0),
      mux_reg_write_MW(1 downto 0) => stage_MW_0_mux_reg_write_MW(1 downto 0),
      output_bus_EM(31 downto 0) => stage_EM_0_output_bus_EM(31 downto 0),
      output_bus_MW(31 downto 0) => stage_MW_0_output_bus_MW(31 downto 0)
    );
end STRUCTURE;
