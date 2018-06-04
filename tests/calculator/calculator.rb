class Calculator

  def self.pow(first, second)
    first ** second
  end

  def self.sum(first, second)
    first + second
  end
  
  def self.subtract(first, second)
    first - second
  end
  
  def self.divide(first, second)
    first.to_f / second
  end
  
  def self.multiply(first, second)
    first * second
  end

end