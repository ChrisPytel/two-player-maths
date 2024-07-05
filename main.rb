require './game'

puts "\n------------- 1v1 Math game started -------------\n\n"

print "Enter the name for player 1:\n> "
p1 = gets.chomp

print "Enter the name for player 2:\n> "
p2 = gets.chomp

start_game = Game.new(p1,p2)
start_game.play