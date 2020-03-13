require 'pry'
class Artist 
  
  attr_accessor :name, :songs 
  @@all = []
  @@songs = []
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
   def add_song(song)
     song.artist = self 
    #  @@songs << song
 #    binding.pry 
   end 
    
   def songs 
    Song.all.select {|song| song.artist == self}
   end
   
   def self.find_or_create_by_name(string)
     
      Artist.all.each do |artist|
       
       if artist.name == string
         return artist 
         binding.pry
       end
   end
    self.new(string)
  end
  
  def print_songs
    self.songs.each do |song|
      puts song.name 
    end
  end
     

    
  
end