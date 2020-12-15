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
    
    