require 'pry'
class Artist

  attr_accessor :name, :songs

  @@song_count = []

  def initialize(name)
    @name = name
  end

  def add_song(song)
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
    song.artist = self
  end

  def self.song_count
    @@song_count
  end

end
