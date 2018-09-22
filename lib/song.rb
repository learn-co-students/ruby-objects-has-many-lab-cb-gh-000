class Song
  @@all = []

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = Artist.new
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if @artist.name == ""
      return nil
    else
      @artist.name
    end
  end

end 
