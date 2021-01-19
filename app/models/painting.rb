class Painting
  attr_reader :title, :price, :gallery, :artist
  @@all = []
  def initialize
      @title = title
      @price = price
      @gallery = gallery
      @artist = artist
      @@all << self
  end

  def self.all
      puts @@all
  end
end