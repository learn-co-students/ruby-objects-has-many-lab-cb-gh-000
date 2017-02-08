class Artist

  @@song_count = 0

  def self.song_count
    @@song_count
  end

  attr_accessor :name, :songs

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def add_song(song)
    song.artist = self
    songs << song
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end

end
