class Artist 
  
  attr_accessor :name, :songs 
  
  @@count = 0 
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def add_song(obj)
    obj.artist = self 
    self.songs << obj 
    @@count += 1 
  end 
  
  def add_song_by_name(name)
    new = Song.new(name)
    new.artist = self 
    self.songs << new 
    @@count += 1 
  end 
  
  def self.song_count 
    @@count 
  end 
  
end 
