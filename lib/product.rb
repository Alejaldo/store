class Product
  attr_reader :price, :stock
  
  def initialize(params)
    @price = params[:price]
    @stock = params[:stock]
  end

  def to_s
    "#{@price} руб. в т.ч. НДС (осталось #{@stock} шт.)"
  end
end
