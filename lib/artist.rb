class Artist
  attr_accessor :name,:songs
  @@song_count = 0

  def initialize(name)
      self.name = name
      @songs = []
  end

  def add_song(song)
    song.artist = self
    @@song_count += 1
    @songs << song
  end

  def add_song_by_name(songName)
    song = Song.new(songName)
    song.artist = self
    @@song_count += 1
    @songs << song
  end

  def self.song_count
    @@song_count
  end
end
