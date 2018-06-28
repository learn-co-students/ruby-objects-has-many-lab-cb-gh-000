class Artist
  attr_accessor :name
  @@total = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    return @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song)
    song = Song.new(song)
    @songs << song
    song.artist = self
  end

  def self.song_count
    return Song.all.size
  end

end
