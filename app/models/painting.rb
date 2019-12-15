class Painting
  attr_accessor :artist, :gallery
  attr_reader :title, :price

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.total_price
    total = 0
    @@all.each {|painting| total += painting.price}
    total.to_i
  end

  def self.all
    @@all
  end

end
