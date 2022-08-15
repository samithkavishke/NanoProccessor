----------------------------------------------------------------------------------
-- Team Members:    K. D. Sunera Avinash Chandrasiri 
-- Create Date:     11/14/2018 12:20:25 AM
-- Module Name:     Nano_Processor - Behavioral
-- Project Name:    Nano Processor
-- Description:     Nano Processor(Internal)
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NanoProcessor is
    Port ( CLK : in STD_LOGIC;
           RESETPUSH : in STD_LOGIC:='0';
           ZERO : out STD_LOGIC;
           OVERFLOW : out STD_LOGIC;
           inst0 : out STD_LOGIC_VECTOR(11 downto 0);
           
           instaddr : out STD_LOGIC_VECTOR(2 downto 0);
           R0 : out STD_LOGIC_VECTOR (3 downto 0);
           R1 : out STD_LOGIC_VECTOR (3 downto 0);
           R2 : out STD_LOGIC_VECTOR (3 downto 0);
           R3 : out STD_LOGIC_VECTOR (3 downto 0);
           R4 : out STD_LOGIC_VECTOR (3 downto 0);
           R5 : out STD_LOGIC_VECTOR (3 downto 0);
           R6 : out STD_LOGIC_VECTOR (3 downto 0);
           R7 : out STD_LOGIC_VECTOR (3 downto 0);
           NEXT_IA: out STD_LOGIC_VECTOR (2 downto 0);
           CURR_IA: out STD_LOGIC_VECTOR (2 downto 0)
           );
end NanoProcessor;

architecture Behavioral of NanoProcessor is

component REG_3_BIT 
    Port ( D : in STD_LOGIC_VECTOR (2 downto 0);
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (2 downto 0));
end component;

component Reg3bit 
    Port ( D : in STD_LOGIC_VECTOR (2 downto 0);
           Res : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (2 downto 0);
           Clk : in STD_LOGIC;
           EN : in STD_LOGIC);
end component;


    component ROMNew 
        Port ( memorySel : in STD_LOGIC_VECTOR (2 downto 0);
               InBus : out STD_LOGIC_VECTOR (11 downto 0));
    end component;
    
    
    component InstructionDecoderNew 
        Port ( 
                InBus : in STD_LOGIC_VECTOR (11 downto 0);
               JMPRegVal : in STD_LOGIC_VECTOR(3 downto 0);
               

               
               --RegBankSwitch : out STD_LOGIC;
               RegEN : out STD_LOGIC_VECTOR (2 downto 0);
               LoadSelector : out STD_LOGIC;
               ImmediateValue : out STD_LOGIC_VECTOR (3 downto 0);
               MUXAAddress : out STD_LOGIC_VECTOR (2 downto 0);
               MUXBAddress : out STD_LOGIC_VECTOR (2 downto 0);
               ASSel : out STD_LOGIC;
               JMPFlag : out STD_LOGIC;
               typeIdOutput : out STD_LOGIC_VECTOR(1 downto 0);
               JMPAddress : out STD_LOGIC_VECTOR (2 downto 0));
    end component;
    
    component ASUnit
        Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
               B : in STD_LOGIC_VECTOR (3 downto 0);
               Ctrl : in STD_LOGIC;
               C_out : out STD_LOGIC;
               S : out STD_LOGIC_VECTOR (3 downto 0);
               ZeroFlag : out STD_LOGIC);
   end component;
    
    component RegisterBank 
        Port ( EN : in STD_LOGIC;
               Clk : in STD_LOGIC;
               Res : in STD_LOGIC;          
               RegEN : in STD_LOGIC_VECTOR (2 downto 0);
               R0 : out STD_LOGIC_VECTOR(3 downto 0);
               R1 : out STD_LOGIC_VECTOR(3 downto 0);
               R2 : out STD_LOGIC_VECTOR(3 downto 0);
               R3 : out STD_LOGIC_VECTOR(3 downto 0);
               R4 : out STD_LOGIC_VECTOR(3 downto 0);
               R5 : out STD_LOGIC_VECTOR(3 downto 0);
               R6 : out STD_LOGIC_VECTOR(3 downto 0);
               R7 : out STD_LOGIC_VECTOR(3 downto 0);
            
               Intermediate : out STD_LOGIC_VECTOR(7 downto 0);
               RegData : in STD_LOGIC_VECTOR (3 downto 0));
               
    end component;
    
    component Adder_3_bit
        Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
               EN : in STD_LOGIC;
               F : out STD_LOGIC_VECTOR (2 downto 0));
    end component;
    
    component Mux_8_to_1
        Port (-- D : in STD_LOGIC_VECTOR (31 downto 0); 
               R0 : in STD_LOGIC_VECTOR(3 downto 0);          
               R1 : in STD_LOGIC_VECTOR(3 downto 0);          
               R2 : in STD_LOGIC_VECTOR(3 downto 0);          
               R3 : in STD_LOGIC_VECTOR(3 downto 0);          
               R4 : in STD_LOGIC_VECTOR(3 downto 0);          
               R5 : in STD_LOGIC_VECTOR(3 downto 0);          
               R6 : in STD_LOGIC_VECTOR(3 downto 0);          
               R7 : in STD_LOGIC_VECTOR(3 downto 0);          
    
               Sel : in STD_LOGIC_VECTOR (2 downto 0);
               Y : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    component TSBMUX8_4bit 
        Port ( Sel : in STD_LOGIC_VECTOR (2 downto 0);
               R0 : in STD_LOGIC_VECTOR (3 downto 0);
               R1 : in STD_LOGIC_VECTOR (3 downto 0);
               R2 : in STD_LOGIC_VECTOR (3 downto 0);
               R3 : in STD_LOGIC_VECTOR (3 downto 0);
               R4 : in STD_LOGIC_VECTOR (3 downto 0);
               R5 : in STD_LOGIC_VECTOR (3 downto 0);
               R6 : in STD_LOGIC_VECTOR (3 downto 0);
               R7 : in STD_LOGIC_VECTOR (3 downto 0);
               Q : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    

   component MUX2_1_4bit 
           Port ( Sel : in STD_LOGIC;
                  R0 : in STD_LOGIC_VECTOR (3 downto 0);
                  R1 : in STD_LOGIC_VECTOR (3 downto 0);
                  O : out STD_LOGIC_VECTOR (3 downto 0));
   end component;
    
    
    
     component Mux_2_to_1_3bit 
            Port ( 
                R0 : in STD_LOGIC_VECTOR(2 downto 0);
                R1 : in STD_LOGIC_VECTOR(2 downto 0);
                S : in STD_LOGIC;
                Y : out STD_LOGIC_VECTOR (2 downto 0));
    end component;
      
    signal PI_NEXT_INST_ADDR: STD_LOGIC_VECTOR(2 downto 0):= "000";
    signal PI_CURR_INST_ADDR: STD_LOGIC_VECTOR(2 downto 0):= "000";
    signal CURR_ADDED_INST_ADDR: STD_LOGIC_VECTOR(2 downto 0):= "000";
    
    signal CURR_INST: STD_LOGIC_VECTOR(11 downto 0):= "000000000000";
    
    --signal instaddr : STD_LOGIC_VECTOR(2 downto 0);
    
    signal DEC_LSB: STD_LOGIC_VECTOR(3 downto 0):= "0000";
    signal DEC_JMP: STD_LOGIC:= '0';
    signal DEC_REG_EN: STD_LOGIC_VECTOR(2 downto 0):= "000";
    signal DEC_MUX_A: STD_LOGIC_VECTOR(2 downto 0):= "000";
    signal DEC_MUX_B: STD_LOGIC_VECTOR(2 downto 0):= "000";
    signal DEC_SUB: STD_LOGIC:= '0';
    signal DEC_LD: STD_LOGIC:= '0';
    
    signal ASU_RES: STD_LOGIC_VECTOR(3 downto 0):= "0000";
    
    
    signal REG_BANK_INPUT: STD_LOGIC_VECTOR(3 downto 0):= "0000";
    signal REG_BANK_R0: STD_LOGIC_VECTOR(3 downto 0):= "0000";
    signal REG_BANK_R1: STD_LOGIC_VECTOR(3 downto 0):= "0000";
    signal REG_BANK_R2: STD_LOGIC_VECTOR(3 downto 0):= "0000";
    signal REG_BANK_R3: STD_LOGIC_VECTOR(3 downto 0):= "0000";
    signal REG_BANK_R4: STD_LOGIC_VECTOR(3 downto 0):= "0000";
    signal REG_BANK_R5: STD_LOGIC_VECTOR(3 downto 0):= "0000";
    signal REG_BANK_R6: STD_LOGIC_VECTOR(3 downto 0):= "0000";
    signal REG_BANK_R7: STD_LOGIC_VECTOR(3 downto 0):= "0000";
    
    signal MUX_A_REG_VAL: STD_LOGIC_VECTOR(3 downto 0):= "0000";
    signal MUX_B_REG_VAL: STD_LOGIC_VECTOR(3 downto 0):= "0000";
    
    signal ZeroFlag0 : STD_LOGIC; 
begin

    PROGRAMCOUNTER :REG_3_BIT 
    Port map ( 
        D => PI_NEXT_INST_ADDR,
        Res => RESETPUSH,
        Q => PI_CURR_INST_ADDR,
        Clk => CLK
        --EN => '1'
        );
    
    Adder_3_bit0 : Adder_3_bit
      Port map( 
             A => PI_CURR_INST_ADDR,
             EN =>'1',
             F => CURR_ADDED_INST_ADDR);
        
    Mux_2_to_1_3bit0 : Mux_2_to_1_3bit 
     Port map (R1 => CURR_ADDED_INST_ADDR,
            R0 =>DEC_LSB(2 downto 0),
            S => DEC_JMP,     
            Y => PI_NEXT_INST_ADDR);    
    
     ROM0 :ROMNew 
        Port map( memorySel => PI_CURR_INST_ADDR ,
              InBus => CURR_INST);
    
    Decoder : InstructionDecoderNew
    Port map ( InBus => CURR_INST,
               JMPRegVal => MUX_A_REG_VAL,
               RegEN => DEC_REG_EN,
               LoadSelector => DEC_LD,
               ImmediateValue =>  DEC_LSB,
               MUXAAddress => DEC_MUX_A,
               MUXBAddress => DEC_MUX_B,
               ASSel =>  DEC_SUB,
               JMPFlag => DEC_JMP
               );
               
     MUX2_1_4bit0 : MUX2_1_4bit 
        Port map ( Sel => DEC_LD,
               R0  => DEC_LSB,
               R1 => ASU_RES,
               O => REG_BANK_INPUT);
  

    Reg_Bank1: RegisterBank
    Port map( EN => '1',
              Clk => CLK,
              Res => RESETPUSH,   
              R0 => REG_BANK_R0,
              R1 => REG_BANK_R1,
              R2 => REG_BANK_R2,
              R3 => REG_BANK_R3,
              R4 => REG_BANK_R4,
              R5 => REG_BANK_R5,
              R6 => REG_BANK_R6,
              R7 => REG_BANK_R7,        
              RegEN => DEC_REG_EN,           
              RegData => REG_BANK_INPUT);    
   
     
     MUXA0 :Mux_8_to_1 
     Port map ( 
            Sel => DEC_MUX_A,
                 R0 => REG_BANK_R0,
                 R1 => REG_BANK_R1,
                 R2 => REG_BANK_R2,
                 R3 => REG_BANK_R3,
                 R4 => REG_BANK_R4,
                 R5 => REG_BANK_R5,
                 R6 => REG_BANK_R6,
                 R7 => REG_BANK_R7,
                 Y => MUX_A_REG_VAL);
    
                    
     MUXB0 :Mux_8_to_1 
        Port map ( 
               Sel => DEC_MUX_B,
                R0 => REG_BANK_R0,
                R1 => REG_BANK_R1,
                R2 => REG_BANK_R2,
                R3 => REG_BANK_R3,
                R4 => REG_BANK_R4,
                R5 => REG_BANK_R5,
                R6 => REG_BANK_R6,
                R7 => REG_BANK_R7,
                Y => MUX_B_REG_VAL);
  
    ASUnit0 : ASUnit
    Port map  ( 
           A => MUX_A_REG_VAL,
           B => MUX_B_REG_VAL,
           Ctrl => DEC_SUB,
           C_out => OVERFLOW, 
           S => ASU_RES,
           ZeroFlag => ZERO
           );
    
    R7 <= REG_BANK_R7;
    R6 <= REG_BANK_R6;
    R5 <= REG_BANK_R5;
    R4 <= REG_BANK_R4;
    R3 <= REG_BANK_R3;
    R2 <= REG_BANK_R2;
    R1 <= REG_BANK_R1;
    R0 <= REG_BANK_R0;
    inst0 <= CURR_INST;
    
    --ZERO <= '0' when not (REG_BANK_R7 = "0000") or not(ZeroFlag0 = '1') else '1';
    --Z
    instaddr <=PI_CURR_INST_ADDR;
    
    NEXT_IA <= PI_CURR_INST_ADDR;
    CURR_IA <= PI_CURR_INST_ADDR;
    
end Behavioral;
