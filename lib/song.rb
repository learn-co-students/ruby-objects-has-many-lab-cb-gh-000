class Song 
  attr_accessor :name
  attr_accessor :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    return @@all
  end
  
  def artist_name
    if @artist != nil
      return @artist.name
    else 
      return nil
    end
  end
end