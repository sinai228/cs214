# WalkingBird.rb | Defines the WalkingBird class which inherits attributes and methods
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

end