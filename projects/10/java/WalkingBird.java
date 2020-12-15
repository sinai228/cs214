/* WalkingBird.java provides subclass for a Bird class.
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
   
   }