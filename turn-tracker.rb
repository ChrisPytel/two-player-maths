# Logic for keeping track of which player's turn it is and toggle state method 

puts '... loaded turn tracker'

class Turn
  def initialize(current_player)
    @current_player = current_player
    puts "\n------------- #{@current_player.name}'s turn now -------------"
  end

  # Toggles the currently active player to the other one
  def alternate(player1, player2)

    if @current_player == player1
      @current_player = player2
    elsif @current_player == player2
      @current_player = player1
    end

    puts "\n------------- #{@current_player.name}'s turn now -------------"
  end

  attr_accessor :current_player

end