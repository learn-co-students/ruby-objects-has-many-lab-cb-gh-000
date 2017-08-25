class Artist
  attr_accessor :name, :songs
  @@song_count = 0


  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(a_song)
    self.songs << a_song
    a_song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    self.songs << new_song
    new_song.artist = self
    @@song_count += 1
  end

  def name
    @name
  end

  def self.song_count
    @@song_count
  end

end
