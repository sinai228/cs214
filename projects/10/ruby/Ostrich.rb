# Ostrich.rb | Defines the Ostrich class which inherits attributes and methods
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

end