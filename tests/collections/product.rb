class Product

  attr_reader :id, :name, :quantity, :price
  @@products = []

  def initialize(data={})
    @id = data[:id] || 0
    @name = data[:name] || "Test Product"
    @quantity = data[:quantity] || 0
    @price = data[:price] || 0
    @@products << self
  end

  def self.product_names
    @@products.map { |p| p.name }
    
    # OR
    # @@products.map(&:name)
  end

  def self.all
    @@products
  end

  def self.products_to_order
    @@products.reject{ |p| p.quantity > 0 }
    
    # OR
    # @@products.select{ |p| p.quantity <= 0 }
  end

  def self.total_inventory_value
    sum = 0
    @@products.each { |v| sum+=(v.price*v.quantity)}
    # OR
    # @@products.reduce(0) { |acc, product| acc + product.quantity * product.price}
    return sum
  end

end