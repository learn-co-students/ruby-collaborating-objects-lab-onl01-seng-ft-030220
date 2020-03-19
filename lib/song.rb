class Song 
  attr_accessor :name, :artist 
  @@all = []
  
  def initialize(name)
    @name = name 
    save 
  end
  
  def save
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")    #pars data(filename) to be readable and sets them equal to variables: artist, song
    new_song = self.new(song)      #creates a "new instance of a song"(new_song) from file that's passed
    new_song.artist_name = artist       #associates "new song instance"(new_song) with the artist from the filename
    new_song
  end 
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  
end