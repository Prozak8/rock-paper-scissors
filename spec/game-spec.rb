require 'spec_helper'

describe Game do 
    subject(:game) {described_class.new}

    it 'asks if you would like to play' do
        Game.new = "Would you like to play?"
        expect(subject.new).to eq "Would you like to play?"
    end

end