require_relative 'word'

RSpec.describe Word do
  context "text word is a Palindrome" do
    it "Should read the same forward as backwards" do
      test_word = "Madam"
      result = Word.palindrome? test_word
      expect(result).to be_truthy
    end
  end

  context "text word is NOT a Palindrome" do
    it "Should read the same forward as backwards" do
      test_word = "Food"
      result = Word.palindrome? test_word
      expect(result).to be_falsey
    end
  end

end

  