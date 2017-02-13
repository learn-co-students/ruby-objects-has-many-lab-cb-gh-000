class Song

  attr_accessor :artist
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def artist_name
    begin
      self.artist.name
    rescue NoMethodError
      nil
    end
  end

end
