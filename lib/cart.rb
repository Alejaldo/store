class Cart
  attr_reader :cost, :content

  def initialize(cost = 0, content = [])
    @cost = cost
    @content = content
  end
  
  def cost_count(product_price)
    @cost += product_price
  end

  def content_count(product)
    @content.push(product)
  end
end
