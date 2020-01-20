class Song 
  attr_accessor :name, :artist 
  @@all = [] 
  def initialize(name, artist = nil)
    @name = name
    @artist = artist 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def artist_name=(name)
    self.artist.find_or_create_by_name(name)
    self.artist
  end
  
end