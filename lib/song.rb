class Song

  @@all = []

  def initialize(name)

    @name = name
    @@all << self
    @artist = nil
  end

  attr_accessor :name, :artist

  def self.all
    @@all
  end

  def artist_name
    if @artist == nil
      nil
    else
      @artist.name
    end
  end


end #Song class
