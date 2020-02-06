class Song
  
  attr_accessor :name, :artist
  def initialize(name)
    self.name = name
    self.artist = ()
  end


  def artist_name
    if @artist != nil
      return @artist.name
    else
      return nil
    end
  end
end
