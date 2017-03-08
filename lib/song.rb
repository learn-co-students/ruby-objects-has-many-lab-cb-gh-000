class Song
  attr_accessor :artist
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def artist_name
    if defined?(self.artist.name)
      self.artist.name
    else
      nil
    end
  end
end
