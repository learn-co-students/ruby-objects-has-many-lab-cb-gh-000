

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def has_artist?
    !!self.artist
  end

  def artist_name
    if has_artist?
      self.artist.name
    else
      nil
    end
  end

end
