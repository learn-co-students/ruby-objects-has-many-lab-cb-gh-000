class Artist
  attr_accessor :name
@@scount = 0
  def initialize(name)
    @name = name
    @songs =[]
  end

  def add_song(song)
    @@scount+=1
    @songs << song
    song.artist =self
  end

  def songs
    @songs
  end
  def add_song_by_name(name)
    song = Song.new(name)
    @@scount+=1
    @songs << song
    song.artist = self
  end

  def self.song_count
    @@scount
  end

end
