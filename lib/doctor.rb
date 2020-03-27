class Doctor 

	attr_reader :name

	@@all = []

	def initialize(name)
		@name = name 
		@@all << self 
	end

	def self.all 
		@@all 
	end

	def new_appointment(patient, date)
		Appointment.new(date,patient, self)
	end

	def appointments 
		Appointment.all.select{|a| a.doctor == self}
	end


	def patients
		a = self.appointments 
		p = []
		a.each do |ap|
			p << ap.patient 
		end
		p 
	end
	def genres 
		g = []
		s = self.songs
		s.each do |so|
			g << so.genre 
		end
		g
	end




end