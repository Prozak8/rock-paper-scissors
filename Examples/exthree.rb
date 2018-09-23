$player_count = 0
$computer_count = 0

what_to_include = %w{r p s}

paper = "p"
rock = "r"
scissors = "s"

def computer_input
  computer = rand(3)
  if computer == 0
    computer = "p"
  elsif computer == 1
    computer = "r"
  else
    computer = "s"
  end
end


while true

puts "Player Score: #{$player_count}, \tComputer Score: #{$computer_count}"

print "Choose rock (r), paper (p), or scissors (s): "
player_input = gets.chomp.downcase

  if player_input == rock && computer_input == scissors
    puts "Player chose rock. \nComputer chose scissors."
    puts "Rock beats scissors, player wins the round."
    $player_count += 1

  elsif player_input == scissors && computer_input == paper
    puts "Player chose scissors. \nComputer chose paper."
    puts "Scissors beat paper, player wins the round."
    $player_count += 1

  elsif player_input == paper && computer_input == rock
    puts "Player chose paper. \nComputer chose rock"
    puts "Paper beats rock, player wins the round."
    $player_count += 1

  elsif computer_input == rock && player_input == scissors
    puts "Player chose scissors. \nComputer chose rock."
    puts "Rock beats scissos, Computer wins the round"
    $computer_count += 1

  elsif computer_input == scissors && player_input == paper
    puts "Player chose paper. \nComputer chose scissors."
    puts "Scissors beats paper, Computer wins the round"
    $computer_count += 1

  elsif computer_input == paper && player_input == rock
    puts "Player chose rock. \nComputer chose paper."
    puts "Paper beats rock, Computer wins the round"
    $computer_count += 1

  # elsif player_input == computer_input
  #   puts "Player chose #{player_input},\n Computer chose #{computer_input}"
  #   puts "Tie, choose again"  #tried with this but returns r, s, p instead of word

  elsif player_input == rock && computer_input == rock ||
        player_input == paper && computer_input == paper ||
        player_input == scissors && computer_input == scissors
    puts "Player chose rock. \nComputer chose rock."
    puts "Tie, choose again"
  end

  if player_input.include?("abcdefghijklmnoqtuvxzy")
    puts "Invalid entry, try again."
  end

  if $player_count == 2
    puts "Player wins!"
    break
  elsif $computer_count == 2
    puts "Computer wins!"
    break
  end
end

#https://stackoverflow.com/questions/26393870/ruby-rock-paper-scissor-game-using-while-if-else-statements-player-vs-comput