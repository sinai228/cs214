Script started on 2020-02-21 12:48:51-0500
]0;sp46@gold03: ~/214/labs/03[01;32msp46@gold03[00m:[01;34m~/214/labs/03[00m$ cat year_codes.rb
#! /usr/bin/ruby
# year_codes.rb translates an academic year into a numeric code
# Begun by: Dr. Nelesen, for CS 214 at Calvin College 
# Completed by: Sinai Park(sp46)
# Date: Feb 21, 2020
################################################################

# Input:  The name of an academic year
# Precondition: The academic year is a string with a value of freshman, 
#   sophomore, junior or senior
# Output: The corresponding integer code for the given academic year

def yearCode year
   if year =~ /freshman/ then 
      return 1
   elsif year =~ /sophomore/ then 
      return 2
   elsif year =~ /junior/ then 
      return 3
   elsif year =~ /senior/ then 
      return 4 
   else return 0

   end
end

if __FILE__ == $0
   print "Enter the year: "
   year = gets
   print "Numeric code is: "
   puts yearCode(year)
end

]0;sp46@gold03: ~/214/labs/03[01;32msp46@gold03[00m:[01;34m~/214/labs/03[00m$ cat year_codes.rb[5P./year_codes
Enter your academic year: si ophm omore
          2
]0;sp46@gold03: ~/214/labs/03[01;32msp46@gold03[00m:[01;34m~/214/labs/03[00m$ ruby uear_     year_codes.rb
Enter the year: sophomore
Numeric code is: 2
]0;sp46@gold03: ~/214/labs/03[01;32msp46@gold03[00m:[01;34m~/214/labs/03[00m$ ruby year_codes.rb
Enter the year: 
Numeric code is: 0
]0;sp46@gold03: ~/214/labs/03[01;32msp46@gold03[00m:[01;34m~/214/labs/03[00m$ ruby year_codes.rb
Enter the year: juniorsssss
Numeric code is: 3
]0;sp46@gold03: ~/214/labs/03[01;32msp46@gold03[00m:[01;34m~/214/labs/03[00m$ ruby year_codes.rb
Enter the year: nu  seniorsakdga        asdgans
Numeric code is: 0
]0;sp46@gold03: ~/214/labs/03[01;32msp46@gold03[00m:[01;34m~/214/labs/03[00m$ ruby year_codes.rb
Enter the year: freshmannnn
Numeric code is: 1
]0;sp46@gold03: ~/214/labs/03[01;32msp46@gold03[00m:[01;34m~/214/labs/03[00m$ exit

Script done on 2020-02-21 12:50:02-0500
