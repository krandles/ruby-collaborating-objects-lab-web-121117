require 'pry'
require_relative 'song.rb'
require_relative 'artist.rb'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    d = Dir.entries(path)
    2.times do
      d.shift
    end
    d
  end

  def import
    files.each do |file|
      # binding.pry
      Song.new_by_filename(file)
    end
  end

end