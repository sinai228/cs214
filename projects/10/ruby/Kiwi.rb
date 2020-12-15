# Kiwi.rb | Defines the Kiwi class which inherits attributes and methods
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

end