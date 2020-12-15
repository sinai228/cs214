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

end