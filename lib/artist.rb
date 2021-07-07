

class Artist

  @@song_count = 0

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  # Artist #name #add_song takes in an argument of a song and adds that song to the artist's collection and tells the song that it belongs to that artist
  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  # Artist #name #add_song_by_name takes in an argument of a song name, creates a new song with it and associates the song and artist
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    self.add_song(song)
  end

  # Artist #name .song_count is a class method that returns the total number of songs associated to all existing artists
  def self.song_count
    @@song_count
  end

end
