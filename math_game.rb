# math_game.rb
require './methods'

class Player

  attr_accessor :name
  attr_accessor :points
  attr_accessor :lives

  def initialize(name)
    @name = name
    @points = 0
    @lives = 3
  end

  def earn_point
    @points += 1
  end

  def lose_life
    @lives -= 1
  end

end


puts "Player 1, please enter your name: "
name = gets.chomp
player_1 = Player.new(name)
puts "Welcome #{player_1.name}!"

puts "Player 2, please enter your name: "
name = gets.chomp
player_2 = Player.new(name)
puts "Welcome #{player_2.name}!"


# # Loop until one player runs out of lives
until player_1.lives == 0 || player_2.lives == 0 do
  
  print "#{player_1.name}: "

## This single line ternary "(condition) ? (result if condition is true) : (result if condition is false)"....
  play_turn(player_1.lives, player_1.points) ? player_1.earn_point : player_1.lose_life

## ...replaces this if/else/end statement:
  # if play_turn(player_1.lives, player_1.points) == true
  #   player_1.earn_point
  # else
  #   player_1.lose_life
  # end
  puts "#{player_1.name}: you have #{player_1.points} points and #{player_1.lives} lives left."
  
## But I can't get the ternary to work in this instance:   
  # player_1.lives == 0 ? puts "#{player_2.name} wins!" : nil
  
## So I have to do it this way:
  if player_1.lives == 0
    puts "#{player_2.name} wins!"
  end

  print "#{player_2.name}: "
  play_turn(player_2.lives, player_2.points) ? player_2.earn_point : player_2.lose_life
  puts "#{player_2.name}: you have #{player_2.points} points and #{player_2.lives} lives left."
  if player_2.lives == 0
    puts "#{player_1.name} wins!"
  end


end 
 