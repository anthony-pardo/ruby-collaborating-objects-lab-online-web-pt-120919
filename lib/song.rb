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
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
  
end