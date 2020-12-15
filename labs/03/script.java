Script started on 2020-02-21 13:09:43-0500
]0;sp46@gold03: ~/214/labs/03[01;32msp46@gold03[00m:[01;34m~/214/labs/03[00m$ cat YearCodes.java
/* YearCodes.java is a driver for function yearCode().
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Sinai Park(sp46)
 * Date: Feb 21, 2020
 ****************************************************************/

import java.util.Scanner;

public class YearCodes {

   public static void main(String[] args) {
      Scanner keyboard = new Scanner(System.in);
      System.out.println("\nEnter your academic year: "); // prompt

      String year = keyboard.next();      // read year
      System.out.println(yearCode(year)); // display its code
   }

   /***************************************************************
    * yearCode() converts an academic year into its integer code.
    *
    * Receive: year, a string.
    * PRE: year is one of {freshman, sophomore, junior, or senior}.
    * Return: the integer code corresponding to year.
    */

    public static int yearCode(String year)
    {
      if (year.equals("freshman"))
         return 1;
      else
         if (year.equals("sophomore"))
            return 2;
         else
            if (year.equals("junior"))
               return 3;
            else
               if (year.equals("senior"))
                  return 4;
               else
                  return 0;  
   //less readable but accrately reflects the grammar rules for java-if
   
    }
    
}
]0;sp46@gold03: ~/214/labs/03[01;32msp46@gold03[00m:[01;34m~/214/labs/03[00m$ javac -deprecation YearCodes.java
]0;sp46@gold03: ~/214/labs/03[01;32msp46@gold03[00m:[01;34m~/214/labs/03[00m$ java YearCpde   odes

Enter your academic year: 
senior
4
]0;sp46@gold03: ~/214/labs/03[01;32msp46@gold03[00m:[01;34m~/214/labs/03[00m$ junior
junior: command not found
]0;sp46@gold03: ~/214/labs/03[01;32msp46@gold03[00m:[01;34m~/214/labs/03[00m$ so  juniorava YearCodes

Enter your academic year: 
junior
3
]0;sp46@gold03: ~/214/labs/03[01;32msp46@gold03[00m:[01;34m~/214/labs/03[00m$ java YearCodes

Enter your academic year: 
sophomore
2
]0;sp46@gold03: ~/214/labs/03[01;32msp46@gold03[00m:[01;34m~/214/labs/03[00m$ java YearCodes

Enter your academic year: 
freshman
1
]0;sp46@gold03: ~/214/labs/03[01;32msp46@gold03[00m:[01;34m~/214/labs/03[00m$ s seniorsss         java YearCodes

Enter your academic year: 
seniorssssss
0
]0;sp46@gold03: ~/214/labs/03[01;32msp46@gold03[00m:[01;34m~/214/labs/03[00m$ exit

Script done on 2020-02-21 13:11:03-0500
