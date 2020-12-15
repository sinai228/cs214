Script started on 2020-04-19 06:28:51-0400
]0;sp46@gold06: ~/214/projects/09/java[01;32msp46@gold06[00m:[01;34m~/214/projects/09/java[00m$ java Maxc -deprecation Max.java
]0;sp46@gold06: ~/214/projects/09/java[01;32msp46@gold06[00m:[01;34m~/214/projects/09/java[00m$ javac -deprecation Max.java Max[K
99 88 77 66 55 
55 66 77 88 99 
55 77 99 88 66 
The max value of list1 is: 99
The max value of list2 is: 99
The max value of list3 is: 99
The index of 99 is at 0
The index of 99 is at 4
The index of 99 is at 2
The index of 99 is at -1
]0;sp46@gold06: ~/214/projects/09/java[01;32msp46@gold06[00m:[01;34m~/214/projects/09/java[00m$ cat Max.java
/* Max.java finds the maximum values in Java linked lists.
 *
 * Begun by: Dr. Adams, CS 214 at Calvin College.
 * Completed by: Sinai Park(sp46)
 * Date: April 17 2020 
 */

import java.util.LinkedList;
import java.util.Iterator;
import java.util.Collections;

public class Max {               

  public static void main(String [] args) {
    // define list1, list2, list3 here ...

  LinkedList<Integer> list1 = new LinkedList<Integer>();      
  LinkedList<Integer> list2 = new LinkedList<Integer>();      
  LinkedList<Integer> list3 = new LinkedList<Integer>();  

    list1.add(99);    // 99, 88, 77, 66, 55
    list1.add(88);    // max is first
    list1.add(77);
    list1.add(66);  
    list1.add(55);

    list2.add(55);    // 55, 66, 77, 88, 99
    list2.add(66);    // max is last
    list2.add(77);  
    list2.add(88);  
    list2.add(99);  
  
    list3.add(55);    // 55, 77, 99, 88, 66
    list3.add(77);    // max is in the middle
    list3.add(99);  
    list3.add(88);  
    list3.add(66);  
  
    print(list1); 
    print(list2); 
    print(list3);

   System.out.println("The max value of list1 is: " + Collections.max(list1));
   System.out.println("The max value of list2 is: " + Collections.max(list2));
   System.out.println("The max value of list3 is: " + Collections.max(list3));

   System.out.println("The index of 99 is at " + search(list1, 99) );
   System.out.println("The index of 99 is at " + search(list2, 99) );
   System.out.println("The index of 99 is at " + search(list3, 99) );
   
   LinkedList<Integer> list4 = new LinkedList<Integer>();  

    list4.add(00);    // 00, 88, 77, 66, 55
    list4.add(88);    // 99 not in list
    list4.add(77);
    list4.add(66);  
    list4.add(55);
    System.out.println("The index of 99 is at " + search(list4, 99) );
  }

  /** print() displays a LinkedList on the console.
   *
   * @param: aList, a LinkedList<Integer>
   * 
   * Postcondition: the Integer values in aList
   *                 have been displayed to System.out,
   *                 separated by spaces.
   */
    //function print takes a list and prints out all the values within that list
    public static void print(LinkedList<Integer> aList){
      Iterator<Integer> listIterator = aList.iterator();
      while (listIterator.hasNext()) {
        System.out.print(listIterator.next() + " ");
      }
      System.out.print("\n");
    }

  /* search() searches a LinkedList for a value and returns the 
   * position of the value, -1 if otherwise 
   *
   * @param: aList, a LinkedList<Integer>
   * 
   * Postcondition: the System.out prints the pos of the value in list
   *                -1 if the value does not exist 
   */
    //function print takes a list and prints out all the values within that list
    public static int search(LinkedList<Integer> aList, int aValue){
      Iterator<Integer> listIterator = aList.iterator();
      int count = 0;
      while (listIterator.hasNext() ) {

        if (aList.get(count) == aValue) 
          return count;
        
        else {
          count = count + 1;
          listIterator.next();
          
        }
      }
      return -1;   
    }

}

]0;sp46@gold06: ~/214/projects/09/java[01;32msp46@gold06[00m:[01;34m~/214/projects/09/java[00m$ mv    exit

Script done on 2020-04-19 06:29:50-0400
