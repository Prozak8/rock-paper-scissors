class RPS
    attr_writer :rand_seed

    def initialize(guess:)
        @guess = guess.downcase
    end

    def computer_guess
        srand (@rand_seed)
        computer_guesses = %w{rock paper scissors}
        computer_guesses.sample
    end
    
    def winner_is
        if rule_engine[computer_guess.to_sym].include? @guess
            "Computer wins..."
        elsif rule_engine[@guess.to_sym].include? computer_guess
            "You win!"
        else
            "Draw."
        end
    end

    def rule_engine
        {
            'rock': ['scissors'],
            'paper': ['rock'],
            'scissors': ['paper']
        }
    end
end