# Logic for keeping track of which player's turn it is and toggle state method 

puts '... loaded turn tracker'

class Turn
  def initialize(current_player)
    @current_player = current_player
  end

  attr_accessor :current_player

end