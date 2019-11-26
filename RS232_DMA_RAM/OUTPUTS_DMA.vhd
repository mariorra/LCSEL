
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

PACKAGE OUTPUTS IS
procedure UPDATE_OUTPUTS (
            signal P_Data_Read_aux : std_logic;
            signal P_TX_Data_aux : std_logic_vector(7 downto 0);
            signal P_Valid_D_aux : std_logic;                
            signal P_CS_aux : std_logic;
            signal P_OE_aux : std_logic;
            signal P_Write_en_aux : std_logic;
            signal P_Address_aux : std_logic_vector(7 downto 0);
            signal P_READY_aux : std_logic;
            signal P_DMA_RQ_aux : std_logic;
            signal P_ID_BYTE_aux: integer :=0 ) ;
END OUTPUTS;

PACKAGE BODY OUTPUTS IS
procedure UPDATE_OUTPUTS (
            signal P_Data_Read_aux : std_logic;
            signal P_TX_Data_aux : std_logic_vector(7 downto 0);
            signal P_Valid_D_aux : std_logic;                
            signal P_CS_aux : std_logic;
            signal P_OE_aux : std_logic;
            signal P_Write_en_aux : std_logic;
            signal P_Address_aux : std_logic_vector(7 downto 0);
            signal P_READY_aux : std_logic;
            signal P_DMA_RQ_aux : std_logic;
            signal P_ID_BYTE_aux: integer :=0 ) is

           begin
              --RX
              Data_Read_aux<=P_Data_Read_aux;
              --TX
              TX_Data_aux<=P_TX_Data_aux;
              Valid_D_aux<=P_Valid_D_aux;
              --RAM
              CS_aux<= P_CS_aux;
              OE_aux<= P_OE_aux;
              Write_en_aux<=P_Write_en_aux;
              Address_aux<=P_Address_aux;
              --MICRO
              READY_aux<=P_READY_aux;
              DMA_RQ_aux<=P_DMA_RQ_aux;
              ID_BYTE_aux<=P_ID_BYTE_aux;
           end UPDATE_OUTPUTS;
END OUTPUTS;


