class Artist

  attr_accessor :name
  def initialize(name)
    self.name = name
    @songs = []
  end

  @@song_count = 0

  def songs
    return @songs
  end

  def add_song(song)
    @songs << song
    @@song_count += 1
    song.artist = self
  end

  def add_song_by_name(name)

    song = Song.new(name)

    @songs << song

    @@song_count += 1

    song.artist = self
  end


  def self.song_count
    return @@song_count
  end
end
