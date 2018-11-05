class Genre
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    Song.new(name, artist, self)
  end
  
  def songs
    Song.all.select {|artist| artist == self}
  end
  
  def genres
    Genre.all.select {|artist| artist == self}
  end
end