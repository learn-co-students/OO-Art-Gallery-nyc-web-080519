require_relative '../config/environment.rb'


a1 = Artist.new("Amy", 1)
a2 = Artist.new("Debby", 10)
a3 = Artist.new("Caryn", 5)

g1 = Gallery.new("gallery1", "NYC")
g2 = Gallery.new("gallery2", "NYC")
g3 = Gallery.new("gallery3", "Boston")
g4 = Gallery.new("gallery4", "DC")

p1 = Painting.new("painting1", 2000, a1, g1)
p2 = Painting.new("painting2", 5000, a2, g1)
p3 = Painting.new("painting3", 200, a1, g2)
p4 = Painting.new("painting4", 1500, a3, g3)


binding.pry

puts "Bob Ross rules."
