class Disc < Product
  attr_accessor :title, :author, :genre, :year

  def self.from_file(file_path)
    lines = File.readlines(file_path, encoding: 'UTF-8').map { |l| l.chomp }

    self.new(
      title: lines[0],
      author: lines[1],
      genre: lines[2],
      year: lines[3].to_i,
      price: lines[3].to_i,
      stock: lines[4].to_i
    )
  end

  def initialize(params)
    super

    @title = params[:title]
    @author = params[:author]
    @genre = params[:genre]
    @year = params[:year]
  end

  def to_s
    "Альбом #{@author} - '#{@title}', #{@genre}, #{@year}, #{super}"
  end

  def update(params)
    super

    @title = params[:title] if params[:title]
    @author = params[:author] if params[:author]
    @genre = params[:genre] if params[:genre]
    @year = params[:year] if params[:year]
  end
end
