class Product
  attr_accessor :price, :stock

  def initialize(params)
    @price = params[:price]
    @stock = params[:stock]
  end

  def to_s
    "#{@price} руб. в т.ч. НДС (осталось #{@stock} шт.)"
  end

  def show_without_stock
    self.to_s.slice(0..self.to_s.index(' ('))
  end

  def update(params)
    @price = params[:price] if params[:price]
    @stock = params[:stock] if params[:stock]
  end

  def self.from_file(file_path)
    raise NotImplementedError
  end
end
