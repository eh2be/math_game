# methods called by math_game

@math_q = ['+', '-', '*', '/', '%']


def play_turn(pl_lives, pl_pts)  
  q = @math_q.sample
  num_1 = rand(20).to_f
  num_2 = rand(20).to_f
  expr = "#{num_1} #{q} #{num_2}"

  puts "What is #{expr} (to one decimal place)?"
  pl_ans = gets.chomp.to_f.round(1)
  ans = eval(expr).to_f.round(1)
  
  if pl_ans == ans
    puts "You're right! The answer is #{ans}."
    return true
  else
    pl_lives -= 1
    puts "Wrong! The answer is #{ans}. "
    return false
  end
end



