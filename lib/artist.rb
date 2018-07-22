class Artist
  attr_accessor :name
  
  @@total_songs = 0
  
  def initialize(name)
    @name = name
    @songs = []
    
  end
  
  def songs
    @songs
  end
  
  def add_song(song)
    @@total_songs += 1
    self.songs << song
    song.artist = self
  end
  
  def add_song_by_name(name)
    @@total_songs += 1
    song = Song.new(name)
    song.artist = self
    self.songs << song
  end
  
  def self.song_count
    @@total_songs
  end
  
end