-- flyingbird.adb gives flyingbird-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sinai Park 
-- Date:April 24 2020
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body FlyingBird is

 ----------------------------------------------------
 -- A FlyingBird's Call (Over-rides Bird.Call())          -
 -- Receive: A_Duck, a Duck_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
 function Movement(A_FlyingBird : in FlyingBird_Type) return String is
 begin
    return "flew past";
end Movement;



end FlyingBird;
