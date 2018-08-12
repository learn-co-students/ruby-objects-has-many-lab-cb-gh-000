class Artist 
  attr_accessor :name 
  attr_accessor :songs
  @@songs_count = 0
  
  def initialize(name)
    @name = name
    @songs = []
    # @@songs_count = 0
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    @@songs_count += 1
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@songs_count += 1
  end
  
  def self.song_count
    return @@songs_count
  end
end