class Song 
  
@@all = []

attr_accessor :name, :artist 

def initialize(name)
  @name = name
  @artist = artist
  @@all << self
end

def self.all
  @@all
end

def self.new_by_filename(filename)
  artist_name = filename.split(" - ")[0]
        song_name = filename.split(" - ")[1]
        song = Song.new(song_name)
        song.artist_name = artist_name
        song
end

def artist_name=(name)
   self.artist = Artist.find_or_create_by_name(name)
 end  
 end