-- name_package.ads declares the Name type and its operations.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sinai Park (sp46)
-- Date: April 10 2020
--------------------------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

package name_package is 

  type Name is private;

  procedure Init(Nm: out Name;
                 First, Middle, Last : in String);
 
  function getFirst( Nm: in Name) return String;
  
  function getMiddle( Nm: in Name) return String;
 
  function getLast( Nm: in Name) return String;
  
  function getFullName( Nm: in Name) return String;
  
  procedure Put(Nm: in Name);

 private

  NAME_SIZE : constant Positive := 8;

  type Name is
      record
         myFirst,
         myMiddle,
         MyLast : String(1..NAME_SIZE);
      end record;

end name_package;
