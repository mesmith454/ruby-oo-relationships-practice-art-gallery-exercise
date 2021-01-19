class Gallery
  attr_reader :name, :city
  @@all = []
  @@all_artist_names = []
  def initialize
      @name = name
      @city = city
      @@all << self
  end
  def paintings
      Paintings.all.select {|painting| painting.Gallery == self}
  end
  def artists(name)
      paintings.select {|artist| self.artist == name}
      @@all_artist_names << name
  end
  def artist_names
      @@all_artist_names
  end
  def most_expensive_painting
      self.Paintings.find(price.max)
  end
end