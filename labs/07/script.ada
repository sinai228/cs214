Script started on 2020-03-31 09:11:28-0400
]0;sp46@gold09: ~/214/labs/07[01;32msp46@gold09[00m:[01;34m~/214/labs/07[00m$ cat.        t   t name_tester.acb  db
-- namer.adb "test-drives" the Name type.
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Sinai Park (sp46)
-- Date: March 31 2020
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

procedure name_tester is

  -- replace this line with the definition of NAME_SIZE
  NAME_SIZE : constant := 8;

  -- replace this line with the definition of Name
  type name is 
    record 
      MyFirst, MyMiddle, MyLast : String( 1..NAME_SIZE );
    end record;

  aName : Name ;


  ----------------------------------------------
  -- Init initializes a Name variable          -
  -- Receive: theName, the Name variable;      -
  --          First, the first name;           -
  --          Middle, the middle name;         -
  --          Last, the last name.             -
  -- Return: theName, its fields set to First, -
  --               Middle, and Last.           -
  ----------------------------------------------

  procedure Init(TheName: out Name;
                 First, Middle, Last : in String) is

  begin
    TheName.MyFirst := First;
    TheName.MyMiddle := Middle;
    TheName.MyLast := Last;
  end Init;


  ----------------------------------------------
  -- getFirst(Name) retrieves Name.myFirst        -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myFirst.                  -
  ----------------------------------------------

  function getFirst(TheName : in Name) return String is
   begin
      return TheName.MyFirst;
   end getFirst;


  ----------------------------------------------
  -- getMiddle(Name) retrieves Name.myMiddle        -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myMiddle.                  -
  ----------------------------------------------
  function getMiddle(TheName : in Name) return String is
   begin
      return TheName.myMiddle;
   end getMiddle;

    ----------------------------------------------
  -- getLast(Name) retrieves Name.myLast        -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myLast.                  -
  ----------------------------------------------
  function getLast(TheName : in Name) return String is
   begin
      return TheName.myLast;
   end getLast;

  -----------------------------------------------
  -- getFullName(Name) retrieves Name as a String  -
  -- Receive: theName, a Name.                  -
  -- PRE: theName has been initialized.         -
  -- Return: a String representation of theName -
  -----------------------------------------------

  function getFullName(TheName : in Name) return String is
   begin
      return TheName.myFirst & " " & TheName.myMiddle & " " & TheName.myLast;
   end getFullName;

  ----------------------------------------------
  -- Put(Name) displays a Name value.          -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name.                 -
  -- Output: theName, to the screen.           -
  ----------------------------------------------
   
   procedure Put(TheName: in Name) is      --parameter flows in but not out, so use in mode
   begin
      Put( TheName.MyFirst & " " & TheName.MyMiddle & " " & TheName.MyLast );
   end Put;


begin
   Init(aName, "John    ", "Paul    ", "Jones   ");

   pragma Assert( getFirst(aName) = "John    ", "getFirst() failed");
   pragma Assert( getMiddle(aName) = "Paul    ", "getMiddle() failed");
   pragma Assert( getLast(aName) = "Jones   ", "getLast() failed");
   pragma Assert( getFullName(aName) = "John     Paul     Jones   ", 
                    "getFullName() failed");

   Put(aName); New_line;
   Put("All tests passed!"); New_line;

end name_tester;

]0;sp46@gold09: ~/214/labs/07[01;32msp46@gold09[00m:[01;34m~/214/labs/07[00m$ make ada
gnatmake name_tester -gnata
x86_64-linux-gnu-gcc-7 -c -gnata name_tester.adb
x86_64-linux-gnu-gnatbind-7 -x name_tester.ali
x86_64-linux-gnu-gnatlink-7 name_tester.ali
]0;sp46@gold09: ~/214/labs/07[01;32msp46@gold09[00m:[01;34m~/214/labs/07[00m$ ./name_tester
John     Paul     Jones   
All tests passed!
]0;sp46@gold09: ~/214/labs/07[01;32msp46@gold09[00m:[01;34m~/214/labs/07[00m$ exit

Script done on 2020-03-31 09:14:53-0400
