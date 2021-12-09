-------------------------------------------------------------------------
-- Jose Carlos Garcia
-- CPR E 381 - Lab 1 - Part 3b
-- Iowa State University
-------------------------------------------------------------------------


-- OnesComp_struct.vhd
-------------------------------------------------------------------------
-- DESCRIPTION: This file contains an implementation of an N-Bit One's Complementor using the invg.vhd
--
-- NOTES:
-- This is my structural VHDL design of the N-Bit One's Complementor design for CPR E 381 Lab 1
-------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
------------------------------------------------------------------------
-- Description of OnesComp --
------------------------------------------------------------------------
entity OnesComp is 
   generic(N : integer := 32); 
   port(i_bit		: in std_logic_vector(N-1 downto 0);
	o_neg		: out std_logic_vector(N-1 downto 0));
 
end OnesComp; 

architecture structure of OnesComp is

 component invg
  port(i_A          : in std_logic;
       o_F          : out std_logic);

 end component;

begin 

 ---------------------------------------------------------------------------
  -- Level 0: Negate
 ---------------------------------------------------------------------------
gNBit_OnesComp:  for i in 0 to N-1 generate
  
   gNot:invg 
     port MAP(i_A              => i_bit(i),
             o_F              => o_neg(i));
            
	end generate gNBit_OnesComp;
 
 end structure;
 
