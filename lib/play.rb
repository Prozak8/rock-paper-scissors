puts "Let's play rock, paper, scissors"

compScore = 0
humanScore = 0

    until compScore == 5 || humanScore == 5

    puts "Select your weapon. Rock, paper or scissors?"

    human = gets.chomp.downcase
    comp = ["rock", "paper", "scissors"].sample

    if      (human == "rock" && comp == "scissors") || 
            (human == "scissors" && comp == "paper") || 
            (human == "paper" && comp == "rock")
                p "You won!"
                humanScore += 1

    elsif   (human == "rock" && comp == "rock") || 
            (human == "paper" && comp == "paper") || 
            (human == "scissors" && comp == "scissors")
                p "Draw! No point awarded"

    else    compScore += 1
                p "You lose."   
    end

    p "Human Score: #{humanScore}"
    p "Computer Score: #{compScore}"

    p "Human chose: #{human}"
    p "Computer chose: #{comp}"
end
    p humanScore > compScore ? ("You win!").upcase : ("Computer wins!.").upcase