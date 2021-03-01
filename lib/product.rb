class Product
  attr_reader :price, :stock
  
  def initialize(params)
    @price = params[:price]
    @stock = params[:stock]
  end
end
