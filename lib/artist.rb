
class Artist
	attr_accessor :name, :songs

	@@song_count = 0
	@@all = []
	def initialize(name)
		@name = name
		@songs = []
		self.class.all << self
	end

	def self.all
		@@all
	end

	def add_song(song)
		@songs << song
		song.artist = self
		@@song_count += 1
	end

	def add_song_by_name(name)
		song = Song.new(name)
		@songs << song
		@@song_count += 1
		song.artist = self
	end

	def self.song_count
		@@song_count
	end
end
