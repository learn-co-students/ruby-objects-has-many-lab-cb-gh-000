
class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @artist = nil
    @@all << self
  end

  def self.songs_count
    @@all.size
  end

  def artist_name
    @artist != nil ? @artist.name : nil
  end

end
