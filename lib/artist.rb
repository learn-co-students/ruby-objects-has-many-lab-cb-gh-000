
class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(songs_name)
    song  = Song.new(songs_name)
    song.artist = self
    @songs << song
  end


  def self.song_count
    Song.songs_count
  end

end
