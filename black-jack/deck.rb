
require_relative 'Card'

class Deck
  # A deck of card is simply an array of Cards (52)
  attr_reader :suits, :ranks, :deck


  def initialize(suits, ranks)
    @suits = suits
    @ranks = ranks
    @deck = initialize_deck()
  end

  def shuffle
    @deck.shuffle!
  end

  def replace_with(new_deck)
    @suits = []
    @ranks = []
    @deck = new_deck
    new_deck.each do |card|
      add_suit_and_rank(card)
    end

    self
  end

  def deal_card
    @deck.pop
  end

  private
  def initialize_deck
    @deck = []
    @suits.each do |suit|
      @ranks.each do |rank|
        @deck.push(Card.new(suit, rank))
      end
    end
  end

  def add_suit_and_rank(card)
    suit = card.suit
    rank = card.rank
    @suits.push suit unless @suits.include?(suits)
    @ranks.push rank unless @ranks.include?(rank)
  end
end