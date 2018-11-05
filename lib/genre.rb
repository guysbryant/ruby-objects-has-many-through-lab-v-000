class Genre
  attr_reader :name
  
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
    Song.all.select {|genre| genre == self}
  end
  
  def artits
    Artist.all.select {|genre| genre == self}
  end
end