-- flyingbird.ads gives flyingbird-related declarations
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sinai Park 
-- Date:April 24 2020
---------------------------------------------------

with Bird_Package; use Bird_Package;

package FlyingBird is
    type FlyingBird_Type is new Bird_Type with private;

 ----------------------------------------------------
 -- A FlyingBird's Movement (Over-rides Bird.Movement())          -
 -- Receive: A_FlyingBird, a FlyingBird_Type.                   -
 -- Return: "flew past!"                                -
 ----------------------------------------------------
 function Movement(A_FlyingBird : in FlyingBird_Type) return String;


private 

    type FlyingBird_Type is new Bird_Type with
        record
            null;
        end record;

end FlyingBird;
