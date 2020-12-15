Script started on 2020-04-10 03:33:01-0400
]0;sp46@gold09: ~/214/labs/08/ruby[01;32msp46@gold09[00m:[01;34m~/214/labs/08/ruby[00m$ cat N nameTester.rb
# nameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sinai Park (sp46)
# Date: April 10 2020
####################################################

require 'test/unit/assertions'
require './Name'
include Test::Unit::Assertions


def testName
   name = Names::Name.new("John", "Paul", "Jones")

   assert name.first == "John", 
           "first failed"
   assert name.middle == "Paul",
           "middle failed"
   assert name.last == "Jones",
           "last failed"
   assert name.fullName == "John Paul Jones",
           "fullName failed"
   assert name.print == "John Paul Jones",
           "print failed"
   
   print "All tests passed!\n"
end

testName

]0;sp46@gold09: ~/214/labs/08/ruby[01;32msp46@gold09[00m:[01;34m~/214/labs/08/ruby[00m$ na  cat Name.rb
# Name.rb has class Name wrapper around module
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sinai Park (sp46)
# Date: April 10 2020
####################################################

#wrap the class Name around
module Names
  class Name

    def initialize(first, middle, last)
      @first, @middle, @last = first, middle, last
    end

    attr_reader :first, :middle, :last

    def fullName
      @first + " " + @middle + " " + @last
    end

    def print
      puts fullName
      fullName
    end
  end
end
]0;sp46@gold09: ~/214/labs/08/ruby[01;32msp46@gold09[00m:[01;34m~/214/labs/08/ruby[00m$ ruby nameTester.rb
John Paul Jones
All tests passed!
]0;sp46@gold09: ~/214/labs/08/ruby[01;32msp46@gold09[00m:[01;34m~/214/labs/08/ruby[00m$ exit

Script done on 2020-04-10 03:33:27-0400
