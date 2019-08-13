class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all 
  end

  def paintings
    Painting.all.select{|painting| painting.gallery == self}
  end 

  def artists 
    paintings.map{|painting| painting.artist}
  end 

  #all artists that have a painting in a gallery
  def artist_names 
    Painting.all.select do |painting|
      painting.artist.name
    end
  end 

  def most_expensive_painting
    #run through all the paintings and sort by painting price
    paintings.sort_by{|painting| painting.price}.last
  end 

end
