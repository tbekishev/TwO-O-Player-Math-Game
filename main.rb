require "./player"
require "./question"

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")


def turn(player)
question = Question.new
puts "#{player.name}: #{question.question}"
print ">"
answer = gets.chomp.to_i

if answer == question.sum
  puts "#{player.name}: YES! You are correct."    
else
  puts "#{player.name}: Seriously? No!"
  player.life -= 1
end

end

while true  
  turn(player1)
  if player1.life == 0
    puts "Player 2 wins with a score of #{player2.life}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
    exit(0)
  end
  puts "P1: #{player1.life}/3 vs P2: #{player2.life}/3"
  puts "----- NEW TURN -----"
  turn(player2)
  if player2.life == 0
    puts "Player 1 wins with a score of #{player1.life}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
    exit(0)
  end
  puts "P1: #{player1.life}/3 vs P2: #{player2.life}/3"
  puts "----- NEW TURN -----"
end