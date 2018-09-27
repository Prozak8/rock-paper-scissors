puts "Welcome to RPS"
computerscore = 0
    humanscore = 0
until computerscore == 5 || humanscore == 5
    puts "Choose your weapon. Rock, Paper or Scissors?"

human = gets.chomp.downcase
comp = ["rock", "paper", "scissors"].sample

if (human == "rock" && comp == "scissors") ||
    (human == "paper" && comp == "rock") ||
    (human == "scissors" && comp == "paper") 
    p "you win"
    humanscore += 1

elsif (comp == "rock" && human == "rock") ||
    (comp == "paper" && human == "paper") ||
    (comp == "scissors" && human == "scissors") 
    p "draw"

else p "you lose"
    computerscore += 1
end
end