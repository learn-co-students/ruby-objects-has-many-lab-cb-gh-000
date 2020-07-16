class Artist

  def initialize (name)
    @name=name
  end

  attr_accessor :name

  def songs
    arr=Song.all
    arr1=Array.new
    arr.each do |s|
      if s.artist==self
        arr1<<s
      end
    end
    return arr1
  end

  def add_song(song)
    song.artist=self
  end

  def add_song_by_name(name)
    s=Song.new(name)
    s.artist=self
  end

  def self.song_count
    return Song.all.size
  end

end
