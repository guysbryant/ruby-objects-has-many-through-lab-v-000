class Artist
  attr_reader :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  
  def songs
    Song.all.select {|artist| artist == self}
  end
  
  def genres
    Genre.all.select {|artist| artist == self}
  end
end