Script started on 2020-04-26 11:13:38-0400
]0;sp46@gold09: ~/214/projects/10/java[01;32msp46@gold09[00m:[01;34m~/214/projects/10/java[00m$ javac -deprecation Birds.java
]0;sp46@gold09: ~/214/projects/10/java[01;32msp46@gold09[00m:[01;34m~/214/projects/10/java[00m$ java Birds

Welcome to the Bird Park!

Hawkeye Bird just moved and said Squaaaaaaaak!
Donald Duck just flew past and said Quack!
Mother Goose Goose just flew past and said Honk!
Woodsey Owl just flew past and said Owwwwww!
Peter Penguin just walked past and said Huh-huh-huuuh!
Oregon Ostrich just walked past and said Snork!
Keeeeteee Kiwi just walked past and said Ki-ki-kikiii!

]0;sp46@gold09: ~/214/projects/10/java[01;32msp46@gold09[00m:[01;34m~/214/projects/10/java[00m$ cat Birds.java Bird.java FlytingB     ingBIrd.java W          ird.java Wal kingBird.java
/* Birds.java illustrates inheritance and polymorphism.
 *
 * Begun by: Joel Adams, for CS 214 Lab 10 at Calvin College.
 * Completed by: Sinai Park
 * Date: April 24 2020
 *********************************************************/

public class Birds {
  
  public static void main(String[] args) {
      System.out.println("\nWelcome to the Bird Park!\n");

      Bird bird0 = new Bird();

      Bird bird1 = new Bird("Hawkeye");
      bird1.print();

      Duck bird2 = new Duck("Donald");
      bird2.print();

      Goose bird3 = new Goose("Mother Goose");
      bird3.print();

      Owl bird4 = new Owl("Woodsey");
      bird4.print();

      Penguin bird5 = new Penguin("Peter");
      bird5.print();

      Ostrich bird6 = new Ostrich("Oregon");
      bird6.print();

      Kiwi bird7 = new Kiwi("Keeeeteee");
      bird7.print();

  
      System.out.println();
    }
}

/* Bird.java provides a Bird class.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Sinai Park
 * Date: April 24 2020
 ******************************************************/

import java.io.*;

public class Bird
{

 /* default constructor
  * PostCond: myName == "".
  */
public Bird()
{
	myName = " ";
}

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
public Bird(String name)
{
	myName = name;
}

 /* Name accessor
  * Return: myName.
  */
public String getName()
{
	return myName;
}

 /* A Bird's Call
  * Return: a default bird-call ("Squawk!").
  */
public String call()
{
	return "Squaaaaaaaak!";
}

 /* Output a Bird 
  * Output: Everything known about myself
  *          to the standard output stream.
  */
public void print()
{
	System.out.println(getName() + ' ' + getClass().getName() + " just " +  movement() + " and said " + call() );
}

 /* A Bird's Movement
  * Return: a default bird-call ("Squawk!").
  */
public String movement()
{
  return "moved";
}

  private String myName;
}

/* FlyingBird.java provides subclass for a Bird class.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Sinai Park
 * Date: April 24 2020
 ******************************************************/


public class FlyingBird extends Bird {


    /* explicit constructor
    * Receive: name, a String 
    * PostCond: myName == name.
    */
    public FlyingBird(String name)
    {
    super(name);
    }
    
     /* A FlyingBird's Movement
      * Return: a flying-movement ("flew past!").
      */
    public String movement()
    {
        return "flew past";
    }
    
    }/* WalkingBird.java provides subclass for a Bird class.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Sinai Park
 * Date: April 24 2020
 ******************************************************/


public class WalkingBird extends Bird {

    /* explicit constructor
    * Receive: name, a String 
    * PostCond: myName == name.
    */
    public WalkingBird(String name)
    {
    super(name);
    }

    /* A WalkingBird's Movement
     * Return: a walking-movement ("walked past!").
     */
   public String movement()
   {
       return "walked past";
   }
   
   }]0;sp46@gold09: ~/214/projects/10/java[01;32msp46@gold09[00m:[01;34m~/214/projects/10/java[00m$ [Kcat Duck.java Goose.java Owl.java
/* Duck.java provides a Duck subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Sinai Park
 * Date: April 24 2020
 ******************************************************/

public class Duck extends FlyingBird {


    
 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
public Duck(String name)
{
	super(name);
}


 /* A Duck's Call
  * Return: a duck-call ("Quack!").
  */
public String call()
{
	return "Quack!";
}

}

/* Goose.java provides a Goose subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Sinai Park
 * Date:April 24 2020
 ******************************************************/

public class Goose extends FlyingBird {

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */

public Goose(String name)
{ 	
	super(name);
}

 /* A Goose's Call
  * Return: a goose-call ("Honk!").
  */
public String call()
{
	return "Honk!";
}
} 

/* Owl.java provides an Owl subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Sinai Park
 * Date: April 24 2020
 ******************************************************/

public class Owl extends FlyingBird {


 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
public Owl(String name)
{
	super(name);
}


 /* An Owl's Call
  * Return: an owl-call ("Whoo-hoo!").
  */
public String call()
{
	return "Owwwwww!";
}
} 

]0;sp46@gold09: ~/214/projects/10/java[01;32msp46@gold09[00m:[01;34m~/214/projects/10/java[00m$ cat Pengi uin.java Ostrich.java Kiwi.java
/* Penguin.java provides Penguin  subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Sinai Park
 * Date: April 24 2020
 ******************************************************/

public class Penguin extends WalkingBird {
    
        
     /* explicit constructor
      * Receive: name, a String 
      * PostCond: myName == name.
      */
    public Penguin(String name)
    {
        super(name);
    }
    
    
     /* A Penguin's Call
      * Return: a Penguin-call ("huh-huh-huuuh!").
      */
    public String call()
    {
        return "Huh-huh-huuuh!";
    }
    
    }
    
    /* Ostrich.java provides Ostrich subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Sinai Park
 * Date: April 24 2020
 ******************************************************/

public class Ostrich extends WalkingBird {
    
     /* explicit constructor
      * Receive: name, a String 
      * PostCond: myName == name.
      */
    public Ostrich(String name)
    {
        super(name);
    }
    
    
     /* A Ostrich's Call
      * Return: a Ostrich-call ("Snork!").
      */
    public String call()
    {
        return "Snork!";
    }
    
    }
    
    /* Kiwi.java provides Kiwi subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Sinai Park
 * Date: April 24 2020
 ******************************************************/

public class Kiwi extends WalkingBird {
   
     /* explicit constructor
      * Receive: name, a String 
      * PostCond: myName == name.
      */
    public Kiwi(String name)
    {
        super(name);
    }
    
    
     /* A Kiwi's Call
      * Return: a Kiwi-call ("Ki-ki-kikiii!").
      */
    public String call()
    {
        return "Ki-ki-kikiii!";
    }
    
    }
    
    ]0;sp46@gold09: ~/214/projects/10/java[01;32msp46@gold09[00m:[01;34m~/214/projects/10/java[00m$ exit

Script done on 2020-04-26 11:14:49-0400
