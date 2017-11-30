require 'song'

class Artist
  @@song_count = 0
  attr_accessor :name, :songs
  def initialize(name, songs = [])
    self.name = name
    self.songs = songs
  end
  def add_song(song)
    song.artist = self
    @@song_count += 1
    self.songs << song
  end
  def add_song_by_name(song)
    song = Song.new(song)
    self.add_song(song)
  end
  def self.song_count
    @@song_count
  end
end
