class Artist

  attr_accessor :songs, :name
  @@song_count = 0

  def initialize(name)
    @songs = []
    @name = name
  end

  def add_song(song)
     @songs << song
     song.artist = self
     @@song_count += 1

   end

   def self.song_count
     return @@song_count
   end

   def add_song_by_name(song)
     new_song = Song.new(song)
     self.add_song(new_song)
   end
end
