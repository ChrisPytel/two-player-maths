# Defines the parameters for an individual Question class template

puts '... loaded question generator'

class Question
  def initialize(current_player)
    @current_player = current_player
  end

  def random_num_generator
    return rand(1..132)
  end

  def randomize_operator
    operators = ["+"]               # only addition for ["+", "-", "*", "/"]
    random_index = rand(operators.length)
    selected_operator = operators[random_index]
  end

  def generator(player)    
    valueA = random_num_generator
    valueB = random_num_generator
    operator = randomize_operator

    print "Heres your question\nWhat is the answer to #{valueA} #{operator} #{valueB}?\n> "

    player_answer = gets.chomp.to_i       
    correct_value = eval("#{valueA} #{operator.to_sym} #{valueB}")
    
    assertion(player_answer, correct_value)
  end

  def assertion(player_answer, correct_value)
    if player_answer == correct_value
      puts "Good Job #{@current_player.name}! Heres a star for you 🌟\n\n"
      @current_player.score += 1
    else
      puts "❌ Naah, that aint it #{@current_player.name}"
      puts "You said: #{player_answer}, the answer was: #{correct_value}\n\n"
      @current_player.hitpoints -= 1
    end
  end

end