# Defines the parameters for a message template
# Prints things like remaining hearts, total star count

puts '... loaded message renderer'

class Display
  def initialize (player1, player2)
    @player1 = player1
    @player2 = player2
  end 

  def render_hearts(hitpoints)
    maxHP = 3
    # Makes an array with red hearts for player HP and fills the rest with empty hearts
    array = Array.new(hitpoints, "💖") + Array.new(maxHP - hitpoints, "🖤")
    puts array.join(" ")
  end

  def render_stars(score)
    array = Array.new(score, "🌟")
    puts array.join(" ")
  end

  def remaining_HP  
    puts "#{@player1.name}'s current HP: #{render_hearts(@player2.hitpoints)}"
    puts "#{@player2.name}'s current HP: #{render_hearts(@player2.hitpoints)}"
  end

  def current_score
    puts "#{@player1.name}'s score is: #{render_stars(@player1.score)}"
    puts "#{@player2.name}'s score is: #{render_stars(@player2.score)}"
  end

  
  attr_reader :player1, :player2

end
