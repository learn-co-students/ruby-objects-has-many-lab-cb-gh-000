                      # Ruby: Has Many Objects #

class Artist
  # Method initializes the instance variables needed for the class to function.
  attr_accessor :name
  def initialize(name)
    self.name = name
    @songs = []
  end


  # Initializing the class variable '@@song_count' to keep track of the number
  # of 'Song' objects created that are associated with this particular 'Artist' class.
  @@song_count = 0


  # Method returns the array of 'Song' objects within the '@songs' instance variable.
  def songs
    return @songs
  end


  # Method takes in the argument 'song' and adds the 'Song' object to the
  # instance variable '@songs' array, and associates the song with the current
  # 'Artist' class.
  def add_song(song)
    @songs << song
    @@song_count += 1
    song.artist = self
  end


  # Method takes in the argument 'name', creates a new 'Song' object with it,
  # and associates the song with the current 'Artist' class.
  def add_song_by_name(name)
    # Initializes a new 'Song' object with the 'name' argument.
    song = Song.new(name)
    # Pushes the new 'Song' object as an element into the instance variable
    # '@songs' array.
    @songs << song
    # Updates the class variable '@@song_count' to iterate by one, signifying
    # the new song being created and stored.
    @@song_count += 1
    # Assigns 'self', or the 'Artist' class, as the 'artist' attribute for the song.
    song.artist = self
  end


  # Method returns the class variable '@@song_count', which holds the current
  # number of 'Song' objects that have been created.
  def self.song_count
    return @@song_count
  end
end
