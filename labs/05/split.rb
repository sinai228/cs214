# split.rb splits a string into two substrings.
#
# Input: A string and an integer string position to split the string by.
# Precondition: The position integer is within the range of the string size.
# Output: The substrings aString(0, position - 1) and
#   aString(pos, length() - 1).
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Sinai Park(sp46)
# Date: March 6 2020
#################################################################


# split() splits a string into its two substrings.
# Receive: aString, the string to be split,       
#        pos, the split position.                  
# PRE: 0 <= pos < the length of aString.
# Return: the substring of aString before pos, and  
#         the substring of aString from pos onwards.
######################################################

# Replace this line with the definition of split()
def split(aString, pos) 
  #store the string from index 0 to pos in the first array
  #store the string from pos to last index in the second array
  array = [ aString[0, pos] , aString[pos, aString.length] ];

end


def main
  print "To split a string, enter the string: "; 
  the_string = gets
  print "Enter the split position: "; 
  position = gets.to_i
  split_string = split(the_string, position)
  puts "The first part is: " << split_string[0]
  puts "and the second part is: " << split_string[1]
end 

main
