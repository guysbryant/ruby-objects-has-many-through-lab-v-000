class Genre
  attr_accessor :name, :songs, :artists
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
 
  def songs
    Song.all.select {|genre| genre == self}
  end
  
  def artists
    Artist.all.select {|genre| genre == self}
  end
end