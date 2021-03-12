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

  def cheque
    quantity = @content.map do |product|
      product.show_without_stock
    end.tally

    cheque_hash = Hash.new(0)

    @content.each do |product|
      cheque_hash[product.show_without_stock] = [product.price, quantity[product.show_without_stock]]
    end

    cheque_output = cheque_hash.map.with_index(1) do |(product, params), index|
      "#{index}) -- #{product} | #{params[0]} * #{params[1]}    = #{params[0] * params[1]} руб. в т.ч. НДС"
    end

    return cheque_output
  end
end
