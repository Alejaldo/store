require_relative 'lib/product'
require_relative 'lib/movie'
require_relative 'lib/book'


products = []

products << Movie.new(
  title: 'Неоновый демон', year: '2016', director: 'Николас Виндинг Рефн', price: 5990, stock: 67
)

products << Movie.new(
  title: 'Драйв', year: '2011', director: 'Николас Виндинг Рефн', price: 6990, stock: 54
)

products << Book.new(
  title: 'Бойня номер пять, или Крестовый поход детей', genre: 'сатира', author: 'Курт Воннегут', price: 2999, stock: 654
)

puts "Из нашего ассортимента можем предложить Вам:\n\n"
products.each { |product| puts product }
