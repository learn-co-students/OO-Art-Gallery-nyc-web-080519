class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    paintings.map do |painting|
      painting.gallery
    end
  end

  def cities
    galleries.map do |gallery|
      gallery.city
    end
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end


  def self.all
    @@all
  end

  def self.total_experience
    all.map do |artist|
      artist.years_experience
    end.sum
  end

  def Artist.most_prolific
    all.max_by do |artist|
      artist.paintings.count
    end
  end

end
