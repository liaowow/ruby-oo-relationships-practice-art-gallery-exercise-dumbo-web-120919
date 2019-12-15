class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  # Given the arguments of title, price and gallery, creates a new painting belonging to that artist
  def create_painting(title, price, gallery) #(title, price, artist, gallery)
    Painting.new(title, price, self, gallery)
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    paintings.map {|painting| painting.gallery}
  end

  def cities
    galleries.map {|gallery| gallery.city}
  end

  def self.total_experience
    total = 0
    @@all.each {|artist| total += artist.years_experience}
    total.to_i
  end

  # Returns an instance of the artist with the highest amount of paintings per year of experience.
  def self.most_prolific
    # get amount of paintings for each artist
    # num_of_paintings_per_artist = {}
    # Painting.all.each do |painting_object|
    #   if !num_of_paintings_per_artist[painting_object.artist]
    #     num_of_paintings_per_artist[painting_object.artist] = 1
    #   else
    #     num_of_paintings_per_artist[painting_object.artist] += 1
    #   end
    # end

    # # amount of paintings / artist years_experience
    # most_prolific_amount = 0
    # most_prolific_artist = []
    # num_of_paintings_per_artist.each do |artist, num|
    #   artist_amount_per_experience = num / artist.years_experience
    #   if artist_amount_per_experience > most_prolific_amount
    #     most_prolific_amount = artist_amount_per_experience
    #     most_prolific_artist = artist
    #   end
    # end
    # most_prolific_artist

    ### solution code ###
      self.all.max_by do |artist|
        artist.paintings.length / artist.years_experience
      end
  end

  def self.all
    @@all
  end
end
