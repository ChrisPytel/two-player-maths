# Defines the parameters for a Player class template
# Will keep track of the name and how much HP the player has

puts '... loaded player creator'

class Player
  def initialize (name, hitpoints)
    @name = name
    @hitpoints = hitpoints
  end

  attr_accessor :name, :hitpoints

end
