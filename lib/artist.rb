class Artist 
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song(song)
    song.artist = self 
    @songs << song
  end
  
  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else 
      new_artist = Artist.new(name)
      return new_artist 
    end
  end
end