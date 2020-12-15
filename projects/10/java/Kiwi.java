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
    
    