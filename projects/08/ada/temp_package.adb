-- name_package.adb defines operations for the Name type.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sinai Park (sp46)
-- Date: April 10 2020
---------------------------------------------------------
with Ada.Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Float_Text_IO;

package body temp_package is 

-- Declare variables to be used later in some of the functions
  start, limit : Temp;
  degree_input : float;
  scale_input : character;
  
  ----------------------------------------------
  -- Init initializes a Temp variable          
  -- Receive: Temp variable;          
  --          scale, in char
  --          Degrees, in string;      
  -- Return: temp, set to degree and scale.     
  ----------------------------------------------

  procedure Init(Tm: out Temp;
                 Degrees : in float; Scale : in character ) is
  begin
    Tm.myDegree := Degrees;
    Tm.myScale := Scale;
  end Init;

  ----------------------------------------------
  -- getDegrees(Temp) retrieves Temp.myDegree        
  -- Receive: Nm, a Name.                      
  -- PRE: Nm has been initialized.            
  -- Return: Nm.myFirst.                     
  ----------------------------------------------
  function getDegree( Tm: in Temp) return float is
  begin
    return Tm.myDegree;
  end getDegree;

  ----------------------------------------------
  -- getScale(Temp) retrieves Scale as a char 
  -- Receive: Tm, a Temp.        
  -- PRE: Tm has been initialized.
  -- Return: Tm.myScale. 
  ----------------------------------------------
  function getScale( Tm: in Temp) return character is
  begin
     return Tm.myScale;
  end getScale;

----------------------------------------------------------------------------
-- setFahrenheit(Temp) sets the current temperature to Fahrenheit
-- Receive: Tm, a Temperature
-- PRE: Tm has been initialized.
-- Output: Tm.myDegree in Fahrenheit
----------------------------------------------------------------------------
procedure setFahrenheit(Tm: out Temp) is
begin
	if Tm.myScale = 'C' or Tm.myScale = 'c' then
		Tm.myDegree := (( Tm.myDegree * (9.0/5.0)) + 32.0 );
		Tm.myScale := 'F';
	elsif ( Tm.myScale = 'K' or Tm.myScale = 'k' ) then
		Tm.myDegree := (( Tm.myDegree * (9.0/5.0)) - 459.67) ;
		Tm.myScale := 'F';
	end if;
end setFahrenheit;

----------------------------------------------------------------------------
-- setCelsius(Temp) sets the current temperature to Celsius
-- Receive: Tm, a Temperature
-- PRE: Tm has been initialized.
-- Output: Tm.myDegree in Celsius
----------------------------------------------------------------------------
procedure setCelsius(Tm: out Temp) is
begin
	if Tm.myScale = 'F' or Tm.myScale = 'F' then
		Tm.myDegree := (( Tm.myDegree - 32.0 ) * (5.0/9.0) );
		Tm.myScale := 'C';
	elsif ( Tm.myScale = 'K' or Tm.myScale = 'k' ) then
		Tm.myDegree := ( Tm.myDegree  - 273.15) ;
		Tm.myScale := 'C';
	end if;
end setCelsius;

----------------------------------------------------------------------------
-- setKelvin(Temp) sets the current temperature to Kelvin
-- Receive: Tm, a Temperature
-- PRE: Tm has been initialized.
-- Output: Tm.myDegree in Kelvin
----------------------------------------------------------------------------
procedure setKelvin(Tm: out Temp) is
begin
	if Tm.myScale = 'F' or Tm.myScale = 'f' then
		Tm.myDegree := (( Tm.myDegree + 459.67) * (5.0/9.0) );
		Tm.myScale := 'K';
	elsif ( Tm.myScale = 'C' or Tm.myScale = 'c' ) then
		Tm.myDegree := ( Tm.myDegree + 273.15 );
		Tm.myScale := 'K';
	end if;
end setKelvin;

---------------------------------------------------------------------
-- raise(Temp, Degrees) raises the current degrees by Degrees
-- Receive: Temp, a Temperature; Degreess, a float
-- Output: Temp.myDegrees raised by Degrees
---------------------------------------------------------------------
procedure raise_temp(Tm: out Temp; Degrees: in float) is
begin
	Tm.myDegree := Tm.myDegree + Degrees;
end raise_temp;

---------------------------------------------------------------------
-- lower(Temp, Degrees) lowers the current degrees by Degrees
-- Receive: Temp, a Temperature; Degrees, a float
-- Output: Temp.myDegrees lowered by Degrees
---------------------------------------------------------------------
procedure lower(Tm: out Temp; Degrees: in float) is
begin
	Tm.myDegree := Tm.myDegree - Degrees;
end lower;


------------------------------------------------------------------
-- equals(Temp1, Temp2) checks if the two Temperatures are equal
-- Receive: Temp1 and Temp2, both Temperatures
-- Return: true if degrees are equal; else false
------------------------------------------------------------------
function equals(Temp1: in Temp; Temp2: in Temp) return boolean is
begin
	Init(start, getDegree(Temp1), getScale(Temp1));
	Init(limit, getDegree(Temp2), getScale(Temp2));

	setFahrenheit(start);
	setFahrenheit(limit);

	if (start.myDegree = limit.myDegree) then
		return true;
	else
		return false;
	end if;

end equals;

------------------------------------------------------------------
-- less_than(Temp1, Temp2) checks if Temp1 is less than Temp2
-- Receive: Temp1 and Temp2, both Temperatures
-- PRE: Temp1 and Temp2 have already been initialized
-- Return: true if Temp1 < Temp2; else return false
------------------------------------------------------------------
function less_than(Temp1: in Temp; Temp2: in Temp) return boolean is
begin
	Init(start, getDegree(Temp1), getScale(Temp1));
	Init(limit, getDegree(Temp2), getScale(Temp2));

	setFahrenheit(start);
	setFahrenheit(limit);

	if start.myDegree < limit.myDegree then
		return true;
	else
		return false;
	end if;

end less_than;

---------------------------------------------------------------------
-- readTemp(Tm) reads in the temperature and scale from the user
-- Receive: Tm, a Temperature
-- PRE: Temp has already been initialized
-- Output: Temp has new myDegrees and myScale values
---------------------------------------------------------------------
procedure readTemp(Tm: out Temp) is
begin
	New_Line;
	Put("Please enter the temperature: ");
	Get(degree_input);
	Put("Please enter the scale: ");
	Get(scale_input);

	
		Tm.myDegree := 	degree_input;
		Tm.myScale := scale_input;
	
end readTemp;

  ----------------------------------------------
  -- printTemp(Temp) displays a Temp value.          -
  -- PRE: Tm has been initialized.             -
  -- Receive: Tm, a Temp.                      -
  -- Output: a String representation of Tm                -
  ----------------------------------------------
  procedure printTemp( Tm: in Temp) is
  begin
    Put( Tm.myDegree );
	Put(" ") ;
	Put( Tm.myScale );
  end printTemp;


end temp_package; 
