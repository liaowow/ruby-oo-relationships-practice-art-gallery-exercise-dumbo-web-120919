require_relative '../config/environment.rb'

# Artist.new(name, years_experience)
a1 = Artist.new("Artist 1", 3)
a2 = Artist.new("Artist 2", 1.5)
a3 = Artist.new("Artist 3", 7)

# Gallery.new(name, city)
g1 = Gallery.new("Gal 1", "NYC")
g2 = Gallery.new("Gal 2", "LA")
g3 = Gallery.new("Gal 3", "Chicago")
g4 = Gallery.new("Gal 4", "Nashville")

# Painting.new(title, price, artist, gallery)
p1 = Painting.new("Painting 1", 150.50, a1, g2)
p2 = Painting.new("Painting 2", 3000, a3, g1)
p3 = Painting.new("Painting 3", 750, a2, g3)
p4 = Painting.new("Painting 4", 675, a2, g4)
p5 = Painting.new("Painting X", 8888, a1, g1)

binding.pry

puts "Bob Ross rules."
# painting >- gallery -< artist 
# gallery -< painting >- artist