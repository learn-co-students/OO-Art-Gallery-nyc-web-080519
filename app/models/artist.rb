class Artist

  attr_reader :name, :years_experience

  @@all = [] 

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self 
  end

  def self.all
    @@all 
  end

  def paintings #all paintings by artist
    Painting.all.select{|painting| painting.artist == self}
  end

  def galleries #all the galleries that an artist has paintings in
    paintings.map{|painting| painting.gallery}
  end

  def cities 
    galleries.map{|gallery| gallery.city}.uniq
  end

  #Returns an `integer` that is the total years of experience of all artists
  def self.total_experience 
    #sum the array of years of experience
    years_of_experiece = Artist.all.collect { |artist| artist.years_experience}
    total = years_of_experiece.sum
  end

  #instance of artist w/ highest amount of paintings per year of exp
  def self.most_prolific 
    self.all.max_by do |artist|
      artist.paintings.length / artist.years_experience
    end 
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end






end
