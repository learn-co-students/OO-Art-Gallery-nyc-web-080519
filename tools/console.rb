require_relative '../config/environment.rb'

a1 = Artist.new("Carl", 12)
a2 = Artist.new("Marvin", 60)

g1 = Gallery.new("The Met", "New York")
g2 = Gallery.new("Big Museum", "Austin")

p1 = Painting.new("The Car", 5000, a1, g1)
p2 = Painting.new("Grandma", 60000, a2, g2)
p3 = Painting.new("OH NO!", 13, a1, g2)
p4 = Painting.new("Dad", 60000, a2, g1)
p5 = Painting.new("Mom", 75000, a2, g2)


binding.pry

puts "Bob Ross rules."
