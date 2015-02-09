require_relative 'weather'

class Airport


DEFAULT_CAPACITY = 10

include Weather


def initialize(options = {})
	@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
end


def planes
	@planes ||= []
end


def plane_count
	planes.count
end


def park(plane)
	raise 'Stormy weather - Plane cannot land' if stormy!
	raise 'The airport is full - Plane not authorized to land' if full?
	planes << plane
end 


def release(plane)
	raise 'Stormy weather - Plane cannot take off' if stormy!
	planes.delete(plane)
end


def full?
	planes.count >= @capacity
end


end