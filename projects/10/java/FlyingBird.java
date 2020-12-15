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
    
    }