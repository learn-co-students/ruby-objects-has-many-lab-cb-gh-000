                      # Ruby: Has Many Objects #

class Song
  # Method initializes the instance variables needed for the class to function.
  attr_accessor :name, :artist
  def initialize(name)
    self.name = name
    self.artist = ()
  end


  # Method returns the 'name' attribute of the 'Author' class that the
  # particular 'Post' object is associated with. Returns nil if there is no
  # 'Author' class that is associated.
  def artist_name
    if @artist != nil
      return @artist.name
    else
      return nil
    end
  end
end
