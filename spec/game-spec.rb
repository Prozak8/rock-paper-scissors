require 'game'

describe Game do 
    let (:game) {Game.new}
    let(:player) { instance_double(selection: "rock") }

    it 'asks if you would like to play' do
        expect(subject.start_game).to eq "Would you like to play?"
    end

end