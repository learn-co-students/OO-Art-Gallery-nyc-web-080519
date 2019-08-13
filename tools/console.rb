require_relative '../config/environment.rb'

a1 = Artist.new("Sally", 20)
a2 = Artist.new("Jason", 10)
a3 = Artist.new("Derek", 2)
a4 = Artist.new("Fred", 8)

g1 = Gallery.new("Moma", "NYC")
g2 = Gallery.new("Wallhouse", "Philly")
g3 = Gallery.new("STFU", "NYC")
g4 = Gallery.new("LOL", "SF")

p1 = Painting.new("Eternal", 10000, a1, g1)
p2 = Painting.new("Happy", 10000000, a1, g2)
p3 = Painting.new("Sad", 10, a3, g3)
p4 = Painting.new("Hopeful", 5000, a4, g2)
p5 = Painting.new("I will PASS", 8000, a4, g3)
p6 = Painting.new("PLEASE DONT FAIL ME", 9000, a4, g4)
p7 = Painting.new("PRETTY PLEASE", 20000, a4, g1)



#binding.pry
puts Artist.most_prolific
puts "Bob Ross rules."
