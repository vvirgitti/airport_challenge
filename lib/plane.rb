require_relative 'Weather'

class Plane

	include Weather

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
