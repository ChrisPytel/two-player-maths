require './player'
require './turn-tracker'
require './question-generator'
puts '... loaded game logic'

class Game
  def initialize(p1_name, p2_name)
    @p1_name = p1_name
    @p2_name = p2_name
    puts "Welcome #{@p1_name} and #{@p2_name} for playing today!"
    puts "Each player starts game with 3 hearts 💖💖💖"
    puts "Don't end up with zero hp or you lose 🖤🖤🖤"
  end

  def play
    puts "starting game for rl now"
    player1 = Player.new(@p1_name, 3)
    player2 = Player.new(@p2_name, 3)
    round = Turn.new(player1)
  end

end