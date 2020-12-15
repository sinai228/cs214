# List.rb implements a linked list structure in Ruby.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sinai Park (sp46)
# Date: April 17 2020
#######################################################

require 'test/unit/assertions'
include Test::Unit::Assertions

class List


   # initialize a List to be empty
   # Postcondition: first == nil and last == nil and length == 0

   def initialize
      @first = nil
      @last = nil
      @length = 0
   end
      # create reader method for length
      attr_reader :length


   # Replace this line with a declaration for class Node
   #  (and its methods)
   #creating a list of linked nodes
   class Node
      def initialize (item, link)
         @value = item
         @next = link
      end
      attr_reader :value
      attr_accessor :next
   end


   # Am I empty?
   # Return: length == 0
   def empty?
      @length == 0
   end
  
   # append a value to me
   # Receive: value, the item to be appended
   # Postcondition: my last item is value and
   #                 my length is one more than it was
   def append(value)
      newNode = Node.new(value, nil)

      if empty?
         @first = newNode
      else
         @last.next = newNode      
      end

      @last = newNode
      @length += 1
      self
   end


   # print my items
   # Postcondition: my items have been displayed to the screen

   def print()
      temp = @first
      while !temp.nil?
         printf " #{temp.value}"
         temp = temp.next
      end
   end 

   # find my maximum item
   # Return: my maximum item

  def max
   temp = @first
   maxValue = -99999

   while !temp.nil?
      if temp.value > maxValue then
         maxValue = temp.value 
      end  
      temp = temp.next
   end 
    return maxValue
end

   # search for value in list
   # Return: the index of value in list, -1 if not found

   def search(searchvalue)
      temp = @first
      indexValue = 0
         
      while !temp.nil?
         if temp.value == searchvalue then
            return indexValue
         else  
            indexValue += 1
            temp = temp.next
         end
      end 
      return -1
   end




end

