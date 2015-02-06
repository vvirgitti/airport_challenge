class Plane

	def initialize
		takeoff!
	end


	def flying?
		@flying
	end

	def landed!
		@flying = false
	end


	def takeoff!
		@flying = true
		self
	end







end
