require_relative '../model/player.rb'

describe 'Player' do

  context "#initialize" do

    it 'raises an exception when initialized with {}' do
      expect { Player.new({}) }.to raise_error
    end

    it 'does not raise an error when initialized a valid input hash' do
      input = { symbol: 'X', name: 'Jack' }
      expect { Player.new(input) }.to_not raise_error
    end

  end

  context "#symbol" do
    it "returns the symbol" do
      input = { symbol: 'X', name: 'Jack' }
      player = Player.new(input)
      expect(player.symbol).to eq 'X'
    end
  end

  context "#name" do
    it "returns the name" do
      input = { symbol: 'X', name: 'Jack' }
      player = Player.new(input)
    expect(player.name).to eq 'Jack'
    end
  end

end
