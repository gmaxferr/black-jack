
require_relative 'word'

test_word = 'food'
result =  Word.palindrome?(test_word) ? "is" : "is not"

puts "The result #{result} a palindrome"