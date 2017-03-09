require_relative '../model/cell.rb'

describe 'Cell' do

  context '#initialize' do
    it "is initialized with '' default state" do
      cell = Cell.new
      expect(cell.state).to eq ''
    end

    it "can be instantiated with a value of X" do
      cell = Cell.new('X')
      expect(cell.state).to eq 'X'
    end
  end

end
