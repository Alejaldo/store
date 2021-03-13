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

  def to_s
    @content.tally.map.with_index(1) do |(product, qty), id|
      price = product.price

      "#{id}) -- #{product.show_without_stock} | #{price} * #{qty}    = #{price * qty} руб. в т.ч. НДС"
    end.join("\n")
  end
end
