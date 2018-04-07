class Artist
  @@song_count = 0
  def self.song_count
    @@song_count
  end
  def self.song_count=(number)
    @@song_count = number
  end

  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    self.name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    self.class.song_count += 1
  end

  def add_song_by_name(song_name)
    self.add_song(Song.new(song_name))
  end
end
