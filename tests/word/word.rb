class Word
  
  def self.palindrome?(test_word)
    test_word = test_word.downcase
    word_length = test_word.length
    mid = word_length / 2
    mid_num = word_length.even? ? mid : mid+1

    first_half = test_word.slice(0, mid_num)
    second_halt = ""
    
    if word_length.even?
      second_half = test_word.slice(mid_num, mid_num).reverse
    else
      second_half = test_word.slice(mid_num-1, mid_num).reverse
    end
    
    first_half == second_half

  end
end