class Song
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    return @@all
  end

  def artist_name
    begin
      return self.artist.name
    rescue
      nil
    end
  end


end
