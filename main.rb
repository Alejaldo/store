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
  collection.each.with_index(1) { |product, index| puts "#{index}. #{product}" if product.stock > 0}
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
    cart.add(selected_product)
  end

  puts "\nВы выбрали: #{selected_product.show_without_stock}\n\n"
  puts "Всего товаров на сумму: #{cart.cost}\n\n"
end

cheque_list = cart.content.map { |product| [product.show_without_stock, product.price.to_i] }

cheque_hash = Hash.new(0)
cheque_list.each { |product_params| cheque_hash[product_params[0]] += product_params[1] }

puts "Вы купили:\n\n"
cheque_hash.each { |key, value| puts "Набор #{key} -- за #{value} руб. в т.ч. НДС" }
puts "\nС Вас - #{cart.cost} руб. в т.ч. НДС. Спасибо за покупки!"
