class Cart
  attr_reader :cost, :content

  def initialize(cost = 0, content = [])
    @cost = cost
    @content = content
  end

  def add(product)
    @content << product
    @cost += product.price
  end
end
