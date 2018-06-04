
require_relative 'calculator'

RSpec.describe Calculator do
  
  before do 
    @first = 2
    @second = 5
  end

  context "adding two numbers together" do
    it "should return the sum of two numbers" do
      result = Calculator.sum(@first,@second)
      expect(result).to eq 7
    end
  end

  context "subtracting two numbers together" do
    it "should return the subtraction of two numbers" do
      result = Calculator.subtract(@first,@second)
      expect(result).to eq -3
    end
  end

  context "dividing two numbers together" do
    it "should return the division of two numbers" do
      result = Calculator.divide(@first,@second)
      expect(result).to eq 0.4
    end
  end

  context "multiplicate two numbers together" do
    it "should return the multiplication of two numbers" do
      result = Calculator.multiply(@first,@second)
      expect(result).to eq 10
    end
  end

  context "power of a number" do
    it "should return the power of a number raised to the other" do
      result = Calculator.pow(@first,@second)
      expect(result).to eq 32
    end
  end

end