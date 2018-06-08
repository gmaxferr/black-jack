
require_relative 'card'


card = Card.new 'Spades', '9'

puts "Suit: '#{card.suit}'"
puts "Rank: '#{card.rank}'"
puts "Show: '#{card.show}'"
puts "Card: '#{card.to_s}'"
puts
puts "if show is FALSE"
card.show = false
puts "Card: '#{card.to_s}'"

puts
puts "--------------------"
puts
