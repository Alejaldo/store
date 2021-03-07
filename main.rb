require_relative 'lib/product'
require_relative 'lib/movie'
require_relative 'lib/book'
require_relative 'lib/disc'
require_relative 'lib/cart'
require_relative 'lib/product_collection'

collection = ProductCollection.from_dir("#{__dir__}/data").sort!(by: :price, order: :asc).to_a

user_input = nil
cart = Cart.new

until user_input == 0
  puts 'Что хотите купить:'
  collection.each.with_index(1) { |product, index| puts "#{index}. #{product}" }
  puts "0. Выход\n\n"

  user_input = STDIN.gets.to_i
  break if user_input == 0

  while !(0..collection.size).include?(user_input)
    puts "Введенное значение некорректно! Введите цирфы от 0 до #{collection.size}"
    user_input = STDIN.gets.to_i
  end  

  selected_product = collection[user_input - 1]

  if selected_product.stock == 0
    puts "Купите что-нибудь другое, этого уже у нас нет!"
  else 
    selected_product.stock -= 1
    cart.cost_count(selected_product.price)
    cart.content_count(selected_product)
  end

  puts "\nВы выбрали: #{selected_product}\n\n"
  puts "Всего товаров на сумму: #{cart.cost}\n\n"
end

puts "Вы купили:\n\n"
puts cart.content
puts "\nС Вас - #{cart.cost} руб. в т.ч. НДС. Спасибо за покупки!"
