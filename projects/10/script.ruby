Script started on 2020-04-28 11:37:40-0400
]0;sp46@gold09: ~/214/projects/10/ruby[01;32msp46@gold09[00m:[01;34m~/214/projects/10/ruby[00m$ ruby birds.rb

Welcome to the Bird Park!

Hawkeye Bird moved and said Squaaaaaaawk!
Donald Duck flew past and said Quack!
Mother Goose flew past and said Honk!
Woodsey Owl flew past and said Whoo-hoo!
Peter Penguin walked past and said Huh-huh-huuuh!
Orville Ostrich walked past and said Snork!
Kiiiity Kiwi walked past and said Kiii-ki-ki!


]0;sp46@gold09: ~/214/projects/10/ruby[01;32msp46@gold09[00m:[01;34m~/214/projects/10/ruby[00m$ cat birds.rb Bird.rb FlyingBird.rb Walking. BI rd.rb     [A]0;sp46@gold09: ~/214/projects/10/ruby[01;32msp46@gold09[00m:[01;34m~/214/projects/10/ruby[00m$ cat birds.rb Bird.rb FlyingBird.rb WalkingBI [K[A]0;sp46@gold09: ~/214/projects/10/ruby[01;32msp46@gold09[00m:[01;34m~/214/projects/10/ruby[00m$ cat birds.rb Bird.rb FlyingBird.rb WalkingB[K
[K[A]0;sp46@gold09: ~/214/projects/10/ruby[01;32msp46@gold09[00m:[01;34m~/214/projects/10/ruby[00m$ cat birds.rb Bird.rb FlyingBird.rb WalkingB Birrd.rb
# birds.rb | Tests out the menagerie of bird classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sinai Park
# Date: April 24 2020
######################################################

require './Bird.rb'
require './FlyingBird.rb'
require './WalkingBird.rb'
require './Duck.rb'
require './Goose.rb'
require './Owl.rb'
require './Penguin.rb'
require './Ostrich.rb'
require './Kiwi.rb'

puts "\nWelcome to the Bird Park!\n\n"

bird0 = Bird.new "Hawkeye"
bird0.print

bird1 = Duck.new "Donald"
bird1.print

bird2 = Goose.new "Mother"
bird2.print

bird3 = Owl.new "Woodsey"
bird3.print

bird4 = Penguin.new "Peter"
bird4.print

bird5 = Ostrich.new "Orville"
bird5.print

bird6 = Kiwi.new "Kiiiity"
bird6.print

puts "\n\n"# Bird.rb | Defines a Bird superclass 
#   to be extended by specific bird sub-classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by:Sinai Park
# Date:April 24 2020
####################################################

class Bird

  attr_reader :name

  def initialize(name)
    @name = name

  end

    def call
    'Squaaaaaaawk!'
  end

  def className
    self.class.to_s
  end

  def print
    puts name + " " + className + " " + movement + " and said " + call
  end

  def movement
    'moved'
  end

end
# FlyingBird.rb | Defines the FlyingBird class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sinai Park
# Date: APril 24 2020
####################################################

require './Bird.rb'

class FlyingBird < Bird

######################################################
# movement returns the flying movement      #
# Recieve: NONE                                      #
# Return: flew past, a String                           #
######################################################
def movement
	"flew past"
end

end# WalkingBird.rb | Defines the WalkingBird class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sinai Park
# Date: APril 24 2020
####################################################

require './Bird.rb'

class WalkingBird < Bird

######################################################
# movement returns the walkinging movement      #
# Recieve: NONE                                      #
# Return: walked past, a String                           #
######################################################
def movement
	"walked past"
end

end]0;sp46@gold09: ~/214/projects/10/ruby[01;32msp46@gold09[00m:[01;34m~/214/projects/10/ruby[00m$ [Kcat Duck.rb Goose.rb Owl.rb
# Duck.rb | Defines the Duck class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sinai Park
# Date: APril 24 2020
####################################################

require './FlyingBird.rb'

class Duck < FlyingBird

######################################################
# call returns the sound that a DUck type makes       #
# Recieve: NONE                                      #
# Return: Whoo-hoo!, a String                           #
######################################################
def call
	"Quack!"
end

end# Goose.rb | Defines the Goose class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sinai Park
# Date: APril 24 2020
####################################################

require './FlyingBird.rb'

class Goose < FlyingBird

######################################################
# call returns the sound that a Goose type makes       #
# Recieve: NONE                                      #
# Return: Honk!, a String                           #
######################################################
def call
	"Honk!"
end

end# Owl.rb | Defines the Owl class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by:Sinai Park
# Date: April 24 2020
####################################################

require './FlyingBird.rb'

class Owl < FlyingBird
	
######################################################
# call returns the sound that a Owl type makes       #
# Recieve: NONE                                      #
# Return: Whoo-hoo!, a String                           #
######################################################
def call
	"Whoo-hoo!"
end

end
]0;sp46@gold09: ~/214/projects/10/ruby[01;32msp46@gold09[00m:[01;34m~/214/projects/10/ruby[00m$ cat Penguin.rb Ostrich.rb Kiwi.rb
# Penguin.rb | Defines the Penguin class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sinai Park
# Date: APril 24 2020
####################################################

require './WalkingBird.rb'

class Penguin < WalkingBird

######################################################
# call returns the sound that a Penguin type makes       #
# Recieve: NONE                                      #
# Return: Huh-huh-huuuh!, a String                           #
######################################################
def call
	"Huh-huh-huuuh!"
end

end# Ostrich.rb | Defines the Ostrich class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sinai Park
# Date: APril 24 2020
####################################################

require './WalkingBird.rb'

class Ostrich < WalkingBird

######################################################
# call returns the sound that a Ostrich type makes       #
# Recieve: NONE                                      #
# Return: Snork!, a String                           #
######################################################
def call
	"Snork!"
end

end# Kiwi.rb | Defines the Kiwi class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sinai Park
# Date: APril 24 2020
####################################################

require './WalkingBird.rb'

class Kiwi < WalkingBird

######################################################
# call returns the sound that a Kiwi type makes       #
# Recieve: NONE                                      #
# Return: Kiii-ki-ki!, a String                           #
######################################################
def call
	"Kiii-ki-ki!"
end

end]0;sp46@gold09: ~/214/projects/10/ruby[01;32msp46@gold09[00m:[01;34m~/214/projects/10/ruby[00m$ exit

Script done on 2020-04-28 11:38:56-0400
