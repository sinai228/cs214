-- name_package.ads declares the Name type and its operations.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sinai Park (sp46)
-- Date: April 10 2020
--------------------------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

package temp_package is 

  type Temp is private;

  procedure Init(Tm: out Temp;
                 Degrees : in float; Scale : in character);
 
  function getDegree( Tm: in Temp) return float;
  
  function getScale( Tm: in Temp) return character;
 
  procedure setFahrenheit(Tm: out Temp);
  
  procedure setCelsius(Tm: out Temp);

  procedure setKelvin(Tm: out Temp);

  procedure raise_temp(Tm: out Temp; Degrees: in float);

  procedure lower(Tm: out Temp; Degrees: in float);

  function equals(Temp1: in Temp; Temp2: in Temp) return boolean;

  function less_than(Temp1: in Temp; Temp2: in Temp) return boolean;
  
  procedure readTemp(Tm: out Temp);

  procedure printTemp( Tm: in Temp);

 private

  type Temp is
      record
         myDegree: float;
         myScale: character;
      end record;

end temp_package;
