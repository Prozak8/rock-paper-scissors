require './lib/game'

describe 'rps' do

    it 'shows options message' do
        expect(rps).to eq "Please pick #{options}"
    end

end