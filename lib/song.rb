class Song

  @@all=Array.new

  def initialize (name)
    @name=name
    @@all<<self
  end

  def self.all
    @@all
  end

  attr_accessor :name, :artist

  def artist_name

    if artist!=nil
      artist.name
    else
      nil
    end

  end

end
