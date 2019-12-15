class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists
    paintings.map {|painting| painting.artist}.uniq.compact
  end

  def artists_names
    artists.map {|artist| artist.name}
  end

  def most_expensive_painting
    priciest = 0
    paintings.each do |painting|
      if painting.price > priciest
        priciest = painting.price
      end
    end
    paintings.find {|painting| painting.price == priciest}
  end

  def self.all
    @@all
  end

end
