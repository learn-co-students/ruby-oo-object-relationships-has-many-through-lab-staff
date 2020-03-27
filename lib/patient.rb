class Patient 
	@@all = []
	attr_reader :name 

	def initialize(name)
		@name = name 
		@@all << self 
	end

	def new_appointment(doctor,date)
		Appointment.new(date,self,doctor)
	end

	def appointments 
		Appointment.all.select{|a| a.patient == self}
	end

	def doctors 
		a = self.appointments 
		d = []
		a.each do |ap|
			d << ap.doctor 
		end
		d 
	end


	def self.all 
		@@all 
	end




end