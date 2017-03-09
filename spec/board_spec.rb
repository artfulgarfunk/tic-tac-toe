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

  context "#get_cell" do
    it "returns the cell when given x,y coordinates" do
      grid = [["","",""],["","","a thing"],["","",""]]
      b = Board.new(grid: grid)
      expect(b.get_cell(2,1)).to eq "a thing"
    end
  end

  context "#set_cell" do
    it "changes the state of a cell when give x,y coordinates" do
      grid = [["","",""],["","","a thing"],["","",""]]
      b = Board.new(grid: grid)
      b.set_cell(2,2,'possum')
      expect(b.get_cell(2,2)).to eq 'possum'
    end
  end




end
