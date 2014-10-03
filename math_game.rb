# math_game.rb
require './methods'

# Intitalize the lives
pl_1_lives = 3
pl_2_lives = 3
pl_1_pts = 0
pl_2_pts = 0

# Loop until one player runs out of lives
until pl_1_lives == 0 || pl_2_lives == 0 do
  
  print "Player 1: "
  if play_turn(pl_1_lives, pl_1_pts) == true
    pl_1_pts += 1
    puts "You have #{pl_1_pts} points."
  elsif play_turn(pl_1_lives, pl_1_pts) == false # Both calls and evaluates the math question for Player 1
    pl_1_lives -= 1
    puts "Player 1, you have #{pl_1_pts} points and #{pl_1_lives} lives left."
    puts "Player 2, you have #{pl_2_pts} points and #{pl_2_lives} lives left."
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