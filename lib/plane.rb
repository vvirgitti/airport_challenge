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
		raise 'Stormy weather - Plane cannot land' if stormy!
		@flying = false
	end


	def takeoff!
		# raise 'Stormy weather - Plane cannot take off' if stormy!
		@flying = true
		self
	end







end
