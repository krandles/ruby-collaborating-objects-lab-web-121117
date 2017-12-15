require_relative 'song.rb'

class Artist

  @@all = []

  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []  
  end

  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find {|artist|artist.name == name}
  end

  def self.find_or_create_by_name(name)
    if find_by_name(name)
      find_by_name(name)
    else
      a = Artist.new(name)
      a.save
      a
    end
  end

  def print_songs
    @songs.each { |song| puts song.name }
  end

  def new_by_filename(filename)

  end

end