class Artist
	@@all = []

	attr_reader :name

	def initialize(name)
		@name = name 
		@@all << self
	end

	def new_song(name, genre)
		s = Song.new(name, self,genre)
		# s.artist = self 
	end

	def songs
		Song.all.select{|s| s.artist == self}
	end

	def genres 
		g = []
		s = self.songs
		s.each do |so|
			g << so.genre 
		end
		g
	end

	def self.all 
		@@all 
	end



end