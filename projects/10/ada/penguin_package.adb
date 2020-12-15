-- penguin_package.adb gives Penguin-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sinai Park 
-- Date:April 24 2020
---------------------------------------------------

with Ada.Text_IO, WalkingBird;
use Ada.Text_IO, WalkingBird;

package body Penguin_Package is

 ----------------------------------------------------
 -- A Penguin's Call (Over-rides Bird.Call())          -
 -- Receive: A_Penguin, a Penguin_Type.                   -
 -- Return: "Huh-huh-huuuuuh!"                                -
 ----------------------------------------------------
 function Call(A_Penguin : in Penguin_Type) return String is
 begin
    return "Huh-huh-huuuuuh!";
end Call;

 ------------------------------------------------------------
 -- Determine type of a Penguin (Over-rides Bird.Type_Name()) -
 -- Receive: A_Penguin, a Penguin_Type.                          -
 -- Return: "Penguin".                                        -
 -----------------------------------------------------------
 function Type_Name(A_Penguin : in Penguin_Type) return String is
 begin
    return "Penguin";
end Type_Name;


end Penguin_Package;
