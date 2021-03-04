require_relative 'lib/product'
require_relative 'lib/movie'
require_relative 'lib/book'

movie = Movie.new(title: 'Только Бог простит', director: 'Николас Виндинг Рефн', price: 1899)
movie.year = 2013
movie.update(stock: 44)

book = Book.new(title: 'Властелин колец', stock: 499)
book.author = 'Толкач'
book.update(author: 'Джон Р. Р. Толкиен', price: 3899)

puts movie
puts book
