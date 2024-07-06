# Defines the parameters for a Player class template
# Will keep track of the name, how much HP the player has, and their number of correct answers

puts '... loaded player creator'

class Player
  def initialize (name, hitpoints, score)
    @name = name
    @hitpoints = hitpoints
    @score = score
  end

  attr_accessor :name, :hitpoints, :score

end
