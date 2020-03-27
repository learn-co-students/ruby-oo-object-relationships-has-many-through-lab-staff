class Genre 
	@@all = []

	attr_reader :name

	def initialize(name)
		@name = name 
		@@all << self 
	end

	def self.all 
		@@all 
	end

	def songs
		Song.all.select{|s| s.genre == self}
	end

	def artists
		a = []
		self.songs.each do |s|
			a << s.artist
		end
		a
	end


end