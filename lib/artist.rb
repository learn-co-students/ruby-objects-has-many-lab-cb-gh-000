class Artist
  attr_accessor :songs, :name

  @@song_count = 0
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  # this method adds a song the artist's songs instance variable
  # and adds the artist to the song's artist instance variable
  def add_song(song_instance)
    self.songs << song_instance
    song_instance.artist = self
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    self.add_song(new_song)
    new_song
  end

  # count the total number of songs
  def self.song_count
    @@song_count = 0
    self.all.each do |artist|
      @@song_count += artist.songs.length
    end
    @@song_count
  end

end
