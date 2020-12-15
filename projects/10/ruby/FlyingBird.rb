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

end