class Song
  attr_accessor :name, :songs, :title, :posts, :artist

  def initialize(song_name)
    @name = song_name
  end

  def artist
    @artist
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end
end
