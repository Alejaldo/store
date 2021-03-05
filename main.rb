require_relative 'lib/product'
require_relative 'lib/movie'
require_relative 'lib/book'

current_path = __dir__
movie = Movie.from_file(current_path + '/data/movies/01.txt')
book = Book.from_file(current_path + '/data/books/01.txt')

puts movie
puts book

begin
  Product.from_file(current_path + '/data/movies/01.txt')
rescue NotImplementedError
  puts 'Метод класса Product.from_file не реализован'
end
