-- walkingbird.ads gives walkingbird-related declations
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sinai Park 
-- Date:April 24 2020
---------------------------------------------------

with Bird_Package; use Bird_Package;

package WalkingBird is
    type WalkingBird_Type is new Bird_Type with private;

 ----------------------------------------------------
 -- A WalkingBird's Call (Over-rides Bird.Call())          -
 -- Receive: A_WalkingBird, WalkingBird_Type                -
 -- Return: "walked past"                                -
 ----------------------------------------------------
 function Movement(A_WalkingBird : in WalkingBird_Type) return String;


private 

    type WalkingBird_Type is new Bird_Type with
        record
            null;
        end record;

end WalkingBird;
