require './player'
require './turn-tracker'
require './question'
require './display'
puts '... loaded game logic'

class Game
  def initialize(p1_name, p2_name)
    @p1_name = p1_name
    @p2_name = p2_name
    puts "\nWelcome #{@p1_name} and #{@p2_name} to the 1v1 Math challenge!"
    puts "\n - Each player starts game with 3 hearts 💖💖💖"
    puts " - Don't end up with zero HP or you lose 🖤🖤🖤"
    puts " - Get as many stars as you can for correct answers 🌟"
  end

  def play
    player1 = Player.new(@p1_name, 3, 0)
    player2 = Player.new(@p2_name, 3, 0)
    turn = Turn.new(player1)
    display = Display.new(player1, player2)

    #Game ends when either reaches 0 HP
    while player1.hitpoints != 0 && player2.hitpoints != 0 
      
      question = Question.new(turn.current_player)
      question.generator(turn.current_player)

      display.remaining_HP()
      display.current_score()
      turn.alternate(player1, player2)
    end

    display.end_message()
  end
end