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
  
  def self.new_by_filename(filename)
    song_details = filename.chomp(".mp3").split(" - ")
    song = Song.new(song_details[1])
    artist = Artist.new(song_details[0])
    artist.add_song(song)
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end
  
end