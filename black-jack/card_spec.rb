require_relative 'card'

RSpec.describe Card do

  before do
    suit = 'Diamonds'
    rank = '8'
    @card = Card.new(suit, rank)
  end

  it "responds to suit" do
    expect(@card).to respond_to(:suit)
  end

  it "responds to rank" do 
    expect(@card).to respond_to(:rank)
  end

  it "responds to show" do 
    expect(@card).to respond_to(:show)
  end

  it "should return the correct 'suit'" do
    expect(@card.suit).to eq 'Diamonds'
  end

  it "should return the correct 'rank'" do
    expect(@card.rank).to eq '8'
  end

  it "should return the correct 'show'" do
    expect(@card.show).to eq(true)
  end

  it "should output suit and rank of card if 'show' is TRUE" do
    expect("#{@card}").to eq "#{@card.rank} of #{@card.suit}"
  end

  it "should NOT output suit and rank of card if 'show' is FALSE" do
    @card.show = false;
    expect("#{@card}").to eq ''
  end
end