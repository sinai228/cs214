Script started on 2020-04-10 15:13:03-0400
]0;sp46@gold09: ~/214/labs/08/java[01;32msp46@gold09[00m:[01;34m~/214/labs/08/java[00m$ cat Na ameTester.java
/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Sinai Park(sp46)
 * Date: April 10 2020
 ************************************************************/

public class NameTester  
{
  public static void main(String[] args)
  {
      Name aName = new Name("John", "Paul", "Jones");

      assert aName.getFirst().equals("John") ;
      assert aName.getMiddle().equals("Paul") ;
      assert aName.getLast().equals("Jones") ;

      System.out.println(aName);
      assert aName.toString().equals("John Paul Jones");

      System.out.println("All tests passed!");
  }
}


]0;sp46@gold09: ~/214/labs/08/java[01;32msp46@gold09[00m:[01;34m~/214/labs/08/java[00m$ cat Name.java
/* Name.java implements class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: SInai Park(sp46)
 * Date: April 10 2020
 ************************************************************/


// the Name class appears outside of the rest of the program
class Name {

  // Name object constructor with initialization  
  public Name(final String first, final String middle, final String last) {
      myFirst = first;
      myMiddle = middle;
      myLast = last;
  }
 
  // extractor for first name of a Name object
  public final String getFirst() {
      return myFirst;
  }

  // extractor for middle name of a Name object
  public final String getMiddle() {
      return myMiddle;
  }

  // extractor for last name of a Name object
  public final String getLast() {
      return myLast;
  }
  
  // return string created by piecing together first, middle, and last names
  public final String toString() {
      return myFirst + ' ' + myMiddle + ' ' + myLast;
  }

  private String myFirst, myMiddle, myLast;  // private instance variables
}
]0;sp46@gold09: ~/214/labs/08/java[01;32msp46@gold09[00m:[01;34m~/214/labs/08/java[00m$ cat Name.java[6@Tester.java[5P.class[7Pd java214/labs/08vim Temp_test.rbls[Kvim Temp_test.rb[2Pcd 214/labs/08[7Pjavaat Name.classTester.java[6P.java[Kjavac -deprecation Ja  Nm ameTester.java
]0;sp46@gold09: ~/214/labs/08/java[01;32msp46@gold09[00m:[01;34m~/214/labs/08/java[00m$ java NameTester
John Paul Jones
All tests passed!
]0;sp46@gold09: ~/214/labs/08/java[01;32msp46@gold09[00m:[01;34m~/214/labs/08/java[00m$ sc  mv  exit

Script done on 2020-04-10 15:13:44-0400
