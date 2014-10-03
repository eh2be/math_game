# math_game.rb
require './methods'

class Player
  attr_accessor :name

  def initialize(name, points, lives)
    @name = name
    @points = 0
    @lives = 3
  end

  def earn_point
    points += 1
  end

  def lose_life
    lives -= 1
  end

end

## Don't need this in oo version
## Intitalize the lives
# pl_1_lives = 3
# pl_2_lives = 3
# pl_1_pts = 0
# pl_2_pts = 0

puts "Player 1, please enter your name: "
name = gets.chomp
player_1 = Player.new(name)
puts "Welcome #{player_1.name}, you are Player 1."

puts "Player 2, please enter your name: "
name = gets.chomp
player_2 = Player.new(name)
puts "Welcome #{player_2.name}, you are Player 2."


# Loop until one player runs out of lives
until player_1.lives == 0 || player_2.lives == 0 do
  
  print "Player 1: "
  if play_turn(pl_1_lives, pl_1_pts) == true
    player_1.earn_point
    puts "You have #{pl_1_pts} points."
  elsif play_turn(pl_1_lives, pl_1_pts) == false # Both calls and evaluates the math question for Player 1
    player_1.lose_life
    puts "Player 1, you have #{player_1.points} points and #{player_1.lives} lives left."
    puts "Player 2, you have #{player_2.points} points and #{player} lives left."
    if pl_1_lives == 0
      puts "Player 2 wins!"
      return
    end
  end

  print "Player 2: "
  if play_turn(pl_2_lives, pl_2_pts) == false # Both calls and evaluates the math question for Player 2
    pl_2_lives -= 1
    puts "Player 1, you have #{pl_1_lives} lives left."
    puts "Player 2, you have #{pl_2_lives} lives left."
    if pl_2_lives == 0
      puts "Player 1 wins!"
      return
    end
  end

end
puts "Game over"
