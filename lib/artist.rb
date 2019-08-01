class Artist
  attr_accessor :name,:songs


  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end

  def self.song_count
      Song.all.size
  end

  def author_name
    if self.author == nil
      return nil
    else
      return self.author.name
    end
  end
end
