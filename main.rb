require_relative 'lib/product'
require_relative 'lib/movie'
require_relative 'lib/book'

movie_cosmopolis = Movie.new(price: 499, stock: 5)

puts "Фильм Космополис стоит #{movie_cosmopolis.price} руб."
