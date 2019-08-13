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
    hash = Hash.new(0)
    artists = Painting.all.map{|painting| painting.artist}
    puts artists
    artist_hash = artists.each do |artist|
      hash[artists] += 1
    puts artist_hash
    end 
    highest_paintings = artist_hash.sort_by{|artist, num| num}
    puts highest_paintings
    highest_paintings.last 
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end






end
