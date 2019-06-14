class Song
  attr_accessor :artist, :name

  @@all = []
  def initialize(name)
     @name = name
     @@all << self
  end

  def self.all
     @@all.collect do |song|
       song.name
     end
  end

  def artist_all_songs
    self.artist.artist_songs
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end
end
