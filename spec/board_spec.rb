require_relative '../model/cell.rb'

describe 'Cell' do

  it "is initialized with state status of nil (empty) " do
    c = Cell.new
    expect(c.state).to eq nil
  end
end
