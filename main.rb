require_relative 'lib/product'
require_relative 'lib/movie'
require_relative 'lib/book'
require_relative 'lib/product_collection'

collection = ProductCollection.from_dir("#{__dir__}/data")

collection.sort!(by: :price, order: :asc)

collection.to_a.each do |product|
  puts product
end
