class Artist 

  attr_accessor :name, :songs

  @@song_count = 0
  
  def initialize name
    @name = name
    @songs = []
  end

    def add_song(song) # NOT WORKING
      song.artist = self
      @songs << song
      @@song_count += 1
    end

    def add_song_by_name(name)
      song = Song.new(name)
      @songs << song
      add_song(song)
    end

    def songs
      @songs
    end
    
    def self.song_count # NOT WORKING
      @@song_count
    end
  
end