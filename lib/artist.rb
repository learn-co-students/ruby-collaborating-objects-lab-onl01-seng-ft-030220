require "pry"
class Artist 
   
   attr_accessor :name, :songs
   @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
    self.songs =[]
  end 
  def self.all 
    @@all
  end 
  def add_song(song)
    @songs << song 
    song.artist = self 
  end 
  def songs 
    @songs 
  end 
  
    def self.find_or_create_by_name(name)
    test = self.all.find{|artist| artist.name = name}
  
   if  test 
     return test
   else 
     self.new(name)
   end
end
def print_songs 
  self.songs.each {|song| puts song.name} 
end
 
end 