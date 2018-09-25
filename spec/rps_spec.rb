require './lib.rps'

describe RPS do

    it "paper beats rock" do
        rps = RPS.new(guess: "rock")
        rps.rand_seed = 1
        expect(rps.winner_is).to eq("Computer wins...")
    end

    it "paper loses to scissors" do
        rps = RPS.new(guess: "scissors")
        rps.rand_seed = 1
        expect(rps.winner_is).to eq("You win!")
    end

    it "paper draws with paper" do
        rps = RPS.new(guess: "paper")
        rps.rand_seed = 1
        expect(rps.winner_is).to eq("Draw.")
    end
end