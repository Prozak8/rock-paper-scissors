puts "Welcome to Rock, Paper, Scissors!"

puts "rock, paper, or scissors?"

user_move = gets.chomp

puts "You chose #{user_move}."

computer_move = ["rock", "paper", "scissors"].sample

puts "The computer chose #{computer_move}."

if user_move == computer_move
  puts "You tied!"
elsif user_move == "paper" && computer_move == "rock"
  puts "You win!"
elsif user_move == "paper" && computer_move == "scissors"
  puts "You lose!"
elsif user_move == "scissors" && computer_move == "rock"
  puts "You lose!"
elsif user_move == "scissors" && computer_move == "paper"
  puts "You win!"
elsif user_move == "rock" && computer_move == "paper"
  puts "You lose!"
elsif user_move == "rock" && computer_move == "scissors"
  puts "You win!"
end

#https://github.com/appdevfall15/rock_paper_scissors_ruby/blob/master/dont_peek.rb