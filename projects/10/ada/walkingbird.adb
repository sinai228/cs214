-- walkingbird.adb gives walkingbird-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sinai Park 
-- Date:April 24 2020
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body WalkingBird is

 ----------------------------------------------------
 -- A WalkingBird's Movement (Over-rides Bird.Call())          -
 -- Receive: A_WalkingBIrd, a WalkingBird_Type.                   -
 -- Return: "walked past!"                                -
 ----------------------------------------------------
 function Movement(A_WalkingBird : in WalkingBird_Type) return String is
 begin
    return "walked past";
end Movement;



end WalkingBird;
