class Artist
  @@total=0
  attr_accessor :name,:songs
  def initialize(name)
    @name=name
    @songs=[]
  end
  def songs
    @songs
  end
  def add_song(song)
    @@total+=1
    @songs<<song
    song.artist=self
  end
  def add_song_by_name(name)
    song=Song.new(name)
    self.songs<<song
    song.artist=self
    @@total+=1
  end
  def self.song_count
    @@total
  end
end
