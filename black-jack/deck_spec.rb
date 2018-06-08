require_relative 'deck'

RSpec.describe Deck do

  before do
    suits = ['Spades', 'Hearts', 'Clubs', 'Diamonds']
    ranks = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace']
    @deck = Deck.new suits, ranks
  end

  it "should respond to 'suits'" do
    expect(@deck).to respond_to(:suits)
  end

  it "should respond to 'ranks'" do
    expect(@deck).to respond_to(:ranks)
  end

  it "should respond to 'shuffle'" do
    expect(@deck).to respond_to(:shuffle)
  end

  it "should respond to 'replace_with'" do
    expect(@deck).to respond_to(:replace_with)
  end

  it "should respond to 'deal_card'" do
    expect(@deck).to respond_to(:deal_card)
  end

  it "should respond to 'deck'" do
    expect(@deck).to respond_to(:deck)
  end

  it "should return correct 'suits'" do
    expect(@deck.suits).to eq(['Spades', 'Hearts', 'Clubs', 'Diamonds'])
  end

  it "should return correct 'ranks'" do
    expect(@deck.ranks).to eq(['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace'])
  end

  it "pops from the stack when the card is dealt" do
    # 1. shuffle deck
    # 2. dealt card will be last card that needs to bve popped off
    # 3. expect deal card to eq dealt card
    dealt_card = @deck.shuffle.last
    expect(@deck.deal_card).to eq (dealt_card)
  end

  it "dealt card cannot be nil" do
    expect(@deck.deal_card).not_to eq nil
  end

  it "get new deck when 'replace_with'" do
    deck_of_cards = []
    deck_of_cards.push(Card.new('Clubs', '2'))
    deck_of_cards.push(Card.new('Clubs', '3'))
    new_deck = @deck.dup
    new_deck.replace_with deck_of_cards
    expect(@deck.deck).not_to eq(new_deck.deck)
  end

end