require_relative '../model/board.rb'

describe "Board" do

  context "#initialize" do
    it "initializes the board with a grid" do
      expect { Board.new(grid: "grid") }.to_not raise_error
    end
  end

  it "sets the grid with three rows as default" do
    b = Board.new
    expect(b.grid.length).to eq 3
  end

  it "creates three things in each row as default" do
    b = Board.new
    b.grid.each do |row|
      expect(row.length).to eq 3
    end
  end

  context "#grid" do
    it "returns the grid" do
      b = Board.new(grid: 'bananas')
      expect(b.grid).to eq 'bananas'
    end
  end

end
