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
    
    