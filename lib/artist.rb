require 'pry'
class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    save
  end

    def add_song(song)
      # binding.pry
      song.artist = self
    end

    def songs
      Song.all.select {|song| song.artist == self }
    end

    def save
      @@all << self
    end

    def self.all
      @@all
    end

    def self.find_or_create_by_name(artist_name)
        artist = self.all.find {|artist| artist.name == artist_name}
        if artist
          artist
        else
          new_artist = self.new(artist_name)
        end
    end

    def print_songs
      songs.each { |song| puts song.name}
    end

end
