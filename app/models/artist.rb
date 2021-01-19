
class Artist 
  attr_reader :name, :yrs_exp, :paintings, :galleries
  @@all = []
  def initialize
      @name = name
      @yrs_exp = yrs_exp
      @paintings = []
      @galleries = []
      @@all << self
  end
  def self.all
      puts @@all
  end
  def paintings 
      puts @paintings
  end
  def galleries 
      @galleries << @paintings.map(Gallery)
      puts @galleries
  end
  def cities
      @cities << @galleries.map(City)
      puts @cities
  end
  def self.total_experience
      @yrs_exp
  end
  def self.most_prolific
      @@all.paintings.max
  end
  def create_painting (title, price, gallery, self)
      Painting.new
      @painting << self
  end
end