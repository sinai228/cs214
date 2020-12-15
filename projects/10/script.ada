Script started on 2020-04-28 09:40:32-0400
]0;sp46@gold09: ~/214/projects/10/ada[01;32msp46@gold09[00m:[01;34m~/214/projects/10/ada[00m$ gnatmake birds_packages[K
gnatmake: "birds" up to date.
]0;sp46@gold09: ~/214/projects/10/ada[01;32msp46@gold09[00m:[01;34m~/214/projects/10/ada[00m$ ./birds
Welcome to the Bird Park!
Tweety Bird just moved and said Squawwwwk!
Donald Duck just flew past and said Quack!
Mother Goose just flew past and said Honk!
Woodsy Owl just flew past and said Whoo!
Peter  Penguin just walked past and said Huh-huh-huuuuuh!
Orvill Ostrich just walked past and said Snork!
Keetee Kiwi just walked past and said KiiiKii!

]0;sp46@gold09: ~/214/projects/10/ada[01;32msp46@gold09[00m:[01;34m~/214/projects/10/ada[00m$ birds.      cat birds.adb bird_package.adb bird_packages. [A]0;sp46@gold09: ~/214/projects/10/ada[01;32msp46@gold09[00m:[01;34m~/214/projects/10/ada[00m$ cat birds.adb bird_package.adb bird_packages[K
[K[A]0;sp46@gold09: ~/214/projects/10/ada[01;32msp46@gold09[00m:[01;34m~/214/projects/10/ada[00m$ cat birds.adb bird_package.adb bird_packages  e.a ds
-- birds.adb tests our Birds type hierarchy.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College
-- Completed by: Sinai Park
-- Date:April 24 2020
-----------------------------------------------------

with Bird_Package, 
      Duck_Package, 
      Goose_Package, 
      Owl_Package,
      WalkingBird,
      FlyingBird,
      Penguin_Package,
      Ostrich_Package,
      Kiwi_Package,
      Ada.Text_IO;
use Bird_Package,
      Duck_Package, 
      Goose_Package,
      Owl_Package,
      WalkingBird,
      FlyingBird,
      Penguin_Package,
      Ostrich_Package,
      Kiwi_Package,
      Ada.Text_IO;


procedure Birds is

 Bird1 : Bird_Type;       -- base class
 Bird2 : Duck_Type;       -- derived class 1
 Bird3 : Goose_Type;      -- derived class 2
 Bird4 : Owl_Type;        -- derived class 3
 Bird5 : Penguin_Type;
 Bird6 : Ostrich_Type;
 Bird7 : Kiwi_Type;

begin
   Put("Welcome to the Bird Park!"); New_Line;
 Init(Bird1, "Tweety");
 Put(Bird1); New_Line;

 Init(Bird2, "Donald");
 Put(Bird2); New_Line;

 Init(Bird3, "Mother");
 Put(Bird3); New_Line;

 Init(Bird4, "Woodsy");
 Put(Bird4); New_Line;

 Init(Bird5, "Peter ");
 Put(Bird5); New_Line;

 Init(Bird6, "Orvill");
 Put(Bird6); New_Line;

 Init(Bird7, "Keetee");
 Put(Bird7); New_Line;

 New_Line;
end Birds;

-- bird_package.adb gives Bird-related definitions
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sinai Park
-- Date: April 24 2020
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Bird_Package is
    
 ----------------------------------------------------
 -- initialization                                  -
 -- Receive: A_Bird, a Bird_Type;                   -
 --          Name, a String                         -
 -- Return: a Bird_Type in which My_Name = Name.    -
 ----------------------------------------------------
 procedure Init(A_Bird : out Bird_Type; Name : in String) is
 begin
    A_Bird.My_Name := Name;
end Init;

 ----------------------------------------------------
 -- Name accessor                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: A_Bird.My_Name.                         -
 ----------------------------------------------------
 function Name(A_Bird : in Bird_Type) return String is
 begin
    return A_Bird.My_Name;
end Name; 

 ----------------------------------------------------
 -- A Bird's Call                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: a default bird-call ("Squawk!").        -
 ----------------------------------------------------
function Call(A_Bird : in Bird_Type) return String is
begin 
    return "Squawwwwk!";
end Call;


 ----------------------------------------------------
 -- Determine type of a Bird (for derived types)    -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: "Bird".                                 -
 ----------------------------------------------------
 function Type_Name(A_Bird : in Bird_Type) return String is
 begin
    return "Bird";
end Type_Name;

 ----------------------------------------------------
 -- Determine movement of a Bird (for derived types)    -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: "Bird".                                 -
 ----------------------------------------------------
 function Movement(A_Bird : in Bird_Type) return String is
 begin
    return "moved";
end Movement;

 ----------------------------------------------------
 -- Output a Bird                                   -
 -- Receive: A_Bird, a Bird or subclass of Bird.    -
 -- Output: Everything known about A_Bird           -
 ----------------------------------------------------
 procedure Put(A_Bird : in Bird_Type'Class) is
 begin
    Put( Name(A_Bird) );
    Put(' ');
    Put(Type_Name(A_Bird));
    Put(" just ");
    Put( Movement(A_Bird) );
    Put(" and said ");
    Put( Call(A_Bird));
end Put;

end Bird_Package;

-- bird_package.ads gives Bird-related declarations
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Sinai Park
-- Date: April 24 2020
---------------------------------------------------

package Bird_Package is

    type Bird_Type is tagged private;

 ----------------------------------------------------
 -- initialization                                  -
 -- Receive: A_Bird, a Bird_Type;                   -
 --          Name, a String                         -
 -- Return: a Bird_Type whose My_Name = Name.       -
 ----------------------------------------------------
procedure Init(A_Bird : out Bird_Type; Name : in String);

 ----------------------------------------------------
 -- Name accessor                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: A_Bird.My_Name.                         -
 ----------------------------------------------------
 function Name(A_Bird : in Bird_Type) return String;

 ----------------------------------------------------
 -- A Bird's Call                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: a default bird-call ("Squawk!").        -
 ----------------------------------------------------
 function Call(A_Bird : in Bird_Type) return String;

 ----------------------------------------------------
 -- Determine type of a Bird (for derived types)    -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: "Bird".                                 -
 ----------------------------------------------------
 function Type_Name(A_Bird : in Bird_Type) return String;

  ----------------------------------------------------
 -- Determine movement of a Bird (for derived types)    -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: "Bird".                                 -
 ----------------------------------------------------
 function Movement(A_Bird : in Bird_Type) return String;

 ----------------------------------------------------
 -- Output a Bird                                   -
 -- Receive: A_Bird, a Bird or subclass of Bird.    -
 -- Output: Everything known about A_Bird           -
 ----------------------------------------------------
 procedure Put(A_Bird: in Bird_Type'Class);

private

type Bird_Type is
    tagged record
        My_Name : String(1..6);
    end record;

end Bird_Package;
]0;sp46@gold09: ~/214/projects/10/ada[01;32msp46@gold09[00m:[01;34m~/214/projects/10/ada[00m$ [Kcat flyingbird.adb l flyingbird.as ds
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
]0;sp46@gold09: ~/214/projects/10/ada[01;32msp46@gold09[00m:[01;34m~/214/projects/10/ada[00m$ cat walkingbird.ab db c walkingbird.ads
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
]0;sp46@gold09: ~/214/projects/10/ada[01;32msp46@gold09[00m:[01;34m~/214/projects/10/ada[00m$ cat duck_package.adb b duck_package.ads
-- duck_package.adb gives Duck-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sinai Park 
-- Date:April 24 2020
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Duck_Package is

 ----------------------------------------------------
 -- A Duck's Call (Over-rides Bird.Call())          -
 -- Receive: A_Duck, a Duck_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
 function Call(A_Duck : in Duck_Type) return String is
 begin
    return "Quack!";
end Call;

 ------------------------------------------------------------
 -- Determine type of a Duck (Over-rides Bird.Type_Name()) -
 -- Receive: A_Duck, a Duck_Type.                          -
 -- Return: "Duck".                                        -
 -----------------------------------------------------------
 function Type_Name(A_Duck : in Duck_Type) return String is
 begin
    return "Duck";
end Type_Name;


end Duck_Package;
-- duck_package.ads gives Duck-related declarations,
--
--  and derives Duck from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sinai Park
-- Date: April 24 2020
---------------------------------------------------

with FlyingBird; use FlyingBird;

package Duck_Package is
    type Duck_Type is new FlyingBird_Type with private;

 ----------------------------------------------------
 -- A Duck's Call (Over-rides Bird.Call())          -
 -- Receive: A_Duck, a Duck_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
 function Call(A_Duck : in Duck_Type) return String;

 ------------------------------------------------------------
 -- Determine type of a Duck (Over-rides Bird.Type_Name()) -
 -- Receive: A_Duck, a Duck_Type.                          -
 -- Return: "Duck".                                        -
 -----------------------------------------------------------
 function Type_Name(A_Duck : in Duck_Type) return String;

private
    type Duck_Type is new FlyingBird_Type with
        record
            null;
        end record;

end Duck_Package;
]0;sp46@gold09: ~/214/projects/10/ada[01;32msp46@gold09[00m:[01;34m~/214/projects/10/ada[00m$ cat goose_package.adb goods se   se_package.ads
-- goose_package.adb gives Goose-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

package body Goose_Package is

 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose_Type.                 -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------
 function Call(A_Goose : in Goose_Type) return String is
 begin
    return "Honk!";
 end Call;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose_Type.                  -
 -- Return: "Goose".                                 -
 -----------------------------------------------------
function Type_Name(A_Goose : in Goose_Type) return String is
begin 
    return "Goose";
end Type_Name;

end Goose_Package;
-- goose_package.ads gives Goose-related declarations,
--
--  and derives Goose from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sinai Park
-- Date:April 27 2020
----------------- ----------------------------------

with FlyingBird; use FlyingBird;

package Goose_Package is

 type Goose_Type is new FlyingBird_Type with private;

 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose.                      -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------
function Call(A_Goose : in Goose_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose.                       -
 -- Return: "Goose".                                 -
 -----------------------------------------------------
 function Type_Name(A_Goose : in Goose_Type) return String;

private

    type Goose_Type is new FlyingBird_Type with
        record
            null;
        end record;
        
end Goose_Package;
]0;sp46@gold09: ~/214/projects/10/ada[01;32msp46@gold09[00m:[01;34m~/214/projects/10/ada[00m$ cat owl_package.adb owl_package.ads
-- owl_package.adb gives Owl-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Owl_Package is


 ----------------------------------------------------
 -- A Owl's Call (Over-rides Bird.Call())           -
 -- Receive: An_Owl, an Owl_Type.                   -
 -- Return: "Whoo!"                                 -
 ----------------------------------------------------
function Call(An_Owl : in Owl_Type) return String is
begin
    return "Whoo!";
end Call;

 -----------------------------------------------------
 -- Determine type of a Owl                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: An_Owl, an Owl_Type.                    -
 -- Return: "Owl".                                   -
 -----------------------------------------------------
function Type_Name(An_Owl : in Owl_Type) return String is
begin
    return "Owl";
end Type_Name;


end Owl_Package;
-- owl_package.ads gives Owl-related declarations,
--  and derives Owl from Bird.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sinai Park
-- Date:April 24 2020
---------------------------------------------------

with FlyingBird; use FlyingBird;

package Owl_Package is
    type Owl_Type is new FlyingBird_Type with private;

 ----------------------------------------------------
 -- A Owl's Call (Over-rides Bird.Call())           -
 -- Receive: An_Owl, an Owl_Type.                   -
 -- Return: "Whoo!"                                 -
 ----------------------------------------------------
function Call(An_Owl : in Owl_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Owl                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: An_Owl, an Owl_Type.                    -
 -- Return: "Owl".                                   -
 -----------------------------------------------------
 function Type_Name(An_Owl : in Owl_Type) return String;

private

    type Owl_Type is new FlyingBird_Type with
        record
            null;
        end record;
end Owl_Package;
]0;sp46@gold09: ~/214/projects/10/ada[01;32msp46@gold09[00m:[01;34m~/214/projects/10/ada[00m$ cat penguin_package.adb penguin_package.ads
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
-- Penguin_package.ads gives Penguin-related declarations,
--
--  and derives Penguin from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sinai Park
-- Date: April 24 2020
---------------------------------------------------

with WalkingBird; use WalkingBird;

package Penguin_Package is
    type Penguin_Type is new WalkingBird_Type with private;

 ----------------------------------------------------
 -- A Penguin's Call (Over-rides Bird.Call())          -
 -- Receive: A_Penguin, a Penguin_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
 function Call(A_Penguin : in Penguin_Type) return String;

 ------------------------------------------------------------
 -- Determine type of a Penguin (Over-rides Bird.Type_Name()) -
 -- Receive: A_Penguin, a Penguin_Type.                          -
 -- Return: "Penguin".                                        -
 -----------------------------------------------------------
 function Type_Name(A_Penguin : in Penguin_Type) return String;

private
    type Penguin_Type is new WalkingBird_Type with
        record
            null;
        end record;

end Penguin_Package;]0;sp46@gold09: ~/214/projects/10/ada[01;32msp46@gold09[00m:[01;34m~/214/projects/10/ada[00m$ cat ostrich_package.adn b ostrich_P package.ads
-- ostrich_package.adb gives Ostrich-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sinai Park 
-- Date:April 24 2020
---------------------------------------------------

with Ada.Text_IO, WalkingBird;
use Ada.Text_IO, WalkingBird;

package body Ostrich_Package is

 ----------------------------------------------------
 -- A Ostrich's Call (Over-rides Bird.Call())          -
 -- Receive: A_Ostrich, a Ostrich_Type.                   -
 -- Return: "Snork!"                                -
 ----------------------------------------------------
 function Call(A_Ostrich : in Ostrich_Type) return String is
 begin
    return "Snork!";
end Call;

 ------------------------------------------------------------
 -- Determine type of a Ostrich (Over-rides Bird.Type_Name()) -
 -- Receive: A_Ostrich, a Ostrich_Type.                          -
 -- Return: "Ostrich".                                        -
 -----------------------------------------------------------
 function Type_Name(A_Ostrich : in Ostrich_Type) return String is
 begin
    return "Ostrich";
end Type_Name;


end Ostrich_Package;
-- Ostrich_package.ads gives Ostrich-related declarations,
--
--  and derives Ostrich from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sinai Park
-- Date: April 24 2020
---------------------------------------------------

with WalkingBird; use WalkingBird;

package Ostrich_Package is
    type Ostrich_Type is new WalkingBird_Type with private;

 ----------------------------------------------------
 -- A Ostrich's Call (Over-rides Bird.Call())          -
 -- Receive: A_Ostrich, a Ostrich_Type.                   -
 -- Return: "Snork!"                                -
 ----------------------------------------------------
 function Call(A_Ostrich : in Ostrich_Type) return String;

 ------------------------------------------------------------
 -- Determine type of a Ostrich (Over-rides Bird.Type_Name()) -
 -- Receive: A_Ostrich, a Ostrich_Type.                          -
 -- Return: "Ostrich".                                        -
 -----------------------------------------------------------
 function Type_Name(A_Ostrich : in Ostrich_Type) return String;

private
    type Ostrich_Type is new WalkingBird_Type with
        record
            null;
        end record;

end Ostrich_Package;]0;sp46@gold09: ~/214/projects/10/ada[01;32msp46@gold09[00m:[01;34m~/214/projects/10/ada[00m$ cat kiwi+ _package.adb kiwi_package.ads
-- Kiwi_package.adb gives Kiwi-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sinai Park 
-- Date:April 24 2020
---------------------------------------------------

with Ada.Text_IO, WalkingBird;
use Ada.Text_IO, WalkingBird;

package body Kiwi_Package is

 ----------------------------------------------------
 -- A Kiwi's Call (Over-rides Bird.Call())          -
 -- Receive: A_Kiwi, a Kiwi_Type.                   -
 -- Return: "KiiiKii!"                                -
 ----------------------------------------------------
 function Call(A_Kiwi : in Kiwi_Type) return String is
 begin
    return "KiiiKii!";
end Call;

 ------------------------------------------------------------
 -- Determine type of a Kiwi (Over-rides Bird.Type_Name()) -
 -- Receive: A_Kiwi, a Kiwi_Type.                          -
 -- Return: "Kiwi".                                        -
 -----------------------------------------------------------
 function Type_Name(A_Kiwi : in Kiwi_Type) return String is
 begin
    return "Kiwi";
end Type_Name;


end Kiwi_Package;
-- Kiwi_package.ads gives Kiwi-related declarations,
--
--  and derives Kiwi from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sinai Park
-- Date: April 24 2020
---------------------------------------------------

with WalkingBird; use WalkingBird;

package Kiwi_Package is
    type Kiwi_Type is new WalkingBird_Type with private;

 ----------------------------------------------------
 -- A Kiwi's Call (Over-rides Bird.Call())          -
 -- Receive: A_Kiwi, a Kiwi_Type.                   -
 -- Return: "Kiiikiiki!"                                -
 ----------------------------------------------------
 function Call(A_Kiwi : in Kiwi_Type) return String;

 ------------------------------------------------------------
 -- Determine type of a Kiwi (Over-rides Bird.Type_Name()) -
 -- Receive: A_Kiwi, a Kiwi_Type.                          -
 -- Return: "Kiwi".                                        -
 -----------------------------------------------------------
 function Type_Name(A_Kiwi : in Kiwi_Type) return String;

private
    type Kiwi_Type is new WalkingBird_Type with
        record
            null;
        end record;

end Kiwi_Package;]0;sp46@gold09: ~/214/projects/10/ada[01;32msp46@gold09[00m:[01;34m~/214/projects/10/ada[00m$ exit

Script done on 2020-04-28 09:42:54-0400
