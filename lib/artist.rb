class Artist 
  
  attr_accessor :name, :songs
  
  @@all=[]
  
  def initialize(name)
    @name=name
    @songs=[]
    @@all << self 
    
  end 
  
  
  def self.all  
    @@all 
  end 
  
  # def save
  #   @@all << self 
  # end 
  
  
  def add_song(song)
    song.artist=self 
    @songs << song
  end 
  
  def self.find_or_create_by_name(name)
    artist = self.all.find {|artist| artist.name==name}
    
    if artist 
      artist 
    else 
      new_artist=self.new(name)
  
      new_artist
    end 
    
  end 
  
  def print_songs
    @songs.each do |song|
      puts "#{song.name}"
    end 
  end 
  
  
  
  def songs 
    
    Song.all.select do |song|
      song.artist==self
    end 
  end 
    
    
   
    
end 