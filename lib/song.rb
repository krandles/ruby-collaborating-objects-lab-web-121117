require 'pry'
require_relative 'artist.rb'

class Song

  @@all = []

  attr_reader :artist_name
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.new_by_filename(filename)
    s = filename.split(" - ")
    new_song = Song.new(s[1])
    new_song.artist_name = (s[0])

    new_song
  end

  def artist_name=(name)
    # binding.pry
    
    a = Artist.find_or_create_by_name(name)
    self.artist = a
    a.add_song(self)
  end

end