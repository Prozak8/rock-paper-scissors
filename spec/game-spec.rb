require 'game'

module Game
    describe RockPaperScissors do
        it "should pick paper as the winner over rock" do
            choice_1 = Game::RockPaperScissors.new(:paper)
            choice_2 = Game::RockPaperScissors.new(:rock)
            winner = choice_1.play(choice_2)
            result = winner.move

            expect(result).to eq(:paper)
        end
    end
end